package com.networkbench.agent.impl.harvest.a.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.DeviceInformation;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class d extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f37249c;
    private double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37250e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37251f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37252h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37253i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37254j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f37255k;
    private String l;
    private String m;

    public d a(r rVar, DeviceInformation deviceInformation) {
        if (rVar == null) {
            return this;
        }
        this.f37247a = rVar.av();
        this.f37248b = rVar.aw();
        this.f37249c = (float) rVar.q().a();
        this.d = (float) rVar.q().b();
        this.f37250e = rVar.t();
        this.l = com.networkbench.agent.impl.e.c.a();
        this.f37255k = deviceInformation.getAgentVersion();
        this.g = deviceInformation.getManufacturer();
        this.f37252h = deviceInformation.getModel();
        this.f37253i = deviceInformation.getOsName();
        this.f37254j = deviceInformation.getOsVersion();
        this.m = NBSAgent.getApplicationInformation().getChannelId();
        this.f37251f = rVar.T();
        return this;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("ca", this.f37247a);
        jsonObject.addProperty("ct", Integer.valueOf(this.f37248b));
        jsonObject.addProperty("lt", Double.valueOf(this.f37249c));
        jsonObject.addProperty("lg", Double.valueOf(this.d));
        jsonObject.addProperty("uid", this.f37250e);
        jsonObject.addProperty("did", this.f37251f);
        jsonObject.addProperty("manu", this.g);
        jsonObject.addProperty("mamo", this.f37252h);
        jsonObject.addProperty("os", this.f37253i);
        jsonObject.addProperty("ov", this.f37254j);
        jsonObject.addProperty("agv", this.f37255k);
        jsonObject.addProperty("av", this.l);
        jsonObject.addProperty("cid", this.m);
        return jsonObject;
    }

    public int b() {
        return this.f37248b;
    }

    public double c() {
        return this.f37249c;
    }

    public double d() {
        return this.d;
    }

    public String e() {
        return this.f37250e;
    }

    public String f() {
        return this.f37251f;
    }

    public String g() {
        return this.g;
    }

    public String h() {
        return this.f37252h;
    }

    public String i() {
        return this.f37253i;
    }

    public String j() {
        return this.f37254j;
    }

    public String k() {
        return this.f37255k;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return this.m;
    }

    public void b(double d) {
        this.d = d;
    }

    public void c(String str) {
        this.f37251f = str;
    }

    public void d(String str) {
        this.g = str;
    }

    public void e(String str) {
        this.f37252h = str;
    }

    public void f(String str) {
        this.f37253i = str;
    }

    public void g(String str) {
        this.f37254j = str;
    }

    public void h(String str) {
        this.f37255k = str;
    }

    public void i(String str) {
        this.l = str;
    }

    public void j(String str) {
        this.m = str;
    }

    public void b(String str) {
        this.f37250e = str;
    }

    public void a(String str) {
        this.f37247a = str;
    }

    public void a(int i2) {
        this.f37248b = i2;
    }

    public void a(double d) {
        this.f37249c = d;
    }

    public String a() {
        return this.f37247a;
    }
}
