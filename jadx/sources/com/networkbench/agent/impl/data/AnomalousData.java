package com.networkbench.agent.impl.data;

import android.text.TextUtils;
import com.networkbench.com.google.gson.JsonArray;

/* JADX INFO: loaded from: classes2.dex */
public class AnomalousData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JsonArray f36743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JsonArray f36744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36745c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36747f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JsonArray f36748h = new JsonArray();
    public String type;

    public JsonArray getAllStacktrace() {
        return this.type.contains("ANR") ? this.f36743a : this.f36744b;
    }

    public String getBuildId() {
        return this.g;
    }

    public JsonArray getImageUuid() {
        return this.f36748h;
    }

    public JsonArray getStacktrace() {
        return this.f36743a;
    }

    public long getThreadId() {
        return this.f36747f;
    }

    public String getThreadName() {
        return this.f36746e;
    }

    public String getThrowable() {
        if (TextUtils.isEmpty(this.f36745c)) {
            return "";
        }
        return "_" + this.f36745c;
    }

    public String getUUID() {
        return this.d;
    }

    public void setAllStacktrace(JsonArray jsonArray) {
        this.f36744b = jsonArray;
    }

    public void setBuildId(String str) {
        this.g = str;
    }

    public void setImageUuid(JsonArray jsonArray) {
        if (jsonArray == null) {
            return;
        }
        this.f36748h = jsonArray;
    }

    public void setStacktrace(JsonArray jsonArray) {
        this.f36743a = jsonArray;
    }

    public void setThreadId(long j2) {
        this.f36747f = j2;
    }

    public void setThreadName(String str) {
        this.f36746e = str;
    }

    public void setThrowable(String str) {
        this.f36745c = str;
    }

    public void setType(int i2) {
        if (i2 == 1) {
            this.type = "Crash";
        }
        if (i2 == 2) {
            this.type = "ANR";
        }
    }

    public void setUUID(String str) {
        this.d = str;
    }
}
