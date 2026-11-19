package com.lightup.sdk.device.features.process.listener;

import com.lightup.sdk.device.features.process.errors.DeviceError;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"Lcom/lightup/sdk/device/features/process/listener/EmptyActionListener;", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "<init>", "()V", "onDone", "", "onDeviceError", "error", "Lcom/lightup/sdk/device/features/process/errors/DeviceError;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EmptyActionListener implements ActionListener {
    @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
    public void onDone() {
    }

    @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
    public void onDeviceError(DeviceError error) {
    }
}
