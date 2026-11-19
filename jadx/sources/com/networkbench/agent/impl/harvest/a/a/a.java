package com.networkbench.agent.impl.harvest.a.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.DeviceInformation;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37234c;
    private float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f37235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37236f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37238i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37239j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f37240k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;

    public a(String str, int i2, String str2, float f2, float f3, String str3, String str4, int i3, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.f37232a = str;
        this.f37233b = i2;
        this.f37234c = str2;
        this.d = f2;
        this.f37235e = f3;
        this.f37236f = str3;
        this.g = str4;
        this.f37237h = i3;
        this.f37238i = str5;
        this.f37239j = str6;
        this.f37240k = str7;
        this.l = str8;
        this.m = str9;
        this.n = str10;
        this.o = str11;
        this.p = str12;
    }

    public void a(r rVar, DeviceInformation deviceInformation) {
        if (rVar == null) {
            return;
        }
        this.f37232a = rVar.av();
        this.f37233b = rVar.aw();
        this.f37234c = rVar.au();
        this.d = (float) rVar.q().a();
        this.f37235e = (float) rVar.q().b();
        this.f37236f = rVar.t();
        this.g = rVar.T();
        this.f37237h = 0;
        this.f37238i = "";
        this.f37239j = deviceInformation.getManufacturer();
        this.f37240k = deviceInformation.getModel();
        this.l = deviceInformation.getOsName();
        this.m = deviceInformation.getOsVersion();
        this.n = deviceInformation.getAgentVersion();
        this.o = com.networkbench.agent.impl.e.c.a();
        this.p = NBSAgent.getApplicationInformation().getChannelId();
        this.q = deviceInformation.getCpuArch();
        this.r = deviceInformation.getCpuModel();
        this.s = ConfigurationName.processName;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("carrier", this.f37232a);
        jsonObject.addProperty("connect_type", Integer.valueOf(this.f37233b));
        jsonObject.addProperty("network_type", this.f37234c);
        jsonObject.addProperty("latitude", Float.valueOf(this.d));
        jsonObject.addProperty("longitude", Float.valueOf(this.f37235e));
        jsonObject.addProperty("user_id", this.f37236f);
        jsonObject.addProperty("device_id", this.g);
        jsonObject.addProperty("device_type", Integer.valueOf(this.f37237h));
        jsonObject.addProperty("device_text", this.f37238i);
        jsonObject.addProperty("manufacturer", this.f37239j);
        jsonObject.addProperty("manufacturer_model", this.f37240k);
        jsonObject.addProperty("os_name", this.l);
        jsonObject.addProperty("os_version", this.m);
        jsonObject.addProperty("agent_version", this.n);
        jsonObject.addProperty("app_version", this.o);
        jsonObject.addProperty("channel_name", this.p);
        jsonObject.addProperty("cpu_model", this.r);
        jsonObject.addProperty("cpu_arch", this.q);
        jsonObject.addProperty("process_name", this.s);
        return jsonObject;
    }

    public int b() {
        return this.f37233b;
    }

    public String c() {
        return this.f37234c;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return false;
    }

    public float d() {
        return this.d;
    }

    public float e() {
        return this.f37235e;
    }

    public String f() {
        return this.f37236f;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        return "common" + asJsonObject().toString() + "\n";
    }

    public String g() {
        return this.g;
    }

    public int h() {
        return this.f37237h;
    }

    public String i() {
        return this.f37238i;
    }

    public String j() {
        return this.f37239j;
    }

    public String k() {
        return this.f37240k;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return this.m;
    }

    public String n() {
        return this.n;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
    }

    public void b(String str) {
        this.f37234c = str;
    }

    public void c(String str) {
        this.f37236f = str;
    }

    public void d(String str) {
        this.g = str;
    }

    public void e(String str) {
        this.f37238i = str;
    }

    public void f(String str) {
        this.f37239j = str;
    }

    public void g(String str) {
        this.f37240k = str;
    }

    public void h(String str) {
        this.l = str;
    }

    public void i(String str) {
        this.m = str;
    }

    public void b(float f2) {
        this.f37235e = f2;
    }

    public void b(int i2) {
        this.f37237h = i2;
    }

    public a() {
    }

    public void a(String str) {
        this.f37232a = str;
    }

    public void a(int i2) {
        this.f37233b = i2;
    }

    public void a(float f2) {
        this.d = f2;
    }

    public String a() {
        return this.f37232a;
    }
}
