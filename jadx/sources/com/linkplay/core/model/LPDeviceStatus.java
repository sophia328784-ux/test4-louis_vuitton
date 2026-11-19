package com.linkplay.core.model;

import android.text.TextUtils;
import com.android.wiimu.utils.ByteIntConverter;
import com.linkplay.core.status.LPPendingMask;
import com.linkplay.core.status.LPPendingSlave;
import com.linkplay.core.utils.LPDeviceUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.linkplay.lpmdpkit.observer.LPNotificationType;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.agent.Language;
import defpackage.n00;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceStatus implements Serializable {
    private int group;
    private int max_volume;
    LPPendingSlave pendSlave;
    int versionUpdate;
    private int volume_control;
    String UUID = "";
    String UpnpUUID = "";
    String IP = "";
    int wifiStrength = 0;
    String MAC = "";
    String SSID = "";
    String friendlyName = "";
    String version = "";
    String hardware = "";
    String firmware = "";
    String language = "";
    int languages = 0;
    String release = "";
    LPPendingMask pendMask = LPPendingMask.LP_PENDING_UNMASK;
    String router = "";
    String alexaVer = "";
    String security = "";
    String securityVersion = "";
    String security_capabilities = "";
    boolean isSecurity3 = false;
    int netstat = 0;
    String build = "";
    int internet = -1;
    String groupName = "";
    String project = "";
    String wifiChannel = "";
    String hideSSID = "";
    String MCUVer = "";
    String MCUNewVer = "";
    String UpnpVersion = "";
    String Eth2 = "";
    String Psk = "`";
    int verUpdateFlag = 0;
    String NewVer = "";
    String slaveList = "";
    int currentVolume = 1;
    String timeStamp = ContentTree.ROOT_ID;
    int external = 0;
    int streams = -100;
    int streamAll = -100;
    String streamAllStr = "";
    int preset_key = 0;
    int uartPassPort = 8899;
    Integer communication_port = null;
    boolean iscommunication = false;
    int plm_support = -100;
    int capability = -100;
    int cap1 = -100;
    int batteryFlag = 0;
    int batteryPercent = 0;
    String usb = "";
    int presetKey = 0;
    String time = "";
    String alexa_ver = "";
    String iheartradio_new = "";
    String tidal_version = "";
    String service_version = "";
    String new_tunein_preset_and_alarm = "";
    String new_iheart_podcast = "";
    String tvs_ver = "";
    String dueros_ver = "";
    String region = "";
    String auth = "";
    String encry = "";
    String date = "";
    int tz = 0;
    int tz2 = 0;
    Double timeZone = null;
    String tz_info_ver = null;
    private String ota_interface_ver = "";
    private int group_prefer = 0;
    private String master_uuid = "";
    public String wmrm_version = "";
    private String status = "";
    private int audio_type_support = -1;
    public DelayedTimer mVolumeDelayedTimer = new DelayedTimer(15000);

    private void parseStatus(String str) {
        try {
            try {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "device status:" + str);
                JSONObject jSONObject = new JSONObject(str);
                this.status = str;
                if (jSONObject.has("uuid")) {
                    setUUID(jSONObject.getString("uuid"));
                } else {
                    setUUID("");
                }
                if (jSONObject.has("apcli0")) {
                    setIP(jSONObject.getString("apcli0"));
                } else {
                    setIP("");
                }
                if (jSONObject.has("ssid")) {
                    setSSID(jSONObject.getString("ssid"));
                } else {
                    setSSID("");
                }
                if (jSONObject.has("GroupName")) {
                    setGroupName(jSONObject.getString("GroupName"));
                } else {
                    setGroupName("");
                }
                if (jSONObject.has("project")) {
                    setProject(jSONObject.getString("project"));
                } else {
                    setProject("");
                }
                if (jSONObject.has("upnp_uuid")) {
                    setUpnpUUID(jSONObject.getString("upnp_uuid"));
                } else {
                    setUpnpUUID("");
                }
                if (jSONObject.has("hideSSID")) {
                    setHideSSID(jSONObject.getString("hideSSID"));
                } else {
                    setHideSSID("");
                }
                if (jSONObject.has("mcu_ver")) {
                    setMCUVer(jSONObject.getString("mcu_ver"));
                } else {
                    setMCUVer("");
                }
                if (jSONObject.has("mcu_ver_new")) {
                    setMCUNewVer(jSONObject.getString("mcu_ver_new"));
                } else {
                    setMCUNewVer("");
                }
                if (jSONObject.has("Release")) {
                    setRelease(jSONObject.getString("Release"));
                } else {
                    setRelease("");
                }
                if (jSONObject.has("build")) {
                    setBuild(jSONObject.getString("build"));
                } else {
                    setBuild("");
                }
                if (jSONObject.has("VersionUpdate")) {
                    setVersionUpdate(jSONObject.getInt("VersionUpdate"));
                } else {
                    setVersionUpdate(0);
                }
                if (jSONObject.has("upnp_version")) {
                    setUpnpVersion(jSONObject.getString("upnp_version"));
                } else {
                    setUpnpVersion("");
                }
                if (jSONObject.has("DeviceName")) {
                    setFriendlyName(jSONObject.getString("DeviceName"));
                }
                if (jSONObject.has("WifiChannel")) {
                    setWifiChannel(jSONObject.getString("WifiChannel"));
                } else {
                    setWifiChannel("");
                }
                if (jSONObject.has("internet")) {
                    setInternet(jSONObject.getInt("internet"));
                } else {
                    setInternet(-1);
                }
                if (jSONObject.has("eth2")) {
                    setEth2(jSONObject.getString("eth2"));
                } else {
                    setEth2("");
                }
                if (jSONObject.has("new_version")) {
                    setNewVer(jSONObject.getString("new_version"));
                } else {
                    setNewVer("");
                }
                if (jSONObject.has("NewVer")) {
                    setNewVer(jSONObject.getString("NewVer"));
                } else {
                    setNewVer("");
                }
                if (jSONObject.has("hardware")) {
                    setHardware(jSONObject.getString("hardware"));
                } else {
                    setHardware("");
                }
                if (jSONObject.has("firmware")) {
                    setFirmware(jSONObject.getString("firmware"));
                } else {
                    setFirmware("");
                }
                if (jSONObject.has("netstat")) {
                    setNetstat(jSONObject.getInt("netstat"));
                } else {
                    setNetstat(0);
                }
                if (jSONObject.has("language")) {
                    setLanguage(jSONObject.getString("language"));
                } else {
                    setLanguage("");
                }
                this.isSecurity3 = false;
                if (jSONObject.has("security_capabilities")) {
                    this.security_capabilities = jSONObject.getString("security_capabilities");
                    try {
                        JSONObject jSONObject2 = new JSONObject(this.security_capabilities);
                        if (jSONObject2.has("aes_ver")) {
                            String string = jSONObject2.getString("aes_ver");
                            if (string.length() > 0 && string.compareTo("1.0") > 0) {
                                this.isSecurity3 = true;
                            }
                        }
                    } catch (JSONException unused) {
                    }
                }
                if (jSONObject.has(Language.TYPE)) {
                    setLanguages((int) ByteIntConverter.hexToLong(jSONObject.getString(Language.TYPE)));
                } else {
                    setLanguages(0);
                }
                if (jSONObject.has("uart_pass_port")) {
                    setUartPassPort(Integer.parseInt(jSONObject.getString("uart_pass_port")));
                } else {
                    setUartPassPort(8899);
                }
                if (jSONObject.has("security")) {
                    setSecurity(jSONObject.getString("security"));
                } else {
                    setSecurity("");
                }
                if (jSONObject.has("security_version")) {
                    setSecurityVersion(jSONObject.getString("security_version"));
                } else {
                    setSecurityVersion("");
                }
                if (jSONObject.has("Release")) {
                    setRelease(jSONObject.getString("Release"));
                } else {
                    setRelease("");
                }
                if (!(jSONObject.has("securemode") ? jSONObject.getString("securemode") : "").equals(ContentTree.ROOT_ID) && jSONObject.has("psk")) {
                    setPsk(jSONObject.getString("psk"));
                } else {
                    setPsk("");
                }
                if (jSONObject.has("MAC")) {
                    setMAC(jSONObject.getString("MAC"));
                } else {
                    setMAC("");
                }
                if (jSONObject.has("alexa_ver")) {
                    setAlexaVer(jSONObject.getString("alexa_ver"));
                } else {
                    setAlexaVer("");
                }
                if (jSONObject.has("preset_key")) {
                    setPresetKey(jSONObject.getInt("preset_key"));
                } else {
                    setPresetKey(0);
                }
                if (jSONObject.has("RSSI")) {
                    setWifiStrength(LPDeviceUtils.getRSSIDB(jSONObject.getString("RSSI")));
                } else {
                    setWifiStrength(0);
                }
                if (jSONObject.has("communication_port")) {
                    setCommunication_port(Integer.valueOf(Integer.parseInt(jSONObject.getString("communication_port"))));
                    setIscommunication(true);
                } else {
                    setCommunication_port(null);
                    setIscommunication(false);
                }
                if (jSONObject.has("streams")) {
                    setStreams((int) ByteIntConverter.hexToLong(jSONObject.getString("streams")));
                } else {
                    setStreams(-100);
                }
                if (jSONObject.has("streams_all")) {
                    setStreamAll((int) ByteIntConverter.hexToLong(jSONObject.getString("streams_all")));
                    setStreamAllStr(new StringBuffer(Long.toBinaryString(getStreamAll())).reverse().toString());
                } else {
                    setStreamAll(-1);
                    setStreamAllStr("");
                }
                if (jSONObject.has("external")) {
                    setExternal((int) ByteIntConverter.hexToLong(jSONObject.getString("external")));
                } else {
                    setExternal(0);
                }
                if (jSONObject.has("preset_key")) {
                    setPreset_key(jSONObject.getInt("preset_key"));
                    if (getPreset_key() == 0) {
                        setPreset_key(6);
                    }
                } else {
                    setPreset_key(6);
                }
                if (jSONObject.has("plm_support")) {
                    setPlm_support((int) ByteIntConverter.hexToLong(jSONObject.getString("plm_support")));
                } else {
                    setPlm_support(-100);
                }
                if (jSONObject.has("usb")) {
                    setUsb(jSONObject.getString("usb"));
                } else {
                    setUsb("");
                }
                if (jSONObject.has("capability")) {
                    setCapability((int) ByteIntConverter.hexToLong(jSONObject.getString("capability")));
                } else {
                    setCapability(-100);
                }
                if (jSONObject.has("cap1")) {
                    setCap1((int) ByteIntConverter.hexToLong(jSONObject.getString("cap1")));
                } else {
                    setCap1(-100);
                }
                if (jSONObject.has("time")) {
                    setTime(jSONObject.getString("time"));
                } else {
                    setTime("");
                }
                if (jSONObject.has("alexa_ver")) {
                    setAlexa_ver(jSONObject.getString("alexa_ver"));
                } else {
                    setAlexa_ver("");
                }
                if (jSONObject.has("iheartradio_new")) {
                    setIheartradio_new(jSONObject.getString("iheartradio_new"));
                } else {
                    setIheartradio_new("");
                }
                if (jSONObject.has("tidal_version")) {
                    setTidal_version(jSONObject.getString("tidal_version"));
                } else {
                    setTidal_version("");
                }
                if (jSONObject.has("service_version")) {
                    setService_version(jSONObject.getString("service_version"));
                } else {
                    setService_version("");
                }
                if (jSONObject.has("new_tunein_preset_and_alarm")) {
                    setNew_tunein_preset_and_alarm(jSONObject.getString("new_tunein_preset_and_alarm"));
                } else {
                    setNew_tunein_preset_and_alarm("");
                }
                if (jSONObject.has("new_iheart_podcast")) {
                    setNew_iheart_podcast(jSONObject.getString("new_iheart_podcast"));
                } else {
                    setNew_tunein_preset_and_alarm("");
                }
                if (jSONObject.has("tvs_ver")) {
                    setTvs_ver(jSONObject.getString("tvs_ver"));
                } else {
                    setTvs_ver("");
                }
                if (jSONObject.has("dueros_ver")) {
                    setDueros_ver(jSONObject.getString("dueros_ver"));
                } else {
                    setDueros_ver("");
                }
                if (jSONObject.has("auth")) {
                    setAuth(jSONObject.getString("auth"));
                } else {
                    setAuth("");
                }
                if (jSONObject.has("encry")) {
                    setEncry(jSONObject.getString("encry"));
                } else {
                    setEncry("");
                }
                if (jSONObject.has("region")) {
                    setRegion(jSONObject.getString("region"));
                } else {
                    setRegion("");
                }
                if (jSONObject.has("date")) {
                    setDate(jSONObject.getString("date"));
                } else {
                    setDate("");
                }
                if (jSONObject.has("tz")) {
                    setTz(jSONObject.getInt("tz"));
                } else {
                    setTz(0);
                }
                if (jSONObject.has("tz2")) {
                    setTz2(jSONObject.getInt("tz2"));
                } else {
                    setTz2(0);
                }
                if (jSONObject.has("group")) {
                    setGroup(jSONObject.getInt("group"));
                } else {
                    setGroup(0);
                }
                if (jSONObject.has("master_uuid")) {
                    setMaster_uuid(jSONObject.getString("master_uuid"));
                } else {
                    setMaster_uuid("");
                }
                if (jSONObject.has("group_prefer")) {
                    setGroup_prefer(jSONObject.getInt("group_prefer"));
                } else {
                    setGroup_prefer(0);
                }
                if (jSONObject.has("TimeZone")) {
                    setTimeZone(Double.valueOf(jSONObject.getDouble("TimeZone")));
                }
                if (jSONObject.has("tz_info_ver")) {
                    setTz_info_ver(jSONObject.getString("tz_info_ver"));
                }
                if (jSONObject.has("wmrm_version")) {
                    setWmrm_version(jSONObject.getString("wmrm_version"));
                }
                if (jSONObject.has("ota_interface_ver")) {
                    setOta_interface_ver(jSONObject.getString("ota_interface_ver"));
                }
                if (jSONObject.has("max_volume")) {
                    setMax_volume(jSONObject.getInt("max_volume"));
                }
                if (jSONObject.has("volume_control")) {
                    setVolume_control(jSONObject.getInt("volume_control"));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused2) {
        }
    }

    public String getAlexaVer() {
        return this.alexaVer;
    }

    public String getAlexa_ver() {
        return this.alexa_ver;
    }

    public int getAudio_type_support() {
        return this.audio_type_support;
    }

    public String getAuth() {
        return this.auth;
    }

    public int getBatteryFlag() {
        return this.batteryFlag;
    }

    public int getBatteryPercent() {
        return this.batteryPercent;
    }

    public String getBuild() {
        return this.build;
    }

    public int getCap1() {
        return this.cap1;
    }

    public int getCapability() {
        return this.capability;
    }

    public Integer getCommunication_port() {
        return this.communication_port;
    }

    public int getCurrentVolume() {
        return this.currentVolume;
    }

    public String getDate() {
        return this.date;
    }

    public String getDueros_ver() {
        return this.dueros_ver;
    }

    public String getEncry() {
        return this.encry;
    }

    public String getEth2() {
        return this.Eth2;
    }

    public int getExternal() {
        return this.external;
    }

    public String getFirmware() {
        return this.firmware;
    }

    public String getFriendlyName() {
        return this.friendlyName;
    }

    public int getGroup() {
        return this.group;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public int getGroup_prefer() {
        return this.group_prefer;
    }

    public String getHardware() {
        return this.hardware;
    }

    public String getIP() {
        return this.IP;
    }

    public String getIheartradio_new() {
        return this.iheartradio_new;
    }

    public String getLanguage() {
        return this.language;
    }

    public int getLanguages() {
        return this.languages;
    }

    public String getMAC() {
        return this.MAC;
    }

    public String getMCUNewVer() {
        return this.MCUNewVer;
    }

    public String getMCUVer() {
        return this.MCUVer;
    }

    public String getMaster_uuid() {
        return this.master_uuid;
    }

    public int getMax_volume() {
        return this.max_volume;
    }

    public int getNetstat() {
        return this.netstat;
    }

    public String getNewVer() {
        return this.NewVer;
    }

    public String getNew_iheart_podcast() {
        return this.new_iheart_podcast;
    }

    public String getNew_tunein_preset_and_alarm() {
        return this.new_tunein_preset_and_alarm;
    }

    public String getOta_interface_ver() {
        return this.ota_interface_ver;
    }

    public LPPendingMask getPendMask() {
        return this.pendMask;
    }

    public LPPendingSlave getPendSlave() {
        return this.pendSlave;
    }

    public int getPlm_support() {
        return this.plm_support;
    }

    public int getPresetKey() {
        return this.presetKey;
    }

    public int getPreset_key() {
        return this.preset_key;
    }

    public String getProject() {
        return this.project;
    }

    public String getPsk() {
        return this.Psk;
    }

    public String getRegion() {
        return this.region;
    }

    public String getRelease() {
        return this.release;
    }

    public String getRouter() {
        return this.router;
    }

    public String getSSID() {
        return this.SSID;
    }

    public String getSecurity() {
        return this.security;
    }

    public String getSecurityVersion() {
        return this.securityVersion;
    }

    public String getService_version() {
        return this.service_version;
    }

    public String getSlaveList() {
        return this.slaveList;
    }

    public String getStatus() {
        return this.status;
    }

    public int getStreamAll() {
        return this.streamAll;
    }

    public String getStreamAllStr() {
        return this.streamAllStr;
    }

    public int getStreams() {
        return this.streams;
    }

    public String getTidal_version() {
        return this.tidal_version;
    }

    public String getTime() {
        return this.time;
    }

    public String getTimeStamp() {
        return this.timeStamp;
    }

    public Double getTimeZone() {
        return this.timeZone;
    }

    public String getTvs_ver() {
        return this.tvs_ver;
    }

    public int getTz() {
        return this.tz;
    }

    public int getTz2() {
        return this.tz2;
    }

    public String getTz_info_ver() {
        return this.tz_info_ver;
    }

    public String getUUID() {
        return this.UUID;
    }

    public int getUartPassPort() {
        return this.uartPassPort;
    }

    public String getUpnpUUID() {
        return this.UpnpUUID;
    }

    public String getUpnpVersion() {
        return this.UpnpVersion;
    }

    public String getUsb() {
        return this.usb;
    }

    public int getVerUpdateFlag() {
        return this.verUpdateFlag;
    }

    public String getVersion() {
        return this.version;
    }

    public int getVersionUpdate() {
        return this.versionUpdate;
    }

    public int getVolume_control() {
        return this.volume_control;
    }

    public String getWifiChannel() {
        return this.wifiChannel;
    }

    public int getWifiStrength() {
        return this.wifiStrength;
    }

    public String getWmrm_version() {
        return this.wmrm_version;
    }

    public boolean hasUpdate() {
        return 1 == this.versionUpdate;
    }

    public boolean hasVersionControl() {
        return !TextUtils.isEmpty(this.service_version) && this.service_version.compareTo("1.0") >= 0;
    }

    public boolean isBuildBackup() {
        return "backup".equals(this.build);
    }

    public boolean isHaveInternet() {
        int i2 = this.internet;
        if (i2 == -1 || i2 == 0) {
            return false;
        }
        return i2 == 1 || i2 == 2;
    }

    public boolean isHideSSID() {
        return TextUtils.equals(this.hideSSID, "1");
    }

    public boolean isIscommunication() {
        return this.iscommunication;
    }

    public boolean isSecurity3() {
        return this.isSecurity3;
    }

    public void setAlexaVer(String str) {
        this.alexaVer = str;
    }

    public void setAlexa_ver(String str) {
        this.alexa_ver = str;
    }

    public void setAudio_type_support(int i2) {
        this.audio_type_support = i2;
    }

    public void setAuth(String str) {
        this.auth = str;
    }

    public void setBatteryFlag(int i2) {
        this.batteryFlag = i2;
    }

    public void setBatteryPercent(int i2, int i3) {
        if (i3 == 0) {
            if (i3 == 0) {
                this.batteryPercent = i3;
            }
        } else {
            this.batteryFlag = i2;
            if (i3 >= 100) {
                this.batteryPercent = 100;
            } else {
                this.batteryPercent = i3;
            }
        }
    }

    public void setBuild(String str) {
        this.build = str;
    }

    public void setCap1(int i2) {
        this.cap1 = i2;
    }

    public void setCapability(int i2) {
        this.capability = i2;
    }

    public void setCommunication_port(Integer num) {
        this.communication_port = num;
    }

    public synchronized void setCurrentVolume(int i2, String str) {
        try {
            int i3 = Integer.parseInt(str);
            int i4 = Integer.parseInt(this.timeStamp);
            if (Math.abs(i4 - i3) > 60000) {
                this.timeStamp = ContentTree.ROOT_ID;
                i4 = Integer.parseInt(ContentTree.ROOT_ID);
            }
            if (this.currentVolume != i2 && (i3 >= i4 || i3 == 0)) {
                this.timeStamp = str;
                this.currentVolume = i2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setDeviceStatus(String str) {
        parseStatus(str);
    }

    public void setDueros_ver(String str) {
        this.dueros_ver = str;
    }

    public void setEncry(String str) {
        this.encry = str;
    }

    public void setEth2(String str) {
        this.Eth2 = str;
    }

    public void setExternal(int i2) {
        this.external = i2;
    }

    public void setFirmware(String str) {
        this.firmware = str;
    }

    public void setFriendlyName(String str) {
        this.friendlyName = str;
    }

    public void setGroup(int i2) {
        this.group = i2;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setGroup_prefer(int i2) {
        this.group_prefer = i2;
    }

    public void setHardware(String str) {
        this.hardware = str;
    }

    public void setHideSSID(String str) {
        this.hideSSID = str;
    }

    public void setIP(String str) {
        this.IP = str;
    }

    public void setIheartradio_new(String str) {
        this.iheartradio_new = str;
    }

    public void setInternet(int i2) {
        int i3 = this.internet;
        this.internet = i2;
        if (i2 != i3) {
            LPDeviceObserverManager.getInstance().notifyInternetStatusObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INTERNET_CHANGE).setUuid(getUpnpUUID()).setPayload("").build());
        }
    }

    public void setIscommunication(boolean z) {
        this.iscommunication = z;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLanguages(int i2) {
        this.languages = i2;
    }

    public void setMAC(String str) {
        this.MAC = str;
    }

    public void setMCUNewVer(String str) {
        this.MCUNewVer = str;
    }

    public void setMCUVer(String str) {
        this.MCUVer = str;
    }

    public void setMaster_uuid(String str) {
        this.master_uuid = str;
    }

    public void setMax_volume(int i2) {
        this.max_volume = i2;
    }

    public void setNetstat(int i2) {
        this.netstat = i2;
    }

    public void setNewVer(String str) {
        this.NewVer = str;
    }

    public void setNew_iheart_podcast(String str) {
        this.new_iheart_podcast = str;
    }

    public void setNew_tunein_preset_and_alarm(String str) {
        this.new_tunein_preset_and_alarm = str;
    }

    public void setOta_interface_ver(String str) {
        this.ota_interface_ver = str;
    }

    public void setPendMask(LPPendingMask lPPendingMask) {
        this.pendMask = lPPendingMask;
    }

    public void setPendSlave(LPPendingSlave lPPendingSlave) {
        this.pendSlave = lPPendingSlave;
    }

    public void setPlm_support(int i2) {
        this.plm_support = i2;
    }

    public void setPresetKey(int i2) {
        this.presetKey = i2;
    }

    public void setPreset_key(int i2) {
        this.preset_key = i2;
    }

    public void setProject(String str) {
        this.project = str;
    }

    public void setPsk(String str) {
        this.Psk = str;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    public void setRelease(String str) {
        this.release = str;
    }

    public void setRouter(String str) {
        this.router = str;
    }

    public void setSSID(String str) {
        this.SSID = str;
    }

    public void setSecurity(String str) {
        this.security = str;
    }

    public void setSecurity3(boolean z) {
        this.isSecurity3 = z;
    }

    public void setSecurityVersion(String str) {
        this.securityVersion = str;
    }

    public void setService_version(String str) {
        this.service_version = str;
    }

    public void setSlaveList(String str) {
        this.slaveList = str;
    }

    public void setStreamAll(int i2) {
        this.streamAll = i2;
    }

    public void setStreamAllStr(String str) {
        this.streamAllStr = str;
    }

    public void setStreams(int i2) {
        this.streams = i2;
    }

    public void setTidal_version(String str) {
        this.tidal_version = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setTimeStamp(String str) {
        this.timeStamp = str;
    }

    public void setTimeZone(Double d) {
        this.timeZone = d;
    }

    public void setTvs_ver(String str) {
        this.tvs_ver = str;
    }

    public void setTz(int i2) {
        this.tz = i2;
    }

    public void setTz2(int i2) {
        this.tz2 = i2;
    }

    public void setTz_info_ver(String str) {
        this.tz_info_ver = str;
    }

    public void setUUID(String str) {
        this.UUID = str;
    }

    public void setUartPassPort(int i2) {
        this.uartPassPort = i2;
    }

    public void setUpnpUUID(String str) {
        this.UpnpUUID = str;
    }

    public void setUpnpVersion(String str) {
        this.UpnpVersion = str;
    }

    public void setUsb(String str) {
        this.usb = str;
    }

    public void setVerUpdateFlag(int i2) {
        this.verUpdateFlag = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setVersionUpdate(int i2) {
        this.versionUpdate = i2;
    }

    public void setVolume_control(int i2) {
        this.volume_control = i2;
    }

    public void setWifiChannel(String str) {
        this.wifiChannel = str;
    }

    public void setWifiStrength(int i2) {
        this.wifiStrength = i2;
    }

    public void setWmrm_version(String str) {
        this.wmrm_version = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LPDevice{UUID=\"");
        sb.append(this.UUID);
        sb.append("\", IP=\"");
        sb.append(this.IP);
        sb.append("\", SSID=\"");
        sb.append(this.SSID);
        sb.append("\", friendlyName=\"");
        return n00.r(this.friendlyName, "\"}", sb);
    }

    public void setBatteryPercent(int i2) {
        this.batteryPercent = i2;
    }

    public void setCurrentVolume(int i2) {
        if (Integer.parseInt(this.UpnpVersion) >= 1000 && this.currentVolume != i2) {
            this.currentVolume = i2;
        }
    }
}
