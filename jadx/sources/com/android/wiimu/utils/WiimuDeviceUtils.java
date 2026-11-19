package com.android.wiimu.utils;

import b.c;
import b.e;
import com.android.wiimu.model.WiimuPendingMask;
import com.android.wiimu.model.WiimuPendingSlave;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.agent.Language;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;

/* JADX INFO: loaded from: classes2.dex */
public class WiimuDeviceUtils {
    public static c convertDeviceItem(Device device) {
        c cVar = new c();
        try {
            DeviceIdentity deviceIdentity = device.f78444a;
            cVar.f20676b = deviceIdentity.f78458a.toString();
            String string = deviceIdentity.toString();
            if (string.contains("Descriptor")) {
                cVar.f20678e.f20682b = new URL(string.substring(string.indexOf("Descriptor") + 11)).getHost();
            }
        } catch (Throwable unused) {
        }
        return cVar;
    }

    public static e getMasterDeviceStatus(String str) {
        e eVar = new e();
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("uuid")) {
                    jSONObject.getString("uuid");
                }
                if (jSONObject.has("apcli0")) {
                    eVar.f20682b = jSONObject.getString("apcli0");
                }
                if (jSONObject.has("ssid")) {
                    eVar.f20683c = jSONObject.getString("ssid");
                }
                if (jSONObject.has("hideSSID")) {
                    jSONObject.getString("hideSSID");
                }
                if (jSONObject.has("upnp_uuid")) {
                    jSONObject.getString("upnp_uuid");
                }
                if (jSONObject.has("GroupName")) {
                    jSONObject.getString("GroupName");
                }
                if (jSONObject.has("project")) {
                    jSONObject.getString("project");
                }
                if (jSONObject.has("mcu_ver")) {
                    jSONObject.getString("mcu_ver");
                }
                if (jSONObject.has("mcu_ver_new")) {
                    jSONObject.getString("mcu_ver_new");
                }
                if (jSONObject.has("Release")) {
                    jSONObject.getString("Release");
                }
                if (jSONObject.has("build")) {
                    jSONObject.getString("build");
                }
                if (jSONObject.has("VersionUpdate")) {
                    jSONObject.getString("VersionUpdate");
                }
                if (jSONObject.has("upnp_version")) {
                    eVar.f20685f = jSONObject.getString("upnp_version");
                }
                if (jSONObject.has("new_version")) {
                    eVar.d = jSONObject.getString("new_version");
                }
                if (jSONObject.has("NewVer")) {
                    eVar.d = jSONObject.getString("NewVer");
                }
                if (jSONObject.has("DeviceName")) {
                    jSONObject.getString("DeviceName");
                }
                if (jSONObject.has("hardware")) {
                    jSONObject.getString("hardware");
                }
                if (jSONObject.has("firmware")) {
                    jSONObject.getString("firmware");
                }
                if (jSONObject.has("WifiChannel")) {
                    jSONObject.getString("WifiChannel");
                }
                if (jSONObject.has("eth2")) {
                    jSONObject.getString("eth2");
                }
                if (jSONObject.has("internet")) {
                    jSONObject.getInt("internet");
                }
                if (jSONObject.has("netstat")) {
                    jSONObject.getInt("netstat");
                }
                if (jSONObject.has("language")) {
                    jSONObject.getString("language");
                }
                if (jSONObject.has(Language.TYPE)) {
                    ByteIntConverter.hexToLong(jSONObject.getString(Language.TYPE));
                }
                if (jSONObject.has("Release")) {
                    jSONObject.getString("Release");
                }
                if (jSONObject.has("RSSI")) {
                    jSONObject.getString("RSSI");
                }
                if (jSONObject.has("securemode")) {
                    eVar.g = jSONObject.getString("securemode");
                }
                if (!eVar.g.equals(ContentTree.ROOT_ID) && jSONObject.has("psk")) {
                    jSONObject.getString("psk");
                }
                if (jSONObject.has("uart_pass_port")) {
                    Integer.parseInt(jSONObject.getString("uart_pass_port"));
                }
                if (jSONObject.has("communication_port")) {
                    Integer.parseInt(jSONObject.getString("communication_port"));
                }
                if (jSONObject.has("streams")) {
                    ByteIntConverter.hexToLong(jSONObject.getString("streams"));
                }
                if (jSONObject.has("streams_all")) {
                    new StringBuffer(Long.toBinaryString((int) ByteIntConverter.hexToLong(jSONObject.getString("streams_all")))).reverse().getClass();
                }
                if (jSONObject.has("external")) {
                    ByteIntConverter.hexToLong(jSONObject.getString("external"));
                }
                if (jSONObject.has("preset_key")) {
                    jSONObject.getInt("preset_key");
                }
                if (jSONObject.has("plm_support")) {
                    ByteIntConverter.hexToLong(jSONObject.getString("plm_support"));
                }
                if (jSONObject.has("usb")) {
                    jSONObject.getString("usb");
                }
                if (jSONObject.has("capability")) {
                    ByteIntConverter.hexToLong(jSONObject.getString("capability"));
                }
                if (jSONObject.has("cap1")) {
                    ByteIntConverter.hexToLong(jSONObject.getString("cap1"));
                }
                if (jSONObject.has("time")) {
                    jSONObject.getString("time");
                }
                if (jSONObject.has("alexa_ver")) {
                    jSONObject.getString("alexa_ver");
                }
                if (jSONObject.has("iheartradio_new")) {
                    jSONObject.getString("iheartradio_new");
                }
                if (jSONObject.has("tvs_ver")) {
                    jSONObject.getString("tvs_ver");
                }
                if (jSONObject.has("dueros_ver")) {
                    jSONObject.getString("dueros_ver");
                }
                if (jSONObject.has("auth")) {
                    jSONObject.getString("auth");
                }
                if (jSONObject.has("encry")) {
                    jSONObject.getString("encry");
                }
                if (jSONObject.has("region")) {
                    jSONObject.getString("region");
                }
                if (jSONObject.has("date")) {
                    jSONObject.getString("date");
                }
                if (jSONObject.has("tz")) {
                    jSONObject.getInt("tz");
                }
                if (jSONObject.has("tz2")) {
                    jSONObject.getInt("tz2");
                }
                if (jSONObject.has("security")) {
                    eVar.f20684e = jSONObject.getString("security");
                }
                if (jSONObject.has("device_status")) {
                    jSONObject.getInt("device_status");
                }
                if (jSONObject.has("AlexaStatus")) {
                    jSONObject.getInt("AlexaStatus");
                }
                if (jSONObject.has("IotStatus")) {
                    jSONObject.getInt("IotStatus");
                }
                if (jSONObject.has("MAC")) {
                    jSONObject.getString("MAC");
                    return eVar;
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return eVar;
    }

    public static List<c> getSlaveDevices(String str) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("slave_list") && (jSONArray = jSONObject.getJSONArray("slave_list")) != null && jSONArray.length() != 0) {
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        c cVar = new c();
                        e eVar = new e();
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2.has("uuid")) {
                            jSONObject2.getString("uuid");
                        }
                        if (jSONObject2.has("ip")) {
                            eVar.f20682b = jSONObject2.getString("ip");
                        }
                        if (jSONObject2.has("ssid")) {
                            eVar.f20683c = jSONObject2.getString("ssid");
                        }
                        if (jSONObject2.has("name")) {
                            jSONObject2.getString("name");
                        }
                        if (jSONObject2.has("version")) {
                            jSONObject2.getString("version");
                        }
                        if (jSONObject2.has(WiimuPendingMask.Mask)) {
                            if (jSONObject2.getString(WiimuPendingMask.Mask).equals(ContentTree.ROOT_ID)) {
                                cVar.d = WiimuPendingMask.Unmask;
                            } else {
                                cVar.d = WiimuPendingMask.Mask;
                            }
                        }
                        cVar.f20677c = WiimuPendingSlave.Slave;
                        cVar.f20678e = eVar;
                        arrayList.add(cVar);
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static boolean isMediaRenderDevice(Device device) {
        if (device == null) {
            return false;
        }
        try {
            return device.f78446c.f78509b.toUpperCase().equals("MediaRenderer".toUpperCase());
        } catch (Exception unused) {
        }
    }

    public static boolean isMediaServerDevice(Device device) {
        if (device == null) {
            return false;
        }
        try {
            return device.f78446c.f78509b.toUpperCase().equals("MediaServer".toUpperCase());
        } catch (Exception unused) {
        }
    }

    public static String makeSSIDNoneQuoted(String str) {
        if (str != null) {
            return str.replace("\"", "").trim();
        }
        return null;
    }
}
