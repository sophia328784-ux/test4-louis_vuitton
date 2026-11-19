package com.lightup.sdk.device.helpers;

import android.content.Context;
import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.SpecificProperties;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.ble.scanner.listeners.X408PairScanProcessListener;
import com.lightup.sdk.device.devicemanagement.BLEDeviceHelper;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLEX408;
import com.lightup.sdk.device.devicemanagement.BLEX408Manager;
import com.lightup.sdk.device.devicemanagement.BLEX408Pair;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.features.process.listener.PingDeviceListener;
import com.lightup.sdk.device.features.process.monitoring.LightupMonitoringListener;
import com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.device.DeviceId;
import com.lightup.sdk.device.model.device.OrientedDeviceConnectionProcessListener;
import com.lightup.sdk.device.model.listeners.DeviceScanProcessListener;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import com.sightcall.universal.fcm.messages.Ping;
import defpackage.md;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0016\u0010!\u001a\u00020\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0007J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020%J\u0006\u0010&\u001a\u00020'J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010)\u001a\u00020*J\u0016\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\u0006\u0010)\u001a\u00020*J\u0018\u0010.\u001a\u00020\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010#2\u0006\u0010)\u001a\u00020*J\u000e\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u0006J\u0006\u00101\u001a\u00020\u0010J\u0006\u00102\u001a\u00020\u0010J\u0010\u00103\u001a\u00020\u001a2\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u000208H\u0016J\u001c\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020;2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020#0=J7\u00109\u001a\u00020\u001a2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00180?2\u0006\u0010@\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020#0=¢\u0006\u0002\u0010AJ*\u0010B\u001a\u00020\u001a2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020#0D2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020#0=2\u0006\u0010:\u001a\u00020;J+\u0010B\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020#0=2\u0006\u0010:\u001a\u00020;H\u0000¢\u0006\u0002\bEJ\u0006\u0010F\u001a\u00020'J\u0018\u0010G\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020IH\u0016J\u0010\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020LH\u0016J\b\u0010M\u001a\u00020LH\u0016J\u000e\u0010N\u001a\b\u0012\u0004\u0012\u00020 0DH\u0016J\u0010\u0010O\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010P\u001a\u00020QH\u0016J\u0006\u0010R\u001a\u00020\u001aJ\u0010\u0010S\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010U\u001a\u00020'J\u001c\u0010V\u001a\u00020\u001a2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020#0D2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010W\u001a\u00020'2\u0006\u0010X\u001a\u00020\u0010H\u0016J\u0018\u0010Y\u001a\u00020\u001a2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0016\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\\"}, d2 = {"Lcom/lightup/sdk/device/helpers/X408Helper;", "Lcom/lightup/sdk/device/devicemanagement/BLEDeviceHelper;", "Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "apiKey", "", "bleAvailabilityListener", "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V", "TAG", "kotlin.jvm.PlatformType", "bleX408Manager", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;", "isConnected", "", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "device", "Lcom/lightup/sdk/device/devicemanagement/BLEX408;", "isReady", "isInBootloader", "getDeviceId", "Lcom/lightup/sdk/device/model/device/DeviceId;", "startAnimation", "Lcom/lightup/sdk/device/enums/CallStatus;", "animationId", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "stopAnimation", "getCurrentlyPlayingAnimation", "Lcom/lightup/sdk/animation/CreatorProject;", "startDeviceScanProcess", "Lcom/lightup/sdk/device/model/listeners/DeviceScanProcessListener;", "Lcom/lightup/sdk/device/devicemanagement/BLELightup;", "startPairScanProcess", "Lcom/lightup/sdk/device/ble/scanner/listeners/X408PairScanProcessListener;", "stopScan", "", Ping.KEY, "pingDeviceListener", "Lcom/lightup/sdk/device/features/process/listener/PingDeviceListener;", "pingPair", "pair", "Lcom/lightup/sdk/device/devicemanagement/BLEX408Pair;", "pingDevice", "enableAdminMode", "adminKey", "disableAdminMode", "isAdminModeEnable", "openDevice", "openDeviceListener", "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;", "updateDevice", "updateDeviceListener", "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;", "startDeviceConnectionProcess", "monitoringListener", "Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;", "deviceConnectionProcessListener", "Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;", "deviceIds", "", "exclude", "([Lcom/lightup/sdk/device/model/device/DeviceId;ZLcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;Lcom/lightup/sdk/device/model/device/OrientedDeviceConnectionProcessListener;)Lcom/lightup/sdk/device/enums/CallStatus;", "connectToPair", "devices", "", "connectToPair$library", "stopDeviceConnectionProcess", "updateAnimations", "fetchFromCloud", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "setMode", "mode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "getMode", "getDeviceAnimations", "setPowerModeOff", "getDeviceStatus", "Lcom/lightup/sdk/device/enums/DeviceStatus;", "getDeviceCallStatus", "getFirmwareVersion", "getBoardVersion", "disconnect", "twin", "setTestFolder", "useTestFolder", "setWalkingModeConfig", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class X408Helper extends BLEDeviceHelper implements LightupHelperInterface {
    private final String TAG;
    private final BLEX408Manager bleX408Manager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X408Helper(Context context, String str, BLEAvailabilityListener bLEAvailabilityListener) {
        super(context, bLEAvailabilityListener);
        context.getClass();
        str.getClass();
        bLEAvailabilityListener.getClass();
        this.TAG = "X408Helper";
        if (!str.contentEquals(SpecificProperties.KEEPALL_TOPOLOGY_ID)) {
            md.n("Failed requirement.");
            throw null;
        }
        PermissionsManager permissionsManager = this.permissionsManager;
        permissionsManager.getClass();
        InternetTimeReader internetTimeReader = this.internetTimeReader;
        internetTimeReader.getClass();
        this.bleX408Manager = new BLEX408Manager(context, permissionsManager, internetTimeReader);
    }

    public final CallStatus connectToPair(List<? extends BLELightup> devices, OrientedDeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener, final LightupMonitoringListener monitoringListener) {
        devices.getClass();
        deviceConnectionProcessListener.getClass();
        monitoringListener.getClass();
        return this.bleX408Manager.connectPair(devices, deviceConnectionProcessListener, new X408MonitoringListener() { // from class: com.lightup.sdk.device.helpers.X408Helper.connectToPair.1
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                monitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener
            public void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged) {
                orientation.getClass();
                monitoringListener.onBatteryLevel(orientation, percent, plugged);
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

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
            }
        });
    }

    public final CallStatus connectToPair$library(BLEX408Pair pair, OrientedDeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener, final LightupMonitoringListener monitoringListener) {
        pair.getClass();
        deviceConnectionProcessListener.getClass();
        monitoringListener.getClass();
        BLEX408Manager bLEX408Manager = this.bleX408Manager;
        BLELightup leftDevice = pair.getLeftDevice();
        leftDevice.getClass();
        BLELightup rightDevice = pair.getRightDevice();
        rightDevice.getClass();
        return bLEX408Manager.connectPair(CollectionsKt.P(leftDevice, rightDevice), deviceConnectionProcessListener, new X408MonitoringListener() { // from class: com.lightup.sdk.device.helpers.X408Helper.connectToPair.2
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                monitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener
            public void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged) {
                orientation.getClass();
                monitoringListener.onBatteryLevel(orientation, percent, plugged);
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

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
            }
        });
    }

    public final boolean disableAdminMode() {
        return this.bleX408Manager.disableAdminMode();
    }

    public final void disconnect() {
        this.bleX408Manager.disconnectDevices();
    }

    public final boolean enableAdminMode(String adminKey) {
        adminKey.getClass();
        return this.bleX408Manager.enableAdminMode(adminKey);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public String getBoardVersion(PairOrientation orientation) {
        orientation.getClass();
        String boardVersion = this.bleX408Manager.getBoardVersion(orientation);
        boardVersion.getClass();
        return boardVersion;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CreatorProject getCurrentlyPlayingAnimation() {
        return this.bleX408Manager.getCurrentlyPlaying();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public List<CreatorProject> getDeviceAnimations() {
        return this.bleX408Manager.getLocalAnimations$library();
    }

    public final CallStatus getDeviceCallStatus() {
        CallStatus callStatus = this.bleX408Manager.getCallStatus();
        callStatus.getClass();
        return callStatus;
    }

    public final DeviceId getDeviceId(PairOrientation orientation) {
        orientation.getClass();
        return this.bleX408Manager.getDeviceId(orientation);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public DeviceStatus getDeviceStatus() {
        return this.bleX408Manager.getDeviceStatus();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public String getFirmwareVersion(PairOrientation orientation) {
        orientation.getClass();
        String firmwareVersion = this.bleX408Manager.getFirmwareVersion(orientation);
        firmwareVersion.getClass();
        return firmwareVersion;
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public DeviceMode getMode() {
        return this.bleX408Manager.getMode();
    }

    public final boolean isAdminModeEnable() {
        return this.bleX408Manager.isAdminModeEnable();
    }

    public final boolean isConnected(PairOrientation orientation) {
        orientation.getClass();
        return this.bleX408Manager.isConnected(orientation);
    }

    public final boolean isInBootloader(PairOrientation orientation) {
        orientation.getClass();
        return this.bleX408Manager.isInBootloader(orientation);
    }

    public final boolean isReady(PairOrientation orientation) {
        orientation.getClass();
        return this.bleX408Manager.isReady(orientation);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus openDevice(OpenDeviceListener openDeviceListener) {
        openDeviceListener.getClass();
        return this.bleX408Manager.openDevices(openDeviceListener);
    }

    public final CallStatus ping(BLEX408 device, PingDeviceListener pingDeviceListener) {
        device.getClass();
        pingDeviceListener.getClass();
        return this.bleX408Manager.ping(device, pingDeviceListener);
    }

    public final CallStatus pingDevice(BLELightup device, PingDeviceListener pingDeviceListener) {
        pingDeviceListener.getClass();
        CallStatus callStatusPingDevice = this.bleX408Manager.pingDevice(device, pingDeviceListener);
        callStatusPingDevice.getClass();
        return callStatusPingDevice;
    }

    public final CallStatus pingPair(BLEX408Pair pair, PingDeviceListener pingDeviceListener) {
        pair.getClass();
        pingDeviceListener.getClass();
        return this.bleX408Manager.pingPair(pair, pingDeviceListener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean setMode(DeviceMode mode) {
        mode.getClass();
        return this.bleX408Manager.setMode(mode);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus setPowerModeOff(ActionListener listener) {
        listener.getClass();
        return this.bleX408Manager.setPowerModeOff(listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public void setTestFolder(boolean useTestFolder) {
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener) {
        config.getClass();
        listener.getClass();
        return this.bleX408Manager.setWalkingModeConfig(config, listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus startAnimation(String animationId, ActionListener listener) {
        animationId.getClass();
        listener.getClass();
        return this.bleX408Manager.startAnimation(animationId, listener);
    }

    public final CallStatus startDeviceConnectionProcess(DeviceId[] deviceIds, boolean exclude, final LightupMonitoringListener monitoringListener, OrientedDeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener) {
        deviceIds.getClass();
        monitoringListener.getClass();
        deviceConnectionProcessListener.getClass();
        CallStatus callStatusStartDeviceConnectionProcess = this.bleX408Manager.startDeviceConnectionProcess(deviceIds, exclude, new X408MonitoringListener() { // from class: com.lightup.sdk.device.helpers.X408Helper.startDeviceConnectionProcess.2
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                monitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener
            public void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged) {
                orientation.getClass();
                monitoringListener.onBatteryLevel(orientation, percent, plugged);
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

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
            }
        }, deviceConnectionProcessListener);
        callStatusStartDeviceConnectionProcess.getClass();
        return callStatusStartDeviceConnectionProcess;
    }

    @Deprecated
    public final CallStatus startDeviceScanProcess(DeviceScanProcessListener<BLELightup> listener) {
        listener.getClass();
        CallStatus callStatusStartDeviceScanProcess = this.bleX408Manager.startDeviceScanProcess(listener);
        callStatusStartDeviceScanProcess.getClass();
        return callStatusStartDeviceScanProcess;
    }

    public final CallStatus startPairScanProcess(X408PairScanProcessListener listener) {
        listener.getClass();
        return this.bleX408Manager.startPairScanProcess(listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus stopAnimation(ActionListener listener) {
        listener.getClass();
        return this.bleX408Manager.stopAnimation(listener);
    }

    public final void stopDeviceConnectionProcess() {
        this.bleX408Manager.stopDeviceConnectionProcess();
    }

    public final void stopScan() {
        this.bleX408Manager.stopScan();
    }

    public final CallStatus twin(List<? extends BLELightup> devices, ActionListener listener) {
        devices.getClass();
        listener.getClass();
        return this.bleX408Manager.twin(devices, listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus updateAnimations(boolean fetchFromCloud, DataUploadListener listener) {
        listener.getClass();
        return this.bleX408Manager.updateAnimations(listener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public CallStatus updateDevice(UpdateDeviceListener updateDeviceListener) {
        updateDeviceListener.getClass();
        return this.bleX408Manager.updateDevices(updateDeviceListener);
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean isConnected() {
        return this.bleX408Manager.isConnected();
    }

    @Override // com.lightup.sdk.device.helpers.LightupHelperInterface
    public boolean isReady() {
        return this.bleX408Manager.isReady();
    }

    public final boolean isConnected(BLEX408 device) {
        device.getClass();
        return this.bleX408Manager.isConnected(device);
    }

    public final boolean isReady(BLEX408 device) {
        device.getClass();
        return this.bleX408Manager.isReady(device);
    }

    public final CallStatus startDeviceConnectionProcess(final LightupMonitoringListener monitoringListener, OrientedDeviceConnectionProcessListener<BLELightup> deviceConnectionProcessListener) {
        monitoringListener.getClass();
        deviceConnectionProcessListener.getClass();
        CallStatus callStatusStartDeviceConnectionProcess = this.bleX408Manager.startDeviceConnectionProcess(new X408MonitoringListener() { // from class: com.lightup.sdk.device.helpers.X408Helper.startDeviceConnectionProcess.1
            @Override // com.lightup.sdk.device.features.process.monitoring.VuittonMonitoringListener
            public void onAnimationPlaying() {
                monitoringListener.onAnimationPlaying();
            }

            @Override // com.lightup.sdk.device.features.process.monitoring.X408MonitoringListener
            public void onBatteryLevel(PairOrientation orientation, int percent, boolean plugged) {
                orientation.getClass();
                monitoringListener.onBatteryLevel(orientation, percent, plugged);
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

            @Override // com.lightup.sdk.device.features.process.monitoring.DeviceMonitoringListener
            public void onBatteryLevel(int percent, boolean plugged) {
            }
        }, deviceConnectionProcessListener);
        callStatusStartDeviceConnectionProcess.getClass();
        return callStatusStartDeviceConnectionProcess;
    }
}
