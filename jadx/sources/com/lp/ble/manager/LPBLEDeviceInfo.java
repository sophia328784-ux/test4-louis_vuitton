package com.lp.ble.manager;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.lp.ble.model.BLEDevSetting;
import com.lp.ble.model.BLEHWInfo;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPBLEDeviceInfo implements Serializable {
    private CommonInfo commonInfo;
    private BLEDevSetting devSetting;
    private BLEHWInfo hwInfo;

    public class CommonInfo implements Serializable {
        private String name = "";
        private String uuid = "";
        private String BT_MAC = "";
        private String security_version = "";
        private String hotpotState = "";
        private String wifiMode = "";
        private String btMode = "";
        private int battery = 0;
        private int charge_status = 0;
        private String protocolVersion = "";
        private String bleVersion = "";
        private String firmware = "";
        private String bleActiveStatus = "";
        private String bt_name = "";
        private String sn = "";
        private boolean wifi_5G = false;
        private String userName = "";
        private int first_oobe = -1;
        private String audioOutputModeVer = "";
        private String audioInputModeVer = "";
        private String deviceSettingVer = "";

        public CommonInfo() {
        }

        public String getAudioInputModeVer() {
            return TextUtils.isEmpty(this.audioInputModeVer) ? "" : this.audioInputModeVer;
        }

        public String getAudioOutputModeVer() {
            return TextUtils.isEmpty(this.audioOutputModeVer) ? "" : this.audioOutputModeVer;
        }

        public String getBT_MAC() {
            return this.BT_MAC;
        }

        public int getBattery() {
            return this.battery;
        }

        public String getBleActiveStatus() {
            return this.bleActiveStatus;
        }

        public String getBleVersion() {
            return this.bleVersion;
        }

        public String getBtMode() {
            return this.btMode;
        }

        public String getBt_name() {
            return this.bt_name;
        }

        public int getCharge_status() {
            return this.charge_status;
        }

        public String getDeviceSettingVer() {
            return TextUtils.isEmpty(this.deviceSettingVer) ? "" : this.deviceSettingVer;
        }

        public String getFirmware() {
            return this.firmware;
        }

        public int getFirst_oobe() {
            return this.first_oobe;
        }

        public String getHotpotState() {
            return this.hotpotState;
        }

        public String getName() {
            return this.name;
        }

        public String getProtocolVersion() {
            return this.protocolVersion;
        }

        public String getSecurity_version() {
            return this.security_version;
        }

        public String getSn() {
            return this.sn;
        }

        public String getUserName() {
            return this.userName;
        }

        public String getUuid() {
            return this.uuid;
        }

        public String getWifiMode() {
            return this.wifiMode;
        }

        public boolean isWifi_5G() {
            return this.wifi_5G;
        }

        public void setBT_MAC(String str) {
            this.BT_MAC = str;
        }

        public void setBattery(int i2) {
            this.battery = i2;
        }

        public void setBleActiveStatus(String str) {
            this.bleActiveStatus = str;
        }

        public void setBleVersion(String str) {
            this.bleVersion = str;
        }

        public void setBtMode(String str) {
            this.btMode = str;
        }

        public void setBt_name(String str) {
            this.bt_name = str;
        }

        public void setCharge_status(int i2) {
            this.charge_status = i2;
        }

        public void setFirmware(String str) {
            this.firmware = str;
        }

        public void setFirst_oobe(int i2) {
            this.first_oobe = i2;
        }

        public void setHotpotState(String str) {
            this.hotpotState = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setProtocolVersion(String str) {
            this.protocolVersion = str;
        }

        public void setSecurity_version(String str) {
            this.security_version = str;
        }

        public void setSn(String str) {
            this.sn = str;
        }

        public void setUserName(String str) {
            this.userName = str;
        }

        public void setUuid(String str) {
            this.uuid = str;
        }

        public void setWifiMode(String str) {
            this.wifiMode = str;
        }

        public void setWifi_5G(boolean z) {
            this.wifi_5G = z;
        }
    }

    public CommonInfo getCommonInfo() {
        return this.commonInfo;
    }

    public BLEDevSetting getDevSetting() {
        return this.devSetting;
    }

    public BLEHWInfo getHwInfo() {
        return this.hwInfo;
    }

    public void setCommonInfo(CommonInfo commonInfo) {
        this.commonInfo = commonInfo;
    }

    public void setDevSetting(BLEDevSetting bLEDevSetting) {
        this.devSetting = bLEDevSetting;
    }

    public void setHwInfo(BLEHWInfo bLEHWInfo) {
        this.hwInfo = bLEHWInfo;
    }

    public String toString() {
        return new Gson().toJson(this);
    }
}
