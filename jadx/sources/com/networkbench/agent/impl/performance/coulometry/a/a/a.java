package com.networkbench.agent.impl.performance.coulometry.a.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a implements SpanFormat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37801c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<b> f37802e = pq0.v();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<b> f37803f = pq0.v();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f37799a = false;

    public a(String str, int i2) {
        this.f37800b = str;
        this.f37801c = i2;
    }

    public JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive(this.f37800b));
        jsonObject.add("interval", new JsonPrimitive((Number) Integer.valueOf(this.f37801c / 1000)));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().g(System.currentTimeMillis()))));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJson());
        jsonObject.add("errs", c());
        return jsonObject;
    }

    public synchronized void b() {
        this.f37802e.addAll(this.f37803f);
        this.f37803f.clear();
    }

    public JsonArray c() {
        JsonArray jsonArray = new JsonArray();
        Iterator<b> it = this.f37802e.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().b());
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f37802e.size() == 0;
    }

    public String d() {
        return this.f37800b;
    }

    public int e() {
        return this.f37801c;
    }

    public long f() {
        return this.d;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        try {
            if (checkData()) {
                return "";
            }
            this.f37799a = true;
            return com.networkbench.agent.impl.performance.coulometry.a.f37793e + a().toString() + "\n";
        } finally {
            this.f37799a = false;
        }
    }

    public void g() {
    }

    public List<b> h() {
        return this.f37802e;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        synchronized (this.f37802e) {
            this.f37802e.clear();
        }
    }

    public synchronized void a(c cVar, StackTraceElement[] stackTraceElementArr) {
        if (!r.u().aA().c()) {
            g.y("addErrorInfo  isBatteryErrorEnabled is false");
        } else {
            a(new b(cVar.ordinal(), stackTraceElementArr));
        }
    }

    public synchronized void a(b bVar) {
        if (bVar == null) {
            g.m("addErrorInfo : null");
            return;
        }
        if (this.f37799a) {
            this.f37803f.add(bVar);
        } else {
            this.f37802e.add(bVar);
        }
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(bVar.b().toString(), "TingyunSDK_customError");
            }
        } catch (Throwable th) {
            g.p("addErrorInfo debuglog has error :" + th.getMessage());
        }
    }

    public void a(String str) {
        this.f37800b = str;
    }

    public void a(int i2) {
        this.f37801c = i2;
    }

    public void a(long j2) {
        this.d = j2;
    }
}
