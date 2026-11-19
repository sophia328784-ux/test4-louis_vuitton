package com.lightup.sdk.device.features.process;

import com.lightup.sdk.device.features.process.ackable.AckableFeature;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class DualDeviceFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionListener f35984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f35985b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DeviceError f35986c;

    public DualDeviceFeature(AckableFeature ackableFeature, AckableFeature ackableFeature2, ActionListener actionListener) {
        this.f35984a = actionListener;
        ackableFeature.setActionListener(new ActionListener() { // from class: com.lightup.sdk.device.features.process.DualDeviceFeature.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public final void onDeviceError(Enum r1) {
                DualDeviceFeature.a(DualDeviceFeature.this, (DeviceError) r1);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public final void onDone() {
                DualDeviceFeature dualDeviceFeature = DualDeviceFeature.this;
                if (dualDeviceFeature.f35985b.getAndSet(true)) {
                    dualDeviceFeature.b();
                }
            }
        });
        ackableFeature2.setActionListener(new ActionListener() { // from class: com.lightup.sdk.device.features.process.DualDeviceFeature.2
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public final void onDeviceError(Enum r1) {
                DualDeviceFeature.a(DualDeviceFeature.this, (DeviceError) r1);
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public final void onDone() {
                DualDeviceFeature dualDeviceFeature = DualDeviceFeature.this;
                if (dualDeviceFeature.f35985b.getAndSet(true)) {
                    dualDeviceFeature.b();
                }
            }
        });
        ackableFeature.execute();
        ackableFeature2.execute();
    }

    public static void a(DualDeviceFeature dualDeviceFeature, DeviceError deviceError) {
        deviceError.toString();
        dualDeviceFeature.f35986c = deviceError;
        if (dualDeviceFeature.f35985b.getAndSet(true)) {
            dualDeviceFeature.b();
        }
    }

    public final void b() {
        DeviceError deviceError = this.f35986c;
        ActionListener actionListener = this.f35984a;
        if (deviceError != null) {
            actionListener.onDeviceError(deviceError);
        } else {
            actionListener.onDone();
        }
    }
}
