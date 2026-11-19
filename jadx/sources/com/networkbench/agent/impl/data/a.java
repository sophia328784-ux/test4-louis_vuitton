package com.networkbench.agent.impl.data;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.ae;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JsonObject f36749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36751c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36753f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36754h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36755i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36756j;

    public a(r rVar, com.networkbench.agent.impl.k.b bVar, long j2) {
        this.f36749a = new JsonObject();
        j2 = j2 <= 0 ? System.currentTimeMillis() : j2;
        this.f36750b = e(rVar.d());
        this.f36751c = ae.a();
        this.d = rVar.e(j2);
        if (bVar == null) {
            this.f36752e = e(NBSBitmapBeansControl.getInstance().getSessionId());
            return;
        }
        this.f36752e = e(bVar.f37421a);
        this.g = e(bVar.f37423c);
        this.f36753f = e(bVar.f37422b);
        this.f36755i = e(bVar.f37424e);
        this.f36754h = e(bVar.d);
        this.f36756j = e(bVar.f37425f);
    }

    private String e(String str) {
        return str == null ? "" : str;
    }

    public JsonObject a() {
        return this.f36749a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        this.f36749a.add("timestamp", new JsonPrimitive((Number) Long.valueOf(this.d)));
        if (!ak.r(this.f36750b)) {
            this.f36749a.add("bname", new JsonPrimitive(this.f36750b));
        }
        if (!ak.r(this.f36751c)) {
            this.f36749a.add("suuid", new JsonPrimitive(this.f36751c));
        }
        if (!ak.r(this.f36752e)) {
            this.f36749a.add("session_id", new JsonPrimitive(this.f36752e));
        }
        if (!ak.r(this.f36754h)) {
            this.f36749a.add("view_name", new JsonPrimitive(this.f36754h));
        }
        if (r.u().af()) {
            if (!ak.r(this.g)) {
                this.f36749a.add("action_id", new JsonPrimitive(this.g));
            }
            if (!ak.r(this.f36753f)) {
                this.f36749a.add("view_id", new JsonPrimitive(this.f36753f));
                if (!ak.r(this.f36756j)) {
                    this.f36749a.add("view_features", new JsonPrimitive(this.f36756j));
                }
            }
            if (!ak.r(this.f36755i)) {
                this.f36749a.add("features", new JsonPrimitive(this.f36755i));
            }
        }
        return this.f36749a;
    }

    public String b() {
        return this.f36753f;
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.f36754h;
    }

    public void a(String str) {
        this.f36753f = str;
    }

    public void b(String str) {
        this.g = str;
    }

    public void c(String str) {
        this.f36754h = str;
    }

    public void d(String str) {
        this.f36755i = str;
    }

    public String e() {
        return this.f36755i;
    }

    public a(r rVar, String str, long j2) {
        this.f36749a = new JsonObject();
        j2 = j2 <= 0 ? System.currentTimeMillis() : j2;
        this.f36750b = e(rVar.d());
        this.f36751c = ae.a();
        this.d = rVar.e(j2);
        this.f36752e = e(str);
    }

    public a(r rVar, com.networkbench.agent.impl.k.b bVar) {
        this.f36749a = new JsonObject();
        this.f36750b = e(rVar.d());
        this.f36751c = ae.a();
        this.d = rVar.e(System.currentTimeMillis());
        if (bVar == null) {
            this.f36752e = e(NBSBitmapBeansControl.getInstance().getSessionId());
            return;
        }
        this.f36752e = e(bVar.f37421a);
        this.g = e(bVar.f37423c);
        this.f36753f = e(bVar.f37422b);
        this.f36755i = e(bVar.f37424e);
        this.f36754h = e(bVar.d);
        this.f36756j = e(bVar.f37425f);
    }
}
