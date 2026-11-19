package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.device.ble.exceptions.ble.BLEDisabledException;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;

/* JADX INFO: loaded from: classes2.dex */
public interface DeviceHandler<M extends DeviceMonitoringListener> {
    CallStatus connectToDevice(BLEDevice bLEDevice, DeviceConnectionProcessListener deviceConnectionProcessListener);

    CallStatus ping(PingDeviceListener pingDeviceListener);

    CallStatus startDeviceConnectionProcess(M m, DeviceConnectionProcessListener deviceConnectionProcessListener) throws BLEDisabledException;

    CallStatus startDeviceConnectionProcess(DeviceConnectionProcessListener deviceConnectionProcessListener);

    CallStatus startDeviceConnectionProcess(DeviceId[] deviceIdArr, boolean z, M m, DeviceConnectionProcessListener deviceConnectionProcessListener);

    CallStatus startDeviceScanProcess(DeviceScanProcessListener deviceScanProcessListener);

    void stopDeviceConnectionProcess();

    CallStatus updateDevice(UpdateDeviceListener updateDeviceListener);
}
