package com.networkbench.agent.impl.crash.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f36624a = f() - r.u().R();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36626c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36627e;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.crash.b.a$a, reason: collision with other inner class name */
    public enum EnumC0095a {
        OnClick,
        OnTouch
    }

    public a(String str, String str2, String str3, String str4) {
        this.f36625b = str;
        this.f36626c = str2;
        this.d = str3;
        if (str4 == null) {
            this.f36627e = null;
            return;
        }
        try {
            if (str4.length() > 100) {
                str4 = str4.substring(0, 101);
            }
        } catch (Throwable unused) {
        }
        this.f36627e = str4;
    }

    private long f() {
        return System.currentTimeMillis() / 1000;
    }

    public long a() {
        return this.f36624a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        if (this.f36625b != null) {
            jsonArray.add(new JsonPrimitive(this.f36625b));
        } else {
            jsonArray.add(null);
        }
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36624a)));
        if (this.f36626c != null) {
            jsonArray.add(new JsonPrimitive(this.f36626c));
        } else {
            jsonArray.add(null);
        }
        if (this.d != null) {
            jsonArray.add(new JsonPrimitive(this.d));
        } else {
            jsonArray.add(null);
        }
        if (this.f36627e != null) {
            jsonArray.add(new JsonPrimitive(this.f36627e));
            return jsonArray;
        }
        jsonArray.add(null);
        return jsonArray;
    }

    public String b() {
        return this.f36625b;
    }

    public String c() {
        return this.f36626c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.f36627e;
    }

    public void a(long j2) {
        this.f36624a = j2;
    }

    public void b(String str) {
        this.f36627e = str;
    }

    public void a(String str) {
        this.d = str;
    }
}
