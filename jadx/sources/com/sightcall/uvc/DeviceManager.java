package com.sightcall.uvc;

import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Handler;
import android.os.Looper;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.logs.Logger;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceManager implements DeviceReceiver.DeviceReceiverCallback {
    private static volatile DeviceManager singleton;
    private final Context context;
    private Device device;
    private Handler handler;
    private final boolean isInstantApp;
    private UsbManager usbManager;
    private final List<DeviceListener> listeners = new ArrayList();
    private boolean isStarted = false;
    private final DeviceReceiver receiver = new DeviceReceiver(this);

    private DeviceManager(Context context) {
        this.context = context;
        boolean zIsInstantApp = InstantAppWrapper.isInstantApp(context);
        this.isInstantApp = zIsInstantApp;
        if (zIsInstantApp) {
            return;
        }
        this.usbManager = (UsbManager) context.getSystemService("usb");
        this.handler = new Handler(Looper.myLooper());
    }

    private void dumpUsbDevices() {
        Iterator<UsbDevice> it = this.usbManager.getDeviceList().values().iterator();
        while (it.hasNext()) {
            Logger.INSTANCE.d(usbDeviceToString(it.next()), null);
        }
    }

    private void findAlreadyAttachedDevice() {
        if (hasDevice()) {
            return;
        }
        for (final UsbDevice usbDevice : this.usbManager.getDeviceList().values()) {
            if (Device.isUvc(usbDevice)) {
                this.handler.post(new Runnable() { // from class: com.sightcall.uvc.DeviceManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DeviceManager.this.onDeviceAttached(usbDevice);
                    }
                });
                return;
            }
        }
    }

    public static DeviceManager instance(Context context) {
        if (singleton == null) {
            synchronized (DeviceManager.class) {
                try {
                    if (singleton == null) {
                        singleton = new DeviceManager(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return singleton;
    }

    public static String usbDeviceToString(UsbDevice usbDevice) {
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        Locale locale = Locale.US;
        int deviceId = usbDevice.getDeviceId();
        String deviceName = usbDevice.getDeviceName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        int deviceClass = usbDevice.getDeviceClass();
        int deviceSubclass = usbDevice.getDeviceSubclass();
        int deviceProtocol = usbDevice.getDeviceProtocol();
        StringBuilder sb = new StringBuilder("UsbDevice{id=");
        sb.append(deviceId);
        sb.append(", name=");
        sb.append(deviceName);
        sb.append(", vendor=");
        fc.x(vendorId, productId, ", product=", ", class=", sb);
        fc.x(deviceClass, deviceSubclass, ", subclass=", ", protocol=", sb);
        sb.append(deviceProtocol);
        sb.append(", manufacturer=");
        sb.append(manufacturerName);
        sb.append(", productName=");
        return n00.r(productName, "}", sb);
    }

    public void addDeviceListener(DeviceListener deviceListener) {
        this.listeners.add(deviceListener);
    }

    public Device getDevice() {
        return this.device;
    }

    public UsbManager getUsbManager() {
        return this.usbManager;
    }

    public boolean hasDevice() {
        return this.device != null;
    }

    public boolean hasPermission(UsbDevice usbDevice) {
        return this.usbManager.hasPermission(usbDevice);
    }

    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // com.sightcall.uvc.DeviceReceiver.DeviceReceiverCallback
    public void onDeviceAttached(UsbDevice usbDevice) {
        if (hasDevice()) {
            return;
        }
        this.device = new Device(this, usbDevice);
        Iterator it = new ArrayList(this.listeners).iterator();
        while (it.hasNext()) {
            ((DeviceListener) it.next()).onDeviceAttached(this.device);
        }
        if (this.device.hasPermission()) {
            onPermissionGranted(usbDevice);
        }
    }

    @Override // com.sightcall.uvc.DeviceReceiver.DeviceReceiverCallback
    public void onDeviceDetached(UsbDevice usbDevice) {
        if (Device.corresponds(this.device, usbDevice)) {
            Device device = this.device;
            this.device = null;
            Iterator it = new ArrayList(this.listeners).iterator();
            while (it.hasNext()) {
                ((DeviceListener) it.next()).onDeviceDetached(device);
            }
            if (device.isConnected()) {
                device.disconnect();
            }
        }
    }

    @Override // com.sightcall.uvc.DeviceReceiver.DeviceReceiverCallback
    public void onPermissionDenied(UsbDevice usbDevice) {
        if (Device.corresponds(this.device, usbDevice)) {
            Iterator it = new ArrayList(this.listeners).iterator();
            while (it.hasNext()) {
                ((DeviceListener) it.next()).onDevicePermissionDenied(this.device);
            }
        }
    }

    @Override // com.sightcall.uvc.DeviceReceiver.DeviceReceiverCallback
    public void onPermissionGranted(UsbDevice usbDevice) {
        if (Device.corresponds(this.device, usbDevice)) {
            try {
                this.device.connect();
                Iterator it = new ArrayList(this.listeners).iterator();
                while (it.hasNext()) {
                    ((DeviceListener) it.next()).onDevicePermissionGranted(this.device);
                }
            } catch (Exception e2) {
                Logger.INSTANCE.e("Unable to open USB camera", e2);
                onDeviceDetached(usbDevice);
            }
        }
    }

    public void removeDeviceListener(DeviceListener deviceListener) {
        this.listeners.remove(deviceListener);
    }

    public void requestPermission(UsbDevice usbDevice) {
        this.usbManager.requestPermission(usbDevice, PendingIntents.getCompatPendingIntentBroadcast(this.context, 0, new Intent("com.sightcall.uvc.USB_PERMISSION"), 0));
    }

    public void start() {
        if (this.isInstantApp || this.isStarted) {
            return;
        }
        this.isStarted = true;
        this.receiver.register(this.context);
        dumpUsbDevices();
        findAlreadyAttachedDevice();
    }

    public void stop() {
        if (!this.isInstantApp && this.isStarted) {
            this.receiver.unregister(this.context);
            Device device = this.device;
            if (device != null) {
                onDeviceDetached(device.getDevice());
            }
            this.isStarted = false;
        }
    }
}
