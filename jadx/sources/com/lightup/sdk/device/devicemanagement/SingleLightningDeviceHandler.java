package com.lightup.sdk.device.devicemanagement;

import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.ble.scanner.listeners.AnimationsDownloadListener;
import com.lightup.sdk.device.ble.scanner.listeners.DataUploadListener;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.enums.CallStatus;
import com.lightup.sdk.device.enums.DeviceMode;
import com.lightup.sdk.device.enums.DeviceStatus;
import com.lightup.sdk.device.features.process.listener.ActionListener;
import com.lightup.sdk.device.model.device.DeviceId;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface SingleLightningDeviceHandler {
    boolean disableAdminMode();

    boolean enableAdminMode(String str);

    CallStatus getAllAnimations(boolean z, AnimationsDownloadListener animationsDownloadListener);

    CreatorProject getCurrentlyPlayingAnimation();

    DeviceId getDeviceId();

    DeviceStatus getDeviceStatus();

    DeviceMode getMode();

    boolean isAdminModeEnable();

    boolean isConnected();

    boolean isInBootloader();

    CallStatus openDevice(OpenDeviceListener openDeviceListener);

    boolean setMode(DeviceMode deviceMode);

    CallStatus setPowerModeOff(ActionListener actionListener);

    CallStatus startAnimation(String str, ActionListener actionListener);

    CallStatus stopAnimation(ActionListener actionListener);

    CallStatus updateAnimations(boolean z, DataUploadListener dataUploadListener);

    CallStatus uploadAnimations(List<CreatorProject> list, DataUploadListener dataUploadListener);
}
