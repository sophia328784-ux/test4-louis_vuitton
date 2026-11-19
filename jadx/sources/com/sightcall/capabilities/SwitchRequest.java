package com.sightcall.capabilities;

import android.text.TextUtils;
import com.batch.android.s.b;
import com.sightcall.common.DataChannelAction;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SwitchRequest {
    private static SwitchRequest instance;
    String requestId;

    public static String extractUid(String str) {
        try {
            return new JSONObject(str).optString("uid");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static SwitchRequest getInstance() {
        if (instance == null) {
            synchronized (SwitchRequest.class) {
                try {
                    if (instance == null) {
                        instance = new SwitchRequest();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void accept(String str, String str2) {
        String strOptString;
        String strOptString2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str2);
            strOptString = jSONObject.optString(b.a.f24015b);
            try {
                strOptString2 = jSONObject.optString("uid");
            } catch (JSONException e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (JSONException e3) {
            e = e3;
            strOptString = null;
        }
        if (TextUtils.isEmpty(strOptString2) || !strOptString2.equals(str)) {
            return;
        }
        try {
            this.requestId = strOptString;
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("requestId", strOptString);
            DataChannelAction.SWITCH_ACCEPT.send(jSONObject2.toString());
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    public void clear() {
        this.requestId = null;
    }

    public void deny(String str) {
        String strOptString;
        try {
            strOptString = new JSONObject(str).optString(b.a.f24015b);
        } catch (JSONException e2) {
            e2.printStackTrace();
            strOptString = null;
        }
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", strOptString);
            DataChannelAction.SWITCH_CANCEL.send(jSONObject.toString());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }

    public boolean isSameId(String str) {
        String strOptString;
        try {
            strOptString = new JSONObject(str).optString("requestId");
        } catch (JSONException e2) {
            e2.printStackTrace();
            strOptString = null;
        }
        String str2 = this.requestId;
        return str2 != null && str2.equals(strOptString);
    }
}
