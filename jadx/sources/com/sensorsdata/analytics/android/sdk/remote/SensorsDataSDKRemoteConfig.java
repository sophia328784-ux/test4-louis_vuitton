package com.sensorsdata.analytics.android.sdk.remote;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import defpackage.a;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SensorsDataSDKRemoteConfig {
    static final int REMOTE_EVENT_TYPE_NO_USE = -1;
    private int effectMode;
    private JSONArray eventBlacklist;
    private int mAutoTrackEventType;
    private SecreteKey mSecretKey;
    private String newVersion;
    private String oldVersion;
    private boolean disableDebugMode = false;
    private boolean disableSDK = false;
    private int autoTrackMode = -1;

    public int getAutoTrackEventType() {
        return this.mAutoTrackEventType;
    }

    public int getAutoTrackMode() {
        return this.autoTrackMode;
    }

    public int getEffectMode() {
        return this.effectMode;
    }

    public JSONArray getEventBlacklist() {
        return this.eventBlacklist;
    }

    public String getNewVersion() {
        return this.newVersion;
    }

    public String getOldVersion() {
        return this.oldVersion;
    }

    public SecreteKey getSecretKey() {
        return this.mSecretKey;
    }

    public boolean isAutoTrackEventTypeIgnored(int i2) {
        int i3 = this.autoTrackMode;
        if (i3 == -1) {
            return false;
        }
        if (i3 == 0) {
            return true;
        }
        int i4 = this.mAutoTrackEventType;
        return (i2 | i4) != i4;
    }

    public boolean isDisableDebugMode() {
        return this.disableDebugMode;
    }

    public boolean isDisableSDK() {
        return this.disableSDK;
    }

    public void setAutoTrackMode(int i2) {
        this.autoTrackMode = i2;
        if (i2 == -1 || i2 == 0) {
            this.mAutoTrackEventType = 0;
            return;
        }
        if ((i2 & 1) == 1) {
            this.mAutoTrackEventType |= 1;
        }
        if ((i2 & 2) == 2) {
            this.mAutoTrackEventType |= 2;
        }
        if ((i2 & 4) == 4) {
            this.mAutoTrackEventType |= 4;
        }
        if ((i2 & 8) == 8) {
            this.mAutoTrackEventType |= 8;
        }
    }

    public void setDisableDebugMode(boolean z) {
        this.disableDebugMode = z;
    }

    public void setDisableSDK(boolean z) {
        this.disableSDK = z;
    }

    public void setEffectMode(int i2) {
        this.effectMode = i2;
    }

    public void setEventBlacklist(JSONArray jSONArray) {
        this.eventBlacklist = jSONArray;
    }

    public void setNewVersion(String str) {
        this.newVersion = str;
    }

    public void setOldVersion(String str) {
        this.oldVersion = str;
    }

    public void setSecretKey(SecreteKey secreteKey) {
        this.mSecretKey = secreteKey;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("v", this.oldVersion);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("disableDebugMode", this.disableDebugMode);
            jSONObject2.put("autoTrackMode", this.autoTrackMode);
            jSONObject2.put("disableSDK", this.disableSDK);
            jSONObject2.put("event_blacklist", this.eventBlacklist);
            jSONObject2.put("nv", this.newVersion);
            jSONObject2.put("effect_mode", this.effectMode);
            jSONObject.put("configs", jSONObject2);
            return jSONObject;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return jSONObject;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{ v=");
        sb.append(this.oldVersion);
        sb.append(", disableDebugMode=");
        sb.append(this.disableDebugMode);
        sb.append(", disableSDK=");
        sb.append(this.disableSDK);
        sb.append(", autoTrackMode=");
        sb.append(this.autoTrackMode);
        sb.append(", event_blacklist=");
        sb.append(this.eventBlacklist);
        sb.append(", nv=");
        sb.append(this.newVersion);
        sb.append(", effect_mode=");
        return a.i(this.effectMode, "}", sb);
    }
}
