package com.networkbench.agent.impl.data;

import com.networkbench.agent.impl.socket.p;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class b extends p {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f36835k;
    private int m;
    private int n;
    private int o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36833i = "";
    private String l = "";
    private String p = "";
    private String q = "";

    public void a(String str) {
        this.q = str;
    }

    public void b(String str) {
        this.f36833i = str;
    }

    public String c() {
        return this.l;
    }

    public int d() {
        return this.m;
    }

    public int e() {
        return this.n;
    }

    public int f() {
        return this.o;
    }

    public String g() {
        return this.p;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public void h() {
        this.f38209a = 1;
        String string = this.f36833i;
        if (!this.q.isEmpty()) {
            StringBuilder sbU = n00.u(string, "/");
            sbU.append(this.q);
            string = sbU.toString();
        }
        this.f38210b = string;
        this.f38211c = this.f36834j;
        this.d = this.m;
        this.f38212e = this.p;
    }

    public double i() {
        return this.f36835k;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public String toString() {
        StringBuilder sb = new StringBuilder("DnsEvent{host='");
        sb.append(this.f36833i);
        sb.append("', dnsConsumeTime=");
        sb.append(this.f36834j);
        sb.append(", beginTimeStamp=");
        sb.append(this.f36835k);
        sb.append(", destIpList='");
        sb.append(this.l);
        sb.append("', isHttp=");
        sb.append(this.f38213f);
        sb.append(", errorNumber=");
        sb.append(this.m);
        sb.append(", retValue=");
        sb.append(this.n);
        sb.append(", port=");
        sb.append(this.o);
        sb.append(", desc='");
        return n00.r(this.p, "'}", sb);
    }

    public String a() {
        return this.f36833i;
    }

    public int b() {
        return this.f36834j;
    }

    public void c(String str) {
        this.l = str;
    }

    public void d(int i2) {
        this.o = i2;
    }

    public void a(int i2) {
        this.f36834j = i2;
    }

    public void b(int i2) {
        this.m = i2;
    }

    public void c(int i2) {
        this.n = i2;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public void d(String str) {
        this.p = str;
    }

    public void a(double d) {
        this.f36835k = d;
    }
}
