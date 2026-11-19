package com.networkbench.agent.impl.data;

import com.networkbench.com.google.gson.JsonArray;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HashMap<String, Object> {
    public c(AnomalousData anomalousData) {
        b(anomalousData.getStacktrace());
        a(anomalousData.getUUID());
        b(anomalousData.getThreadName());
        a(anomalousData.getThreadId());
        c(anomalousData.getImageUuid());
        c(anomalousData.getBuildId());
        a(anomalousData.getAllStacktrace());
    }

    public void a(long j2) {
        put("threadId", Long.valueOf(j2));
    }

    public void b(JsonArray jsonArray) {
        put("stackTrace", jsonArray);
    }

    public void c(String str) {
        put("buildId", str);
    }

    public void b(String str) {
        put("threadName", str);
    }

    public void c(JsonArray jsonArray) {
        put("imageUuid", jsonArray);
    }

    public void a(String str) {
        put("uuid", str);
    }

    public void a(JsonArray jsonArray) {
        put("allStackTrace", jsonArray);
    }
}
