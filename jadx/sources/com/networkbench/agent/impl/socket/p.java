package com.networkbench.agent.impl.socket;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f38209a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f38211c;
    protected int d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f38210b = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f38212e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f38213f = false;
    protected boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f38214h = false;

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        h();
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38209a)));
        jsonArray.add(new JsonPrimitive(this.f38210b));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38211c)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive(this.f38212e));
        return jsonArray;
    }

    public void b(boolean z) {
        this.f38213f = z;
    }

    public void c(boolean z) {
        this.g = z;
    }

    public void d(boolean z) {
        this.f38214h = z;
    }

    public void e(int i2) {
        this.f38209a = i2;
    }

    public void f(int i2) {
        this.f38211c = i2;
    }

    public void g(int i2) {
        this.d = i2;
    }

    public abstract void h();

    public boolean j() {
        return this.g;
    }

    public boolean k() {
        return this.f38213f;
    }

    public boolean l() {
        return this.f38214h;
    }

    public int m() {
        return this.f38211c;
    }

    public String toString() {
        return "SocketData: eventtype:" + this.f38209a + ",target = " + this.f38210b + ", duration = " + this.f38211c + ", network_error_code = " + this.d + ", desc = " + this.f38212e;
    }

    public void d(String str) {
        this.f38212e = str;
    }

    public void e(String str) {
        this.f38210b = str;
    }
}
