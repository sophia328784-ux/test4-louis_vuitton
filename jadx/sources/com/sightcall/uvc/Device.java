package com.sightcall.uvc;

import android.hardware.usb.UsbDevice;
import defpackage.fc;
import defpackage.md;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class Device {
    private Camera camera;
    private UsbControlBlock ctrlBlock;
    private final DeviceManager deviceManager;
    private boolean isConnected = false;
    private final UsbDevice usbDevice;

    public Device(DeviceManager deviceManager, UsbDevice usbDevice) {
        if (!isUvc(usbDevice)) {
            md.n("Usb device is not UVC compatible");
            throw null;
        }
        this.deviceManager = deviceManager;
        this.usbDevice = usbDevice;
    }

    public static boolean corresponds(Device device, UsbDevice usbDevice) {
        return device != null && device.getDevice().equals(usbDevice);
    }

    public static boolean isUvc(UsbDevice usbDevice) {
        return usbDevice != null && usbDevice.getDeviceClass() == 239 && usbDevice.getDeviceSubclass() == 2;
    }

    public void connect() {
        if (this.isConnected) {
            return;
        }
        this.ctrlBlock = new UsbControlBlock(this.usbDevice, this.deviceManager.getUsbManager());
        Camera camera = new Camera();
        this.camera = camera;
        camera.open(this.ctrlBlock);
        this.camera.updateCameraParams();
        this.isConnected = true;
    }

    public void disconnect() {
        if (this.isConnected) {
            Camera camera = this.camera;
            if (camera != null) {
                camera.destroy();
                this.camera = null;
            }
            UsbControlBlock usbControlBlock = this.ctrlBlock;
            if (usbControlBlock != null) {
                usbControlBlock.close();
                this.ctrlBlock = null;
            }
            this.isConnected = false;
        }
    }

    public Camera getCamera() {
        return this.camera;
    }

    public UsbDevice getDevice() {
        return this.usbDevice;
    }

    public boolean hasPermission() {
        return this.deviceManager.hasPermission(this.usbDevice);
    }

    public boolean isConnected() {
        return this.isConnected;
    }

    public void requestPermission() {
        this.deviceManager.requestPermission(this.usbDevice);
    }

    public String toString() {
        Locale locale = Locale.US;
        int deviceId = this.usbDevice.getDeviceId();
        String deviceName = this.usbDevice.getDeviceName();
        int deviceClass = this.usbDevice.getDeviceClass();
        int deviceSubclass = this.usbDevice.getDeviceSubclass();
        boolean zHasPermission = hasPermission();
        StringBuilder sb = new StringBuilder("id=");
        sb.append(deviceId);
        sb.append(", name=");
        sb.append(deviceName);
        sb.append(", class=");
        fc.x(deviceClass, deviceSubclass, ", subclass=", ", isGranted=", sb);
        sb.append(zHasPermission);
        return sb.toString();
    }
}
