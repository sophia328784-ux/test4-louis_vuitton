package com.linkplay.ota.model;

import com.batch.android.s.b;
import defpackage.fc;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OtaStatus {
    public static final int MV_UP_STATUS_COMPLETE = 6;
    public static final int MV_UP_STATUS_DOWNLOAD_FAILED = 2;
    public static final int MV_UP_STATUS_DOWNLOAD_START = 1;
    public static final int MV_UP_STATUS_NOT_IN_OTA = 8;
    public static final int MV_UP_STATUS_REBOOT = 7;
    public static final int MV_UP_STATUS_UNKNOWN = 0;
    public static final int MV_UP_STATUS_WRITE_FAILED = 5;
    public static final int MV_UP_STATUS_WRITE_FINISH = 4;
    public static final int MV_UP_STATUS_WRITE_START = 3;
    public int cdsize;
    public int count;
    public int csize;
    public int cwsize;
    public int dcount;
    public int dsize;
    public String name;
    public String new_ver;
    public int progress;
    public int status;
    public int tsize;
    public String ver;
    public int wcount;

    public OtaStatus convert(String str) {
        try {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("status")) {
                    this.status = jSONObject.getInt("status");
                }
                if (jSONObject.has(b.a.f24018f)) {
                    this.count = jSONObject.getInt(b.a.f24018f);
                }
                if (jSONObject.has("dcount")) {
                    this.dcount = jSONObject.getInt("dcount");
                }
                if (jSONObject.has("wcount")) {
                    this.wcount = jSONObject.getInt("wcount");
                }
                if (jSONObject.has("tsize")) {
                    this.tsize = jSONObject.getInt("tsize");
                }
                if (jSONObject.has("dsize")) {
                    this.dsize = jSONObject.getInt("dsize");
                }
                if (jSONObject.has("csize")) {
                    this.csize = jSONObject.getInt("csize");
                }
                if (jSONObject.has("cdsize")) {
                    this.cdsize = jSONObject.getInt("cdsize");
                }
                if (jSONObject.has("cwsize")) {
                    this.cwsize = jSONObject.getInt("cwsize");
                }
                if (jSONObject.has("progress")) {
                    this.progress = jSONObject.getInt("progress");
                }
                if (jSONObject.has("name")) {
                    this.name = jSONObject.getString("name");
                }
                if (jSONObject.has("ver")) {
                    this.ver = jSONObject.getString("ver");
                }
                if (jSONObject.has("new_ver")) {
                    this.new_ver = jSONObject.getString("new_ver");
                    return this;
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return this;
    }

    public int getProgress() {
        return this.progress;
    }

    public int getStatus() {
        return this.status;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("status=");
        sb.append(this.status);
        sb.append("\r\n, count=");
        sb.append(this.count);
        sb.append("\r\n, dcount=");
        sb.append(this.dcount);
        sb.append("\r\n, wcount=");
        sb.append(this.wcount);
        sb.append("\r\n, tsize=");
        sb.append(this.tsize);
        sb.append("\r\n, dsize=");
        sb.append(this.dsize);
        sb.append("\r\n, csize=");
        sb.append(this.csize);
        sb.append("\r\n, cdsize=");
        sb.append(this.cdsize);
        sb.append("\r\n, cwsize=");
        sb.append(this.cwsize);
        sb.append("\r\n, progress=");
        sb.append(this.progress);
        sb.append("\r\n, name='");
        sb.append(this.name);
        sb.append("'\r\n, ver='");
        sb.append(this.ver);
        sb.append("'\r\n, new_ver='");
        return fc.l(sb, this.new_ver, '\'');
    }
}
