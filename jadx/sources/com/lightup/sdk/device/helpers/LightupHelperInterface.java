package com.lightup.sdk.device.helpers;

import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.model.WalkingModeConfig;
import com.lightup.sdk.device.model.listeners.UpdateDeviceListener;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&J\n\u0010\f\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H&J\b\u0010\u001a\u001a\u00020\u0019H&J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\u001cH&J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&J\b\u0010\u001e\u001a\u00020\u001fH&J\u0010\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010#\u001a\u00020\b2\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H&J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010\t\u001a\u00020\nH&¨\u0006*À\u0006\u0003"}, d2 = {"Lcom/lightup/sdk/device/helpers/LightupHelperInterface;", "", "isConnected", "", "isReady", "startAnimation", "Lcom/lightup/sdk/device/enums/CallStatus;", "animationId", "", "listener", "Lcom/lightup/sdk/device/features/process/listener/ActionListener;", "stopAnimation", "getCurrentlyPlayingAnimation", "Lcom/lightup/sdk/animation/CreatorProject;", "openDevice", "openDeviceListener", "Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;", "updateDevice", "updateDeviceListener", "Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;", "updateAnimations", "fetchFromCloud", "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;", "setMode", "mode", "Lcom/lightup/sdk/device/enums/DeviceMode;", "getMode", "getDeviceAnimations", "", "setPowerModeOff", "getDeviceStatus", "Lcom/lightup/sdk/device/enums/DeviceStatus;", "getFirmwareVersion", "orientation", "Lcom/lightup/sdk/device/enums/PairOrientation;", "getBoardVersion", "setTestFolder", "", "useTestFolder", "setWalkingModeConfig", "config", "Lcom/lightup/sdk/device/model/WalkingModeConfig;", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LightupHelperInterface {
    String getBoardVersion(PairOrientation orientation);

    CreatorProject getCurrentlyPlayingAnimation();

    List<CreatorProject> getDeviceAnimations();

    DeviceStatus getDeviceStatus();

    String getFirmwareVersion(PairOrientation orientation);

    DeviceMode getMode();

    boolean isConnected();

    boolean isReady();

    CallStatus openDevice(OpenDeviceListener openDeviceListener);

    boolean setMode(DeviceMode mode);

    CallStatus setPowerModeOff(ActionListener listener);

    void setTestFolder(boolean useTestFolder);

    CallStatus setWalkingModeConfig(WalkingModeConfig config, ActionListener listener);

    CallStatus startAnimation(String animationId, ActionListener listener);

    CallStatus stopAnimation(ActionListener listener);

    CallStatus updateAnimations(boolean fetchFromCloud, DataUploadListener listener);

    CallStatus updateDevice(UpdateDeviceListener updateDeviceListener);
}
