package com.networkbench.agent.impl.performance.coulometry.a.a;

import com.appsflyer.sdk_base.referrer.Payload;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37805b;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37810i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private JsonArray f37812k;
    private JsonArray l;
    private long n;
    private int m = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37806c = ContentTree.AUDIO_ID;
    private String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37807e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37808f = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private JsonArray f37811j = new JsonArray();

    public b(int i2, StackTraceElement[] stackTraceElementArr) {
        this.f37805b = i2;
        a(stackTraceElementArr);
        this.l = ak.c();
        this.g = ak.a(r.u().J(), false);
        this.f37809h = r.u().d(System.currentTimeMillis());
        this.f37812k = new JsonArray();
        this.n = System.nanoTime();
        this.f37810i = System.currentTimeMillis();
    }

    public void a(StackTraceElement[] stackTraceElementArr) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(Thread.currentThread().getId())));
        jsonArray.add(new JsonPrimitive(Thread.currentThread().getName() == null ? "" : Thread.currentThread().getName()));
        jsonArray.add(new JsonPrimitive(ak.a(this.m, stackTraceElementArr, 7).toString()));
        this.f37811j.add(jsonArray);
    }

    public JsonObject b() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().f(this.f37810i))));
        jsonObject.add("type", new JsonPrimitive((Number) Integer.valueOf(this.f37805b)));
        jsonObject.add("platform", new JsonPrimitive(this.f37806c));
        jsonObject.add("msg", new JsonPrimitive(this.d));
        jsonObject.add(m.C, this.f37811j);
        jsonObject.add("image", this.f37812k);
        jsonObject.add("bid", new JsonPrimitive(this.f37807e));
        jsonObject.add("obv", new JsonPrimitive(""));
        jsonObject.add("meta", new JsonPrimitive(this.f37808f));
        JsonArray jsonArray = this.l;
        if (jsonArray == null) {
            jsonArray = new JsonArray();
        }
        jsonObject.add("trail", jsonArray);
        jsonObject.add("addit", new JsonPrimitive(this.g));
        jsonObject.add("sruuid", new JsonPrimitive(this.f37809h));
        jsonObject.add(Payload.CUSTOM, new JsonPrimitive(new com.networkbench.agent.impl.data.a(r.u(), NBSBitmapBeansControl.getInstance().getSessionIdRefresh(), this.f37810i).asJsonObject().toString()));
        return jsonObject;
    }

    public String a() {
        return o60.j(this.n, "", new StringBuilder());
    }
}
