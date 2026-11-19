package com.lp.ble.statistic;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BleStatistic {
    public static String a(long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timestamp", j2);
            return jSONObject.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
