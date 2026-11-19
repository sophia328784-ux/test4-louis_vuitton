package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import defpackage.z1;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, d2 = {"com/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "onDeviceError", "", "error", "Lcom/lightup/sdk/device/features/process/errors/DeviceError;", "onDone", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BLEX408Manager$openDevices$1$onDone$1 implements ActionListener {
    final /* synthetic */ OpenDeviceListener $listener;
    final /* synthetic */ BLEX408Manager this$0;

    public BLEX408Manager$openDevices$1$onDone$1(OpenDeviceListener openDeviceListener, BLEX408Manager bLEX408Manager) {
        this.$listener = openDeviceListener;
        this.this$0 = bLEX408Manager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDone$lambda$0(OpenDeviceListener openDeviceListener) throws InterruptedException {
        Thread.sleep(400L);
        openDeviceListener.onDone();
    }

    @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
    public void onDone() {
        this.this$0.stopDeviceConnectionProcess();
        new Thread(new z1(this.$listener, 13)).start();
    }

    @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
    public void onDeviceError(DeviceError error) {
        this.$listener.onDeviceError(error);
    }
}
