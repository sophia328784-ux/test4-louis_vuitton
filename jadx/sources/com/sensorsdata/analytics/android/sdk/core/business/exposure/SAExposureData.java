package com.sensorsdata.analytics.android.sdk.core.business.exposure;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import defpackage.n00;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SAExposureData {
    private String event;
    private SAExposureConfig exposureConfig;
    private final String exposureIdentifier;
    private SAExposureListener exposureListener;
    private JSONObject properties;

    public SAExposureData(String str, JSONObject jSONObject, String str2, SAExposureConfig sAExposureConfig) {
        this.event = str;
        try {
            this.properties = JSONUtils.cloneJsonObject(jSONObject);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        this.exposureIdentifier = str2;
        this.exposureConfig = sAExposureConfig;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            SAExposureData sAExposureData = (SAExposureData) obj;
            if (this.exposureConfig.equals(sAExposureData.exposureConfig) && this.properties.toString().equals(sAExposureData.properties.toString()) && this.event.equals(sAExposureData.event) && this.exposureIdentifier.equals(sAExposureData.exposureIdentifier)) {
                return true;
            }
        }
        return false;
    }

    public String getEvent() {
        return this.event;
    }

    public SAExposureConfig getExposureConfig() {
        return this.exposureConfig;
    }

    public SAExposureListener getExposureListener() {
        return this.exposureListener;
    }

    public String getIdentifier() {
        return this.exposureIdentifier;
    }

    public JSONObject getProperties() {
        return this.properties;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setExposureConfig(SAExposureConfig sAExposureConfig) {
        this.exposureConfig = sAExposureConfig;
    }

    public void setExposureListener(SAExposureListener sAExposureListener) {
        this.exposureListener = sAExposureListener;
    }

    public void setProperties(JSONObject jSONObject) {
        try {
            this.properties = JSONUtils.cloneJsonObject(jSONObject);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SAExposureData{exposureConfig=");
        sb.append(this.exposureConfig);
        sb.append(", properties=");
        sb.append(this.properties);
        sb.append(", event='");
        sb.append(this.event);
        sb.append("', exposureIdentifier='");
        return n00.r(this.exposureIdentifier, "'}", sb);
    }

    public SAExposureData(String str, JSONObject jSONObject) {
        this(str, jSONObject, null, null);
    }

    public SAExposureData(String str, String str2) {
        this(str, null, str2, null);
    }

    public SAExposureData(String str, JSONObject jSONObject, String str2) {
        this(str, jSONObject, str2, null);
    }

    public SAExposureData(String str, JSONObject jSONObject, SAExposureConfig sAExposureConfig) {
        this(str, jSONObject, null, sAExposureConfig);
    }

    public SAExposureData(String str) {
        this(str, null, null, null);
    }
}
