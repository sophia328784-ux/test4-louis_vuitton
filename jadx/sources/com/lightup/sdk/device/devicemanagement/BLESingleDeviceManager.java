package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.ackable.AckableFeature;
import com.lightup.sdk.device.features.process.epoch.SetEpochListener;
import com.lightup.sdk.device.features.process.errors.DeviceConnectionError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLESingleDeviceManager<D extends BLEDevice, M extends DeviceMonitoringListener> extends BLEDevicesManager<D> {
    protected static final boolean DEBUG = false;
    protected static final String TAG = "BLESingleDeviceManager";
    protected boolean autoConnect;
    private AtomicBoolean bleDeviceAssigned;
    protected D currentBLEDevice;
    protected DeviceConnectionProcessListener<D> deviceConnectionProcessListener;
    protected List<DeviceId> deviceFilterAsList;
    protected M deviceMonitoringListener;
    protected boolean exclude;

    public BLESingleDeviceManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) throws ScannerException {
        super(context, permissionsManager, internetTimeReader);
        this.bleDeviceAssigned = new AtomicBoolean(false);
        this.exclude = true;
        this.deviceFilterAsList = new ArrayList();
        this.autoConnect = false;
        setConnectionPoolSize(1);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void clearConnections() {
        super.clearConnections();
        this.currentBLEDevice = null;
        this.bleDeviceAssigned.set(false);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public synchronized void connectDevice(D d) {
        connectToDevice(d, this.deviceConnectionProcessListener);
    }

    public synchronized CallStatus connectToDevice(D d, DeviceConnectionProcessListener<D> deviceConnectionProcessListener) {
        d.getShortId();
        this.currentBLEDevice = d;
        this.deviceConnectionProcessListener = deviceConnectionProcessListener;
        cancelDiscovery();
        super.connectDevice(d);
        return CallStatus.INITIATED;
    }

    public void disconnect() {
        super.disconnect(this.currentBLEDevice);
    }

    public String getBoardVersion(PairOrientation pairOrientation) {
        return super.getBoardVersion(this.currentBLEDevice);
    }

    public CallStatus getCallStatus() {
        return super.getCallStatus(this.currentBLEDevice);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public DeviceConnectionProcessListener<D> getDeviceConnectionProcessHandler(D d) {
        return this.deviceConnectionProcessListener;
    }

    public DeviceId getDeviceId() {
        return this.currentBLEDevice.getDeviceId();
    }

    public String getFirmwareVersion(PairOrientation pairOrientation) {
        return super.getFirmwareVersion(this.currentBLEDevice);
    }

    public boolean isConnected() {
        D d = this.currentBLEDevice;
        if (d != null) {
            return super.isConnected(d);
        }
        return false;
    }

    public boolean isReady() {
        D d = this.currentBLEDevice;
        if (d != null) {
            return super.isReady(d);
        }
        return false;
    }

    public CallStatus launchFeature(DeviceMessage deviceMessage, MessageInfo messageInfo, ActionListener actionListener) {
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            new AckableFeature(this.currentBLEDevice, deviceMessage, messageInfo, actionListener).execute();
        }
        return callStatus;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveredDevice(D d) {
        if (this.exclude && this.deviceFilterAsList.contains(d.getDeviceId())) {
            return;
        }
        if (this.exclude || this.deviceFilterAsList.contains(d.getDeviceId())) {
            if (!this.autoConnect) {
                super.onDiscoveredDevice((BLEDevice) d);
            } else {
                if (this.bleDeviceAssigned.getAndSet(true)) {
                    return;
                }
                connectToDevice(d, this.deviceConnectionProcessListener);
            }
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveryEnd(boolean z) {
        if (!this.autoConnect) {
            super.onDiscoveryEnd(z);
        } else {
            if (this.bleDeviceAssigned.get() || z) {
                return;
            }
            this.deviceConnectionProcessListener.onNoDeviceFound();
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onExpectedlyDisconnect(D d) {
        this.connectedDevices.remove(d.getMac());
        this.currentBLEDevice = null;
        this.bleDeviceAssigned.set(false);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.utils.networktime.InternetTimeReaderListener
    public synchronized void onInternetTimeAvailable() {
        if (this.bleDeviceAssigned.get()) {
            this.currentBLEDevice.onInternetTimeAvailable(new SetEpochListener() { // from class: com.lightup.sdk.device.devicemanagement.BLESingleDeviceManager.1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public void onDone() {
                    M m = BLESingleDeviceManager.this.deviceMonitoringListener;
                    if (m != null) {
                        m.onDeviceTimeStateChanged(true);
                    }
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public void onDeviceError(DeviceConnectionError deviceConnectionError) {
                }
            });
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public CallStatus pingDevice(D d, PingDeviceListener pingDeviceListener) {
        return super.pingDevice(d, pingDeviceListener);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void reset() {
        super.reset();
        this.deviceFilterAsList.clear();
        this.autoConnect = false;
        this.exclude = true;
    }

    public synchronized CallStatus startDeviceConnectionProcess(DeviceId[] deviceIdArr, boolean z, M m, DeviceConnectionProcessListener<D> deviceConnectionProcessListener) {
        this.deviceFilterAsList = new ArrayList(Arrays.asList(deviceIdArr));
        this.exclude = z;
        this.deviceMonitoringListener = m;
        this.deviceConnectionProcessListener = deviceConnectionProcessListener;
        this.autoConnect = true;
        this.knownBLEDevices.clear();
        this.knownBLEDevices.putAll(this.connectedDevices);
        return startScanProcess();
    }

    public CallStatus startDeviceScanProcess(DeviceScanProcessListener<D> deviceScanProcessListener) {
        stopDeviceConnectionProcess();
        return startScanProcess(deviceScanProcessListener);
    }

    public CallStatus updateDevice(UpdateDeviceListener updateDeviceListener) {
        return super.updateDevice(this.currentBLEDevice, updateDeviceListener);
    }

    public synchronized CallStatus connectToDevice(D d, DeviceConnectionProcessListener<D> deviceConnectionProcessListener, M m) {
        this.deviceMonitoringListener = m;
        return connectToDevice(d, deviceConnectionProcessListener);
    }

    public CallStatus startDeviceConnectionProcess(M m, DeviceConnectionProcessListener deviceConnectionProcessListener) {
        return startDeviceConnectionProcess(new DeviceId[0], true, m, deviceConnectionProcessListener);
    }
}
