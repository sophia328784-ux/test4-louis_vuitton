package com.linkplay.core.utils;

import android.text.TextUtils;
import com.android.wiimu.model.WiimuPendingMask;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.core.status.LPPendingMask;
import com.linkplay.core.status.LPPendingSlave;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceUtils {
    public static String UpnpUUID2UUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() <= 24) {
            return str;
        }
        if (!str.toUpperCase().startsWith("UUID:")) {
            return str.substring(0, 24);
        }
        String strReplace = str.toUpperCase().replace("UUID:", "").replace("-", "");
        return strReplace.substring(0, 8) + strReplace.substring(8, 12) + strReplace.substring(12, 16) + strReplace.substring(16, 20) + strReplace.substring(20, 24);
    }

    public static LPDevice convert2LPDevice(Device device) {
        LPDevice lPDevice = new LPDevice();
        try {
            DeviceIdentity deviceIdentity = device.f78444a;
            lPDevice.setUpnpUUID(deviceIdentity.f78458a.toString());
            String string = deviceIdentity.toString();
            if (string.contains("Descriptor")) {
                lPDevice.setIp(new URL(string.substring(string.indexOf("Descriptor") + 11)).getHost());
            }
        } catch (Throwable unused) {
        }
        return lPDevice;
    }

    public static int getRSSIDB(String str) {
        if (str.isEmpty()) {
            return 0;
        }
        int i2 = Integer.parseInt(str);
        if (i2 >= -50) {
            return 100;
        }
        if (i2 >= -80) {
            return (((i2 + 80) * 26) / 10) + 24;
        }
        if (i2 >= -90) {
            return ((i2 + 90) * 26) / 10;
        }
        return 0;
    }

    public static List<LPDevice> getSlaveDevices(String str) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("slave_list") && (jSONArray = jSONObject.getJSONArray("slave_list")) != null && jSONArray.length() != 0) {
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String string = jSONObject2.has("uuid") ? jSONObject2.getString("uuid") : "";
                        LPDevice lPDevice = TextUtils.isEmpty(string) ? new LPDevice() : LPDeviceManager.getInstance().deviceForID(uuid2UpnpUUID(string));
                        if (lPDevice == null) {
                            lPDevice = new LPDevice();
                        }
                        LPDeviceStatus deviceStatus = lPDevice.getDeviceStatus();
                        deviceStatus.setUUID(UpnpUUID2UUID(string));
                        deviceStatus.setUpnpUUID(uuid2UpnpUUID(string));
                        lPDevice.setUpnpUUID(deviceStatus.getUpnpUUID());
                        if (jSONObject2.has("ip")) {
                            deviceStatus.setIP(jSONObject2.getString("ip"));
                        }
                        if (jSONObject2.has("ssid")) {
                            deviceStatus.setSSID(jSONObject2.getString("ssid"));
                        }
                        if (jSONObject2.has("name")) {
                            deviceStatus.setFriendlyName(jSONObject2.getString("name"));
                        }
                        if (jSONObject2.has("version")) {
                            deviceStatus.setVersion(jSONObject2.getString("version"));
                        }
                        if (jSONObject2.has(WiimuPendingMask.Mask)) {
                            deviceStatus.setPendMask(LPPendingMask.byOrdinal(jSONObject2.getString(WiimuPendingMask.Mask)));
                        }
                        deviceStatus.setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
                        arrayList.add(lPDevice);
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public static boolean isA98(LPDevice lPDevice) {
        return ((TextUtils.equals(lPDevice.getDeviceStatus().getHardware(), "A28") || TextUtils.equals(lPDevice.getDeviceStatus().getHardware(), "A31")) && TextUtils.isEmpty(lPDevice.getDeviceStatus().getWmrm_version())) ? false : true;
    }

    public static String uuid2UpnpUUID(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() != 24) {
            return str;
        }
        String strSubstring = str.substring(0, 8);
        String strSubstring2 = str.substring(8, 12);
        String strSubstring3 = str.substring(12, 16);
        String strSubstring4 = str.substring(16, 20);
        String strSubstring5 = str.substring(20, 24);
        StringBuilder sbS = fc.s("uuid:", strSubstring, "-", strSubstring2, "-");
        cj.C(sbS, strSubstring3, "-", strSubstring4, "-");
        return n00.r(strSubstring5, strSubstring, sbS);
    }
}
