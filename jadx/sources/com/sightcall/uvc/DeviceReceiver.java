package com.sightcall.uvc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import com.batch.android.BatchPermissionActivity;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.utils.Utils;

/* JADX INFO: loaded from: classes3.dex */
public class DeviceReceiver extends BroadcastReceiver {
    static final String ACTION_USB_PERMISSION = "com.sightcall.uvc.USB_PERMISSION";
    private static final IntentFilter INTENT_FILTER = new IntentFilter() { // from class: com.sightcall.uvc.DeviceReceiver.1
        {
            addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            addAction(DeviceReceiver.ACTION_USB_PERMISSION);
        }
    };
    private final DeviceReceiverCallback callback;

    public interface DeviceReceiverCallback {
        void onDeviceAttached(UsbDevice usbDevice);

        void onDeviceDetached(UsbDevice usbDevice);

        void onPermissionDenied(UsbDevice usbDevice);

        void onPermissionGranted(UsbDevice usbDevice);
    }

    public DeviceReceiver(DeviceReceiverCallback deviceReceiverCallback) {
        this.callback = deviceReceiverCallback;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
        if (usbDevice == null) {
            return;
        }
        String strValueOf = String.valueOf(intent.getAction());
        if (Device.isUvc(usbDevice)) {
            switch (strValueOf) {
                case "android.hardware.usb.action.USB_DEVICE_ATTACHED":
                    this.callback.onDeviceAttached(usbDevice);
                    break;
                case "android.hardware.usb.action.USB_DEVICE_DETACHED":
                    this.callback.onDeviceDetached(usbDevice);
                    break;
                case "com.sightcall.uvc.USB_PERMISSION":
                    boolean booleanExtra = intent.getBooleanExtra(BatchPermissionActivity.EXTRA_PERMISSION, false);
                    DeviceReceiverCallback deviceReceiverCallback = this.callback;
                    if (!booleanExtra) {
                        deviceReceiverCallback.onPermissionDenied(usbDevice);
                        break;
                    } else {
                        deviceReceiverCallback.onPermissionGranted(usbDevice);
                        break;
                    }
                    break;
            }
        }
    }

    public void register(Context context) {
        Utils.INSTANCE.registerReceiverCompat(context, this, INTENT_FILTER);
    }

    public void unregister(Context context) {
        context.unregisterReceiver(this);
    }
}
