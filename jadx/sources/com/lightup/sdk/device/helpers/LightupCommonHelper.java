package com.lightup.sdk.device.helpers;

import android.content.Context;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.devicemanagement.BLEDeviceHelper;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLELightupManager;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.listeners.DeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.sightcall.universal.fcm.messages.Ping;
import defpackage.md;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0014H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0016\u0010!\u001a\u00020\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0017J\u001a\u0010$\u001a\u00020\u001a2\b\u0010%\u001a\u0004\u0018\u00010#2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0006H\u0017J\b\u0010*\u001a\u00020\u0014H\u0017J\b\u0010+\u001a\u00020\u0014H\u0016J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u000201H\u0016J9\u00102\u001a\u00020\u001a2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u0018042\u0006\u00105\u001a\u00020\u00142\u0006\u00106\u001a\u0002072\f\u00108\u001a\b\u0012\u0004\u0012\u00020#09H\u0017¢\u0006\u0002\u0010:J&\u0010;\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020#2\f\u00108\u001a\b\u0012\u0004\u0012\u00020#092\u0006\u0010<\u001a\u000207H\u0017J\b\u0010=\u001a\u00020>H\u0017J\u0018\u0010?\u001a\u00020\u001a2\u0006\u0010@\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020DH\u0016J\b\u0010E\u001a\u00020DH\u0016J\u000e\u0010F\u001a\b\u0012\u0004\u0012\u00020 0GH\u0016J\u0010\u0010H\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020\u00062\u0006\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u00062\u0006\u0010L\u001a\u00020MH\u0016J\u0010\u0010O\u001a\u00020>2\u0006\u0010P\u001a\u00020\u0014H\u0016J\u0006\u0010Q\u001a\u00020>J\u0006\u0010R\u001a\u00020>J\u0018\u0010S\u001a\u00020\u001a2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0016\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006V"}, d2 = {"Lcom/lightup/sdk/device/helpers/LightupCommonHelper;", "Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;", "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "apiKey", "", "bleAvailabilityListener", "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V", "TAG", "kotlin.jvm.PlatformType", "lightupManager", "Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "getLightupManager$library", "()Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;", "setLightupManager$library", "(Lcom/lightup/sdk/device/devicemanagement/BLELightupManager;)V", "isConnected", "", "isReady", "isInBootloader", "getDeviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "startAnimation", "Lcom/lightup/sdk/device/enums/CallStatus;", "animationId", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "stopAnimation", "getCurrentlyPlayingAnimation", "Lcom/lightup/sdk/animation/CreatorProject;", "startDeviceScanProcess", "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", Ping.KEY, "device", "pingDeviceListener", "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "enableAdminMode", "adminKey", "disableAdminMode", "isAdminModeEnable", "openDevice", "openDeviceListener", "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;", "updateDevice", "updateDeviceListener", "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;", "startDeviceConnectionProcess", "deviceIds", "", "exclude", "deviceMonitoringListener", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "deviceConnectionProcessListener", "Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;", "([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/listeners/DeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;", "connectToDevice", "monitoringListener", "stopDeviceConnectionProcess", "", "updateAnimations", "fetchFromCloud", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "setMode", "mode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "getMode", "getDeviceAnimations", "", "setPowerModeOff", "getDeviceStatus", "Lcom/lightup/sdk/device/enums/DeviceStatus;", "getFirmwareVersion", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "getBoardVersion", "setTestFolder", "useTestFolder", "stopScan", "disconnect", "setWalkingModeConfig", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class LightupCommonHelper extends BLEDeviceHelper implements LightupHelperInterface {
    private final String TAG;
    public BLELightupManager lightupManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightupCommonHelper(Context context, String str, BLEAvailabilityListener bLEAvailabilityListener) {
        super(context, bLEAvailabilityListener);
        context.getClass();
        str.getClass();
        bLEAvailabilityListener.getClass();
        this.TAG = "LightupCommonHelper";
        if (str.contentEquals(SpecificProperties.KEEPALL_TOPOLOGY_ID)) {
            return;
        }
        md.n("Failed requirement.");
        throw null;
    }

    @Deprecated
    public CallStatus connectToDevice(BLELightup device, DeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener, final LightupMonitoringListener monitoringListener) {
        device.getClass();
        deviceConnectionProcessListener.getClass();
        monitoringListener.getClass();
        CallStatus callStatusConnectToDevice = getLightupManager$library().connectToDevice(device, deviceConnectionProcessListener, new VuittonMonitoringListener() { // from class: com.lightup.sdk.device.helpers.LightupCommonHelper.connectToDevice.1
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                monitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
                monitoringListener.onBatteryLevel(PairOrientation.UNKNOWN, percent, plugged);
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onBatteryStatus(int batteryLevel) {
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onDeviceStatusChanged() {
                monitoringListener.onDeviceStatusChanged();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onDeviceTimeStateChanged(boolean deviceTimeSet) {
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onNewAnimationsAvailable() {
                monitoringListener.onNewAnimationsAvailable();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onRequiresAnimationsUpdate() {
                monitoringListener.onRequiresAnimationsUpdate();
            }
        });
        callStatusConnectToDevice.getClass();
        return callStatusConnectToDevice;
    }

    @Deprecated
    public boolean disableAdminMode() {
        return getLightupManager$library().disableAdminMode();
    }

    public final void disconnect() {
        getLightupManager$library().disconnectDevices();
    }

    @Deprecated
    public boolean enableAdminMode(String adminKey) {
        adminKey.getClass();
        return getLightupManager$library().enableAdminMode(adminKey);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public String getBoardVersion(PairOrientation orientation) {
        orientation.getClass();
        String boardVersion = getLightupManager$library().getBoardVersion(orientation);
        boardVersion.getClass();
        return boardVersion;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CreatorProject getCurrentlyPlayingAnimation() {
        return getLightupManager$library().getCurrentlyPlayingAnimation();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public List<CreatorProject> getDeviceAnimations() {
        return getLightupManager$library().getLocalAnimations();
    }

    public DeviceId getDeviceId() {
        return getLightupManager$library().getDeviceId();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public DeviceStatus getDeviceStatus() {
        return getLightupManager$library().getDeviceStatus();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public String getFirmwareVersion(PairOrientation orientation) {
        orientation.getClass();
        String firmwareVersion = getLightupManager$library().getFirmwareVersion(orientation);
        firmwareVersion.getClass();
        return firmwareVersion;
    }

    public final BLELightupManager getLightupManager$library() {
        BLELightupManager bLELightupManager = this.lightupManager;
        if (bLELightupManager != null) {
            return bLELightupManager;
        }
        Intrinsics.h("lightupManager");
        throw null;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public DeviceMode getMode() {
        return getLightupManager$library().getMode();
    }

    public boolean isAdminModeEnable() {
        return getLightupManager$library().isAdminModeEnable();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean isConnected() {
        return getLightupManager$library().isConnected();
    }

    public boolean isInBootloader() {
        return getLightupManager$library().isInBootloader();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean isReady() {
        return getLightupManager$library().isReady();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus openDevice(OpenDeviceListener openDeviceListener) {
        openDeviceListener.getClass();
        return getLightupManager$library().openDevice(openDeviceListener);
    }

    public CallStatus ping(BLELightup device, PingDeviceListener pingDeviceListener) {
        pingDeviceListener.getClass();
        return getLightupManager$library().ping(device, pingDeviceListener);
    }

    public final void setLightupManager$library(BLELightupManager bLELightupManager) {
        bLELightupManager.getClass();
        this.lightupManager = bLELightupManager;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean setMode(DeviceMode mode) {
        mode.getClass();
        return getLightupManager$library().setMode(mode);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus setPowerModeOff(ActionListener listener) {
        listener.getClass();
        return getLightupManager$library().setPowerModeOff(listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public void setTestFolder(boolean useTestFolder) {
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener) {
        config.getClass();
        listener.getClass();
        return getLightupManager$library().setWalkingModeConfig(config, listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus startAnimation(String animationId, ActionListener listener) {
        animationId.getClass();
        listener.getClass();
        return getLightupManager$library().startAnimation(animationId, listener);
    }

    @Deprecated
    public CallStatus startDeviceConnectionProcess(DeviceId[] deviceIds, boolean exclude, final LightupMonitoringListener deviceMonitoringListener, DeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener) {
        deviceIds.getClass();
        deviceMonitoringListener.getClass();
        deviceConnectionProcessListener.getClass();
        CallStatus callStatusStartDeviceConnectionProcess = getLightupManager$library().startDeviceConnectionProcess(deviceIds, exclude, new VuittonMonitoringListener() { // from class: com.lightup.sdk.device.helpers.LightupCommonHelper.startDeviceConnectionProcess.1
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                deviceMonitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
                deviceMonitoringListener.onBatteryLevel(PairOrientation.UNKNOWN, percent, plugged);
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onBatteryStatus(int batteryLevel) {
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onDeviceStatusChanged() {
                deviceMonitoringListener.onDeviceStatusChanged();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onDeviceTimeStateChanged(boolean deviceTimeSet) {
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onNewAnimationsAvailable() {
                deviceMonitoringListener.onNewAnimationsAvailable();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onRequiresAnimationsUpdate() {
                deviceMonitoringListener.onRequiresAnimationsUpdate();
            }
        }, deviceConnectionProcessListener);
        callStatusStartDeviceConnectionProcess.getClass();
        return callStatusStartDeviceConnectionProcess;
    }

    @Deprecated
    public CallStatus startDeviceScanProcess(DeviceScanProcessListener<BLELightup> listener) {
        listener.getClass();
        CallStatus callStatusStartDeviceScanProcess = getLightupManager$library().startDeviceScanProcess(listener);
        callStatusStartDeviceScanProcess.getClass();
        return callStatusStartDeviceScanProcess;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus stopAnimation(ActionListener listener) {
        listener.getClass();
        return getLightupManager$library().stopAnimation(listener);
    }

    @Deprecated
    public void stopDeviceConnectionProcess() {
        getLightupManager$library().stopDeviceConnectionProcess();
    }

    public final void stopScan() {
        getLightupManager$library().stopScan();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus updateAnimations(boolean fetchFromCloud, DataUploadListener listener) {
        listener.getClass();
        return isConnected() ? getLightupManager$library().updateAnimations(listener) : CallStatus.NO_DEVICE_CONNECTED;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus updateDevice(UpdateDeviceListener updateDeviceListener) {
        updateDeviceListener.getClass();
        if (!isConnected()) {
            return CallStatus.NO_DEVICE_CONNECTED;
        }
        CallStatus callStatusUpdateDevice = getLightupManager$library().updateDevice(updateDeviceListener);
        callStatusUpdateDevice.getClass();
        return callStatusUpdateDevice;
    }
}
