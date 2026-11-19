package com.linkplay.ota2.model;

import defpackage.tr;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OTAStatus {
    public static final int MV_UP_STATUS_COMPLETE = 6;
    public static final int MV_UP_STATUS_DOWNLOAD_FAILED = 2;
    public static final int MV_UP_STATUS_DOWNLOAD_START = 1;
    public static final int MV_UP_STATUS_NOT_IN_OTA = 8;
    public static final int MV_UP_STATUS_UNKNOWN = 0;
    public static final int MV_UP_STATUS_WRITE_FAILED = 5;
    public static final int MV_UP_STATUS_WRITE_FINISH = 4;
    public static final int MV_UP_STATUS_WRITE_START = 3;
    private int progress;
    private int status;
    private int downloadPercent = 0;
    private int updatePercent = 0;
    private int rebootPercent = 0;
    public long remainTime = -1;

    public OTAStatus(int i2, int i3) {
        this.status = i2;
        this.progress = i3;
    }

    public static OTAStatus convert(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("status") && jSONObject.has("progress")) {
                return new OTAStatus(jSONObject.getInt("status"), jSONObject.getInt("progress"));
            }
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public int getDownloadPercent() {
        return this.downloadPercent;
    }

    public int getProgress() {
        return this.progress;
    }

    public int getRebootPercent() {
        return this.rebootPercent;
    }

    public long getRemainTime() {
        return this.remainTime;
    }

    public int getStatus() {
        return this.status;
    }

    public int getUpdatePercent() {
        return this.updatePercent;
    }

    public void setDownloadPercent(int i2) {
        this.downloadPercent = i2;
    }

    public void setProgress(int i2) {
        this.progress = i2;
    }

    public void setRebootPercent(int i2) {
        this.rebootPercent = i2;
    }

    public void setRemainTime(long j2) {
        this.remainTime = j2;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setUpdatePercent(int i2) {
        this.updatePercent = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("OTAStatus{status=");
        sb.append(this.status);
        sb.append(", progress=");
        sb.append(this.progress);
        sb.append(", downloadPercent=");
        sb.append(this.downloadPercent);
        sb.append(", updatePercent=");
        sb.append(this.updatePercent);
        sb.append(", rebootPercent=");
        return tr.k(sb, this.rebootPercent, '}');
    }
}
