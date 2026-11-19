package com.networkbench.agent.impl.webview;

import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b {
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38425f;
    private long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f38426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f38427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Long f38428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private HttpLibType f38429k = HttpLibType.WebviewAJAX;

    public HttpLibType a() {
        return this.f38429k;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive("ajax need not ot turn json"));
        return jsonArray;
    }

    public void b(int i2) {
        this.f38424e = i2;
    }

    public void c(int i2) {
        this.f38425f = i2;
    }

    public int d() {
        return this.f38424e;
    }

    public int e() {
        return this.f38425f;
    }

    public long f() {
        return this.g;
    }

    public long g() {
        return this.f38426h;
    }

    public String h() {
        return this.f38427i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("url:" + this.f38436a);
        sb.append(" time:" + this.f38428j);
        sb.append(" statusCode:" + this.f38424e);
        sb.append(" errorCode:" + this.f38425f);
        sb.append(" byteSent:" + this.g);
        sb.append(" bytesRecieved:" + this.f38426h);
        sb.append(" appData:" + this.f38427i);
        sb.append(" requestMethod:" + this.f38438c.ordinal());
        return sb.toString();
    }

    public void a(HttpLibType httpLibType) {
        this.f38429k = httpLibType;
    }

    public void b(long j2) {
        this.f38426h = j2;
    }

    public int c() {
        return this.d;
    }

    public void a(int i2) {
        this.d = i2;
    }

    public Long b() {
        return this.f38428j;
    }

    public void a(long j2) {
        this.g = j2;
    }

    public void a(String str) {
        this.f38427i = str;
    }

    public void a(Long l) {
        this.f38428j = l;
    }
}
