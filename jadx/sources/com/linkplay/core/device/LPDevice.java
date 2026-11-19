package com.linkplay.core.device;

import com.linkplay.alarm.LPDeviceAlarm;
import com.linkplay.core.model.LPDeviceInfo;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.lpmdpkit.bean.DeviceStreamServices;
import com.linkplay.mediainfo.LPMediaInfo;
import com.linkplay.preset.LPDevicePreset;
import com.linkplay.timer.LPDeviceTimer;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPDevice implements Serializable {
    private String upnpUUID = "";
    private String ip = "";
    private boolean isCheckDevice = false;
    private ILPDevicePlayer player = null;
    private LPDeviceStatus deviceStatus = new LPDeviceStatus();
    private LPDeviceInfo deviceInfo = new LPDeviceInfo();
    private LPMediaInfo mediaInfo = new LPMediaInfo();
    private LPDevicePreset devicePreset = null;
    private LPDeviceAlarm deviceAlarm = null;
    private LPDeviceTimer deviceTimer = null;
    private LPDeviceSettings deviceSettings = null;
    private LPDeviceSpotifySettings deviceSpotifySettings = null;
    private LPPassthroughViaHTTP viaHTTP = null;
    private DeviceStreamServices deviceStreamServices = null;

    public LPDeviceAlarm getDeviceAlarm() {
        if (this.deviceAlarm == null) {
            this.deviceAlarm = new LPDeviceAlarm(this);
        }
        return this.deviceAlarm;
    }

    public LPDeviceInfo getDeviceInfo() {
        if (this.deviceInfo == null) {
            this.deviceInfo = new LPDeviceInfo();
        }
        return this.deviceInfo;
    }

    public LPDevicePreset getDevicePreset() {
        if (this.devicePreset == null) {
            this.devicePreset = new LPDevicePreset(this);
        }
        return this.devicePreset;
    }

    public LPDeviceSettings getDeviceSettings() {
        if (this.deviceStatus == null) {
            this.deviceStatus = new LPDeviceStatus();
        }
        if (this.deviceSettings == null) {
            this.deviceSettings = new LPDeviceSettingsImpl(this.deviceStatus.getUpnpUUID());
        }
        return this.deviceSettings;
    }

    public LPDeviceSpotifySettings getDeviceSpotifySettings() {
        if (this.deviceStatus == null) {
            this.deviceStatus = new LPDeviceStatus();
        }
        if (this.deviceSpotifySettings == null) {
            this.deviceSpotifySettings = new LPDeviceSpotifySettingsImpl(this.deviceStatus.getUpnpUUID());
        }
        return this.deviceSpotifySettings;
    }

    public LPDeviceStatus getDeviceStatus() {
        if (this.deviceStatus == null) {
            this.deviceStatus = new LPDeviceStatus();
        }
        return this.deviceStatus;
    }

    public DeviceStreamServices getDeviceStreamServices() {
        return this.deviceStreamServices;
    }

    public LPDeviceTimer getDeviceTimer() {
        if (this.deviceTimer == null) {
            this.deviceTimer = new LPDeviceTimer(this);
        }
        return this.deviceTimer;
    }

    public String getIp() {
        return this.ip;
    }

    public LPMediaInfo getMediaInfo() {
        if (this.mediaInfo == null) {
            this.mediaInfo = new LPMediaInfo();
        }
        return this.mediaInfo;
    }

    public LPPassthroughViaHTTP getPassthroughViaHTTP() {
        if (this.deviceStatus == null) {
            this.deviceStatus = new LPDeviceStatus();
        }
        if (this.viaHTTP == null) {
            this.viaHTTP = new LPPassthroughViaHTTPImpl(this.deviceStatus.getUpnpUUID());
        }
        return this.viaHTTP;
    }

    public ILPDevicePlayer getPlayer() {
        if (this.deviceStatus == null) {
            this.deviceStatus = new LPDeviceStatus();
        }
        if (this.player == null) {
            this.player = new LPDevicePlayerImpl(this.deviceStatus.getUpnpUUID());
        }
        return this.player;
    }

    public String getUpnpUUID() {
        return this.upnpUUID;
    }

    public boolean isCheckDevice() {
        return this.isCheckDevice;
    }

    public void setCheckDevice(boolean z) {
        this.isCheckDevice = z;
    }

    public void setDeviceStreamServices(DeviceStreamServices deviceStreamServices) {
        this.deviceStreamServices = deviceStreamServices;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setUpnpUUID(String str) {
        this.upnpUUID = str;
    }

    public String toString() {
        LPDeviceStatus lPDeviceStatus = this.deviceStatus;
        return lPDeviceStatus != null ? lPDeviceStatus.toString() : "";
    }
}
