package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import android.content.SharedPreferences;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DataUploadError;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceState;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.features.process.LightingUpload;
import com.lightup.sdk.device.features.process.ackable.AckableFeature;
import com.lightup.sdk.device.features.process.errors.DeviceError;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoring;
import com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener;
import com.lightup.sdk.device.messages.MessageBuilder;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.messages.SpecificMessageBuilder;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.properties.Properties;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.DualFirmwareManager;
import com.lightup.sdk.device.utils.firmware.FirmwareManager;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.fcm.messages.Ping;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.zip.CRC32;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\"\u001a\u00020\u001bH\u0016J\b\u0010#\u001a\u00020\u001bH\u0016J\b\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020%H\u0016J,\u0010)\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000b2\b\u0010+\u001a\u0004\u0018\u00010\u000b2\b\u0010,\u001a\u0004\u0018\u00010\rH\u0014J(\u0010-\u001a\u00020\u00022\u0006\u0010(\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\rH$J\u0012\u0010.\u001a\u00020\u001b2\b\u0010/\u001a\u0004\u0018\u00010\rH\u0014J\"\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00022\b\u0010(\u001a\u0004\u0018\u00010%2\u0006\u00103\u001a\u00020\u001bH\u0014J\u001a\u00104\u001a\u0002052\b\u00102\u001a\u0004\u0018\u00010\u00022\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u000bH\u0016J\b\u0010:\u001a\u00020\u001bH\u0016J\b\u0010;\u001a\u00020\u001bH\u0016J\u0010\u0010<\u001a\u0002052\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010?\u001a\u0002052\u0006\u0010@\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u0002052\u0006\u0010A\u001a\u00020BH\u0016J\u000e\u0010D\u001a\b\u0012\u0004\u0012\u00020F0EH\u0016J\u0010\u0010G\u001a\u0002052\u0006\u0010A\u001a\u00020HH\u0016J\n\u0010I\u001a\u0004\u0018\u00010FH\u0016J\u001a\u0010J\u001a\u0002012\b\u0010K\u001a\u0004\u0018\u00010\r2\u0006\u0010A\u001a\u00020HH\u0002J\b\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u001b2\u0006\u0010O\u001a\u00020PH\u0016J\u0010\u0010Q\u001a\u00020\u001b2\u0006\u0010O\u001a\u00020PH\u0016J\b\u0010R\u001a\u00020PH\u0016J\u0012\u0010S\u001a\u0002052\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\b\u0010T\u001a\u00020UH\u0016J\u0010\u0010V\u001a\u0002012\u0006\u0010W\u001a\u00020MH\u0016J\u0006\u0010X\u001a\u000201J\u0006\u0010Y\u001a\u000201J\u0010\u0010Z\u001a\u0002012\u0006\u0010[\u001a\u00020\u0002H\u0014J\u0012\u0010\\\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010]\u001a\u0002052\u0006\u0010^\u001a\u00020_2\u0006\u0010A\u001a\u00020BH\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006`"}, d2 = {"Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "Lcom/lightup/sdk/device/devicemanagement/BLESingleDeviceManager;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "Lcom/lightup/sdk/device/features/process/monitoring/VuittonMonitoringListener;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "permissionsManager", "Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;", "internetTimeReader", "Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;", "firmwareTag", "", "prodId", "", "<init>", "(Landroid/content/Context;Lcom/lightup/sdk/device/ble/permissions/PermissionsManager;Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;Ljava/lang/String;[B)V", "monitoring", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;", "getMonitoring", "()Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;", "setMonitoring", "(Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoring;)V", "prefs", "Landroid/content/SharedPreferences;", "getPrefs$library", "()Landroid/content/SharedPreferences;", "isModePing", "", "()Z", "setModePing", "(Z)V", "productId", "getProductId", "()Ljava/lang/String;", "isConnected", "isInBootloader", "getDeviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "getFirmwareManager", "Lcom/lightup/sdk/device/utils/firmware/FirmwareManager;", "deviceId", "canCreateBLEDevice", "name", "mac", "scanRecord", "createBLEDevice", "isOpenPairing", "pairingId", "onConnected", "", "device", "reconnection", Ping.KEY, "Lcom/lightup/sdk/device/enums/CallStatus;", "pingDeviceListener", "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "enableAdminMode", "adminKey", "disableAdminMode", "isAdminModeEnable", "openDevice", "openDeviceListener", "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;", "startAnimation", "animationId", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "stopAnimation", "getLocalAnimations", "", "Lcom/lightup/sdk/animation/CreatorProject;", "updateAnimations", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "getCurrentlyPlayingAnimation", "uploadToDevice", DbParams.KEY_DATA, "generateCheckSum", "", "isModeValid", "mode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "setMode", "getMode", "setPowerModeOff", "getDeviceStatus", "Lcom/lightup/sdk/device/enums/DeviceStatus;", "setCurrentlyPlaying", "triggerId", "stopScan", "disconnectDevices", "onExpectedlyDisconnect", "bleDevice", "onLostDevice", "setWalkingModeConfig", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BLELightupManager extends BLESingleDeviceManager<BLELightup, VuittonMonitoringListener> {
    private boolean isModePing;
    private LightupMonitoring<BLELightupManager> monitoring;
    private final SharedPreferences prefs;
    private final byte[] prodId;
    private final String productId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BLELightupManager(Context context, PermissionsManager permissionsManager, InternetTimeReader internetTimeReader, String str, byte[] bArr) {
        super(context, permissionsManager, internetTimeReader);
        context.getClass();
        permissionsManager.getClass();
        internetTimeReader.getClass();
        str.getClass();
        bArr.getClass();
        this.prodId = bArr;
        SharedPreferences sharedPreferences = context.getSharedPreferences("LUCIE_PREFS", 0);
        sharedPreferences.getClass();
        this.prefs = sharedPreferences;
        this.firmwareManager = new DualFirmwareManager(context, str);
        String strG = ByteUtils.g(bArr.length, bArr, false);
        strG.getClass();
        this.productId = strG;
    }

    private final void uploadToDevice(byte[] data, DataUploadListener listener) {
        if (getCallStatus() != CallStatus.INITIATED || data == null) {
            listener.onError(DataUploadError.TransferError);
        } else {
            new LightingUpload(this.currentBLEDevice, data, 256, listener).execute();
        }
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public boolean canCreateBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord) {
        deviceId.getClass();
        name.getClass();
        return Arrays.equals(deviceId.getProductId(), this.prodId);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public abstract BLELightup createBLEDevice(DeviceId deviceId, String name, String mac, byte[] scanRecord);

    public boolean disableAdminMode() {
        setIsAdminMode(false);
        return true;
    }

    public final void disconnectDevices() {
        clearConnections();
    }

    public boolean enableAdminMode(String adminKey) {
        adminKey.getClass();
        if (!Intrinsics.c(adminKey, SpecificProperties.KEEPALL_ADMIN_KEY)) {
            return false;
        }
        setIsAdminMode(true);
        return true;
    }

    public int generateCheckSum() {
        byte[] bArr;
        String str = this.productId;
        if (Intrinsics.c(str, "0050")) {
            bArr = SpecificProperties.outOfProdAnimationFileKeepAll.get(this.productId);
        } else {
            bArr = Intrinsics.c(str, "0408") ? SpecificProperties.outOfProdAnimationFileX408.get(this.productId) : SpecificProperties.outOfProdAnimationFileTrunk.get(this.productId);
        }
        CRC32 crc32 = new CRC32();
        bArr.getClass();
        crc32.update(bArr, 0, bArr.length);
        return (int) crc32.getValue();
    }

    public CreatorProject getCurrentlyPlayingAnimation() {
        if (isConnected()) {
            return ((BLELightup) this.currentBLEDevice).getCurrentlyPlaying$library();
        }
        return null;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLESingleDeviceManager
    public DeviceId getDeviceId() {
        DeviceId deviceId = ((BLELightup) this.currentBLEDevice).getDeviceId();
        deviceId.getClass();
        return deviceId;
    }

    public DeviceStatus getDeviceStatus() {
        D d = this.currentBLEDevice;
        if (d == 0) {
            return DeviceStatus.OFF;
        }
        return ((BLELightup) d).getCurrentlyPlaying$library() == null ? DeviceStatus.STANDBY : DeviceStatus.ON;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public FirmwareManager getFirmwareManager(DeviceId deviceId) {
        deviceId.getClass();
        FirmwareManager firmwareManager = this.firmwareManager;
        firmwareManager.getClass();
        return firmwareManager;
    }

    public List<CreatorProject> getLocalAnimations() {
        D d = this.currentBLEDevice;
        if (d == 0) {
            return new ArrayList();
        }
        if (((BLELightup) d).getLoadedAnimations$library().isEmpty()) {
            BLELightup bLELightup = (BLELightup) this.currentBLEDevice;
            ArrayList<CreatorProject> arrayList = SpecificProperties.outOfProdAnimation.get(this.productId);
            arrayList.getClass();
            bLELightup.setLoadedAnimations$library(arrayList);
        }
        return ((BLELightup) this.currentBLEDevice).getLoadedAnimations$library();
    }

    public DeviceMode getMode() {
        D d = this.currentBLEDevice;
        if (d == 0) {
            return DeviceMode.UNKNOWN;
        }
        Objects.toString(((BLELightup) d).getMode());
        DeviceMode mode = ((BLELightup) this.currentBLEDevice).getMode();
        mode.getClass();
        return mode;
    }

    public final LightupMonitoring<BLELightupManager> getMonitoring() {
        return this.monitoring;
    }

    /* JADX INFO: renamed from: getPrefs$library, reason: from getter */
    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final String getProductId() {
        return this.productId;
    }

    public boolean isAdminModeEnable() {
        return getIsAdminMode();
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLESingleDeviceManager
    public boolean isConnected() {
        return super.isConnected();
    }

    public boolean isInBootloader() {
        return ((BLELightup) this.currentBLEDevice).getBleDeviceState().bleDeviceState == DeviceState.IN_BOOTLOADER;
    }

    /* JADX INFO: renamed from: isModePing, reason: from getter */
    public final boolean getIsModePing() {
        return this.isModePing;
    }

    public boolean isModeValid(DeviceMode mode) {
        mode.getClass();
        DeviceMode[] deviceModeArr = SpecificProperties.TRUNK_AVAILABLE_MODE;
        deviceModeArr.getClass();
        return ArraysKt.f(mode, deviceModeArr);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public boolean isOpenPairing(byte[] pairingId) {
        return super.isOpenPairing(pairingId) && !Arrays.equals(pairingId, Properties.f36028e);
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onConnected(BLELightup device, DeviceId deviceId, boolean reconnection) {
        device.getClass();
        if (reconnection || this.isModePing) {
            return;
        }
        D d = this.currentBLEDevice;
        d.getClass();
        M m = this.deviceMonitoringListener;
        m.getClass();
        LightupMonitoring<BLELightupManager> lightupMonitoring = new LightupMonitoring<>((BLELightup) d, this, (VuittonMonitoringListener) m);
        this.monitoring = lightupMonitoring;
        lightupMonitoring.execute();
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLESingleDeviceManager, com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onExpectedlyDisconnect(BLELightup bleDevice) {
        bleDevice.getClass();
        super.onExpectedlyDisconnect(bleDevice);
    }

    public CallStatus openDevice(final OpenDeviceListener openDeviceListener) {
        openDeviceListener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            D d = this.currentBLEDevice;
            MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_OPEN_FOR_PAIRING;
            byte[] bArr = new byte[messageInfo.d()];
            bArr[0] = messageInfo.b();
            AckableFeature ackableFeature = new AckableFeature(d, new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLELightupManager$openDevice$feature$1
                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                public void onDeviceError(DeviceError error) {
                    error.getClass();
                    openDeviceListener.onDeviceError(error);
                }

                @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                public void onDone() {
                    final BLELightupManager bLELightupManager = this;
                    final OpenDeviceListener openDeviceListener2 = openDeviceListener;
                    bLELightupManager.stopAnimation(new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLELightupManager$openDevice$feature$1$onDone$1
                        @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
                        public void onDeviceError(DeviceError error) {
                            error.getClass();
                            String str = BLESingleDeviceManager.TAG;
                            error.toString();
                            openDeviceListener2.onDeviceError(error);
                        }

                        @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
                        public void onDone() {
                            bLELightupManager.disconnect();
                            openDeviceListener2.onDone();
                        }
                    });
                }
            });
            if (!((BLELightup) this.currentBLEDevice).getFeatureStore().a(ackableFeature.getUniqueId())) {
                ackableFeature.execute();
            }
        }
        callStatus.getClass();
        return callStatus;
    }

    public CallStatus ping(BLELightup device, PingDeviceListener pingDeviceListener) {
        pingDeviceListener.getClass();
        if (device == null) {
            return CallStatus.ERROR;
        }
        CallStatus callStatusPingDevice = super.pingDevice(device, pingDeviceListener);
        callStatusPingDevice.getClass();
        return callStatusPingDevice;
    }

    public void setCurrentlyPlaying(int triggerId) {
        ((BLELightup) this.currentBLEDevice).setCurrentlyPlaying$library(triggerId);
    }

    public boolean setMode(final DeviceMode mode) {
        mode.getClass();
        mode.name();
        if (!isModeValid(mode)) {
            mode.name();
            String str = ((BLELightup) this.currentBLEDevice).name;
            return false;
        }
        if (getCallStatus() != CallStatus.INITIATED) {
            return false;
        }
        D d = this.currentBLEDevice;
        int deviceMode = mode.getDeviceMode();
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_OPEN_SET_MODE;
        byte[] bArr = new byte[messageInfo.d()];
        bArr[0] = messageInfo.b();
        bArr[1] = ByteUtils.d(deviceMode)[3];
        new AckableFeature(d, new DeviceMessage(bArr), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLELightupManager.setMode.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
                ((BLELightup) BLELightupManager.this.currentBLEDevice).setMode(mode);
                ((VuittonMonitoringListener) BLELightupManager.this.deviceMonitoringListener).onDeviceStatusChanged();
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError error) {
                error.getClass();
                String str2 = BLESingleDeviceManager.TAG;
            }
        }).execute();
        return true;
    }

    public final void setModePing(boolean z) {
        this.isModePing = z;
    }

    public final void setMonitoring(LightupMonitoring<BLELightupManager> lightupMonitoring) {
        this.monitoring = lightupMonitoring;
    }

    public CallStatus setPowerModeOff(ActionListener listener) {
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            new AckableFeature(this.currentBLEDevice, MessageBuilder.a(), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener).execute();
        }
        callStatus.getClass();
        return callStatus;
    }

    public CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener) {
        config.getClass();
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            launchFeature(SpecificMessageBuilder.buildWalkingModeConfig(config), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener);
        }
        callStatus.getClass();
        return callStatus;
    }

    public CallStatus startAnimation(String animationId, ActionListener listener) {
        animationId.getClass();
        listener.getClass();
        Iterator<CreatorProject> it = ((BLELightup) this.currentBLEDevice).getLoadedAnimations$library().iterator();
        it.getClass();
        CreatorProject creatorProject = null;
        while (it.hasNext()) {
            CreatorProject next = it.next();
            next.getClass();
            CreatorProject creatorProject2 = next;
            if (Intrinsics.c(animationId, creatorProject2.getId())) {
                creatorProject = creatorProject2;
            }
        }
        if (creatorProject == null) {
            listener.onDeviceError(DeviceError.DEVICE_REQUIRES_UPDATE);
            return CallStatus.ERROR;
        }
        int triggerIndex = creatorProject.getTriggerIndex();
        CallStatus callStatus = getCallStatus();
        CallStatus callStatus2 = CallStatus.INITIATED;
        if (callStatus == callStatus2) {
            ((BLELightup) this.currentBLEDevice).setCurrentlyPlaying$library(triggerIndex);
            new AckableFeature(this.currentBLEDevice, MessageBuilder.c(triggerIndex, true), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener).execute();
        }
        return callStatus2;
    }

    public CallStatus stopAnimation(ActionListener listener) {
        listener.getClass();
        CallStatus callStatus = getCallStatus();
        if (callStatus == CallStatus.INITIATED) {
            ((BLELightup) this.currentBLEDevice).setCurrentlyPlaying$library(-1);
            new AckableFeature(this.currentBLEDevice, MessageBuilder.c(0, false), MessageInfo.DEVICE_TO_SMARTPHONE_GENERIC_ACK, listener).execute();
        }
        callStatus.getClass();
        return callStatus;
    }

    public final void stopScan() {
        killScanTimeout();
        cancelDiscovery();
    }

    public CallStatus updateAnimations(DataUploadListener listener) {
        byte[] bArr;
        listener.getClass();
        stopAnimation(new ActionListener() { // from class: com.lightup.sdk.device.devicemanagement.BLELightupManager.updateAnimations.1
            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DoneListener
            public void onDone() {
            }

            @Override // com.lightup.sdk.device.features.process.ackable.listeners.DeviceErrorListener
            public void onDeviceError(DeviceError error) {
                error.getClass();
            }
        });
        String str = this.productId;
        if (Intrinsics.c(str, "0050")) {
            bArr = SpecificProperties.outOfProdAnimationFileKeepAll.get(this.productId);
        } else {
            bArr = Intrinsics.c(str, "0408") ? SpecificProperties.outOfProdAnimationFileX408.get(this.productId) : SpecificProperties.outOfProdAnimationFileTrunk.get(this.productId);
        }
        BLELightup bLELightup = (BLELightup) this.currentBLEDevice;
        ArrayList<CreatorProject> arrayList = SpecificProperties.outOfProdAnimation.get(this.productId);
        arrayList.getClass();
        bLELightup.setLoadedAnimations$library(arrayList);
        uploadToDevice(bArr, listener);
        return CallStatus.INITIATED;
    }

    @Override // com.lightup.sdk.device.devicemanagement.BLEDevicesManager
    public void onLostDevice(BLELightup device) {
    }
}
