package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.ble.scanner.BLEScanner;
import com.lightup.sdk.device.devicemanagement.BLEOrientedDevice;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.UpdateError;
import com.lightup.sdk.device.features.process.DualDeviceFeature;
import com.lightup.sdk.device.features.process.ackable.AckableFeature;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateError;
import com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener;
import com.lightup.sdk.device.features.process.programupdate.DualProgramUpdate;
import com.lightup.sdk.device.features.process.programupdate.ProgramUpdate;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLEPairedDevicesManager<D extends BLEOrientedDevice, M extends DeviceMonitoringListener> extends BLEDevicesManager<D> {
    private static final String TAG = "BLEPairedDevicesManager";
    private boolean autoConnect;
    protected OrientedDeviceConnectionProcessListener<D> deviceConnectionProcessListener;
    private List<DeviceId> deviceFilterAsList;
    protected M deviceMonitoringListener;
    private boolean exclude;

    public class DualFirmwareUpdateListener extends FirmwareUpdateListener {
        private UpdateDeviceListener updateDeviceListener;

        public DualFirmwareUpdateListener(UpdateDeviceListener updateDeviceListener) {
            this.updateDeviceListener = updateDeviceListener;
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
        public void onCompleted() {
            this.updateDeviceListener.onDone();
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public void onError(FirmwareUpdateError firmwareUpdateError) {
            this.updateDeviceListener.onUpdateError(UpdateError.fromFirmwareUpdateError(firmwareUpdateError));
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public void onLinkBackUp() {
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public void onLinkBroken() {
        }

        @Override // com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateListener
        public void onProgress(FirmwareUpdateListener.Progress progress) {
            this.updateDeviceListener.onProgress(progress.getCurrentStep(), progress.getNumberOfSteps(), progress.getStepProgress());
        }
    }

    public BLEPairedDevicesManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader) throws ScannerException {
        super(context, permissionsManager, internetTimeReader);
        this.exclude = false;
        this.deviceFilterAsList = new ArrayList();
        this.autoConnect = false;
        setConnectionPoolSize(2);
    }

    private synchronized CallStatus connectToDevice(D d) {
        d.getShortId();
        if (this.connectedDevices.size() == 2) {
            return CallStatus.ERROR;
        }
        this.connectedDevices.size();
        super.connectDevice(d);
        return CallStatus.INITIATED;
    }

    private CallStatus updateDevice(D d, UpdateDeviceListener updateDeviceListener, int i2, int i3) {
        if (isConnected(d)) {
            if (d.isUpdating()) {
                return CallStatus.PROCESS_ALREADY_RUNNING;
            }
            try {
                this.firmwareManager.e(this, d, new DualFirmwareUpdateListener(updateDeviceListener), i2, i3).execute();
            } catch (UnsupportedDeviceException unused) {
            }
        }
        return CallStatus.INITIATED;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public synchronized void connectDevice(D d) {
        connectToDevice(d);
    }

    public synchronized CallStatus connectPair(List<D> list, OrientedDeviceConnectionProcessListener<D> orientedDeviceConnectionProcessListener) {
        if (list.size() < 2) {
            return CallStatus.ERROR;
        }
        if (list.get(0).getOrientation() == list.get(1).getOrientation()) {
            orientedDeviceConnectionProcessListener.onError("Cannot connect to two devices with same orientation");
            return CallStatus.ERROR;
        }
        this.deviceConnectionProcessListener = orientedDeviceConnectionProcessListener;
        CallStatus callStatusConnectToDevice = connectToDevice(list.get(0));
        CallStatus callStatusConnectToDevice2 = connectToDevice(list.get(1));
        CallStatus callStatus = CallStatus.INITIATED;
        if (callStatusConnectToDevice == callStatus && callStatusConnectToDevice2 == callStatus) {
            return callStatus;
        }
        return callStatusConnectToDevice == callStatus ? callStatusConnectToDevice2 : callStatusConnectToDevice;
    }

    public String getBoardVersion(PairOrientation pairOrientation) {
        return getBoardVersion(getDevice(pairOrientation));
    }

    public CallStatus getCallStatus() {
        return (isReady(getDevice(PairOrientation.LEFT)) && isReady(getDevice(PairOrientation.RIGHT))) ? CallStatus.INITIATED : CallStatus.NO_DEVICE_CONNECTED;
    }

    public D getDevice(PairOrientation pairOrientation) {
        for (D d : this.connectedDevices.values()) {
            if (d.getOrientation() == pairOrientation) {
                return d;
            }
        }
        return null;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public DeviceConnectionProcessListener<D> getDeviceConnectionProcessHandler(D d) {
        return new OrientedDeviceConnectionProcessHandler(d.getOrientation(), this.deviceConnectionProcessListener);
    }

    public String getFirmwareVersion(PairOrientation pairOrientation) {
        return getFirmwareVersion(getDevice(pairOrientation));
    }

    public String getSerialNumber(PairOrientation pairOrientation) {
        return getSerialNumber(getDevice(pairOrientation));
    }

    public CallStatus getSoftCallStatus() {
        return (isReady(getDevice(PairOrientation.LEFT)) || isReady(getDevice(PairOrientation.RIGHT))) ? CallStatus.INITIATED : CallStatus.NO_DEVICE_CONNECTED;
    }

    public boolean isConnected() {
        return isConnected(PairOrientation.LEFT) && isConnected(PairOrientation.RIGHT);
    }

    public boolean isReady() {
        return isReady(PairOrientation.LEFT) && isReady(PairOrientation.RIGHT);
    }

    public CallStatus launchFeature(DeviceMessage deviceMessage, MessageInfo messageInfo, ActionListener actionListener) {
        CallStatus softCallStatus = getSoftCallStatus();
        if (softCallStatus == CallStatus.INITIATED) {
            ArrayList arrayList = new ArrayList();
            for (BLEOrientedDevice bLEOrientedDevice : this.connectedDevices.values()) {
                if (isReady(bLEOrientedDevice)) {
                    arrayList.add(new AckableFeature(bLEOrientedDevice, deviceMessage, messageInfo, actionListener));
                }
            }
            if (arrayList.size() == 2) {
                new DualDeviceFeature((AckableFeature) arrayList.get(0), (AckableFeature) arrayList.get(1), actionListener);
                return softCallStatus;
            }
            if (arrayList.size() == 1) {
                ((AckableFeature) arrayList.get(0)).execute();
            }
        }
        return softCallStatus;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveredDevice(D d) {
        d.getShortId();
        if (this.exclude && this.deviceFilterAsList.contains(d.getDeviceId())) {
            return;
        }
        if (this.exclude || this.deviceFilterAsList.contains(d.getDeviceId())) {
            if (!this.autoConnect) {
                super.onDiscoveredDevice(d);
            } else {
                if (this.connectedDevices.size() == 2) {
                    return;
                }
                connectToDevice(d);
            }
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager, com.lightup.sdk.device.ble.scanner.listeners.DeviceDiscoveryListener
    public void onDiscoveryEnd(boolean z) {
        if (!this.autoConnect) {
            super.onDiscoveryEnd(z);
        } else {
            if (this.connectedDevices.size() == 2) {
                return;
            }
            this.connectedDevices.size();
            if (z) {
                return;
            }
            this.deviceConnectionProcessListener.onNoDeviceFound();
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onExpectedlyDisconnect(D d) {
        d.getShortId();
        this.connectedDevices.remove(d.getMac());
        this.connectedDevices.size();
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void reset() {
        super.reset();
        this.deviceFilterAsList.clear();
        this.autoConnect = false;
        this.exclude = true;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public synchronized CallStatus startDeviceConnectionProcess(DeviceId[] deviceIdArr, boolean z, M m, OrientedDeviceConnectionProcessListener<D> orientedDeviceConnectionProcessListener) {
        this.deviceFilterAsList = new ArrayList(Arrays.asList(deviceIdArr));
        this.exclude = z;
        this.deviceMonitoringListener = m;
        this.deviceConnectionProcessListener = orientedDeviceConnectionProcessListener;
        this.autoConnect = true;
        this.knownBLEDevices.clear();
        this.knownBLEDevices.putAll(this.connectedDevices);
        return startScanProcess();
    }

    public CallStatus startDeviceScanProcess(DeviceScanProcessListener<D> deviceScanProcessListener) {
        stopDeviceConnectionProcess();
        return startScanProcess(deviceScanProcessListener);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public synchronized void stopDeviceConnectionProcess() {
        boolean z;
        try {
            BLEScanner bLEScanner = this.scanner;
            synchronized (bLEScanner) {
                z = bLEScanner.f35971b;
            }
            if (z) {
                killScanTimeout();
                cancelDiscovery();
            }
            reset();
        } catch (Throwable th) {
            throw th;
        }
    }

    public CallStatus updateDevices(UpdateDeviceListener updateDeviceListener, int i2, int i3) {
        if (!isConnected()) {
            return CallStatus.NO_DEVICE_CONNECTED;
        }
        BLEOrientedDevice device = getDevice(PairOrientation.LEFT);
        BLEOrientedDevice device2 = getDevice(PairOrientation.RIGHT);
        boolean z = device.requiresUpdate;
        if (z && device2.requiresUpdate) {
            try {
                new DualProgramUpdate((ProgramUpdate) this.firmwareManager.e(this, device, new DualFirmwareUpdateListener(updateDeviceListener), i2, i3), (ProgramUpdate) this.firmwareManager.e(this, device2, new DualFirmwareUpdateListener(updateDeviceListener), i2, i3), updateDeviceListener);
            } catch (UnsupportedDeviceException e2) {
                e2.printStackTrace();
            }
        } else if (z) {
            updateDevice(device, updateDeviceListener, i2, i3);
        } else {
            updateDevice(device2, updateDeviceListener, i2, i3);
        }
        return CallStatus.INITIATED;
    }

    public boolean isConnected(PairOrientation pairOrientation) {
        return isConnected(getDevice(pairOrientation));
    }

    public boolean isReady(PairOrientation pairOrientation) {
        return isReady(getDevice(pairOrientation));
    }

    public CallStatus updateDevice(PairOrientation pairOrientation, UpdateDeviceListener updateDeviceListener, int i2, int i3) {
        return updateDevice(getDevice(pairOrientation), updateDeviceListener, i2, i3);
    }

    public synchronized CallStatus startDeviceConnectionProcess(M m, OrientedDeviceConnectionProcessListener<D> orientedDeviceConnectionProcessListener) {
        return startDeviceConnectionProcess(new DeviceId[0], true, m, orientedDeviceConnectionProcessListener);
    }

    public CallStatus launchFeature(DeviceMessage deviceMessage, DeviceMessage deviceMessage2, MessageInfo messageInfo, ActionListener actionListener) {
        AckableFeature ackableFeature = new AckableFeature((BLEDevice) getDevice(PairOrientation.LEFT), deviceMessage, messageInfo, false);
        AckableFeature ackableFeature2 = new AckableFeature((BLEDevice) getDevice(PairOrientation.RIGHT), deviceMessage2, messageInfo, false);
        ackableFeature.setName("config1");
        ackableFeature2.setName("config2");
        new DualDeviceFeature(ackableFeature, ackableFeature2, actionListener);
        return CallStatus.INITIATED;
    }
}
