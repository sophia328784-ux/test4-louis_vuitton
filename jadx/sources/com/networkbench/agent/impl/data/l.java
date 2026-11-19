package com.networkbench.agent.impl.data;

import com.networkbench.agent.impl.socket.p;

/* JADX INFO: loaded from: classes2.dex */
public class l extends p {
    private int m;
    private boolean n;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36929j = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36928i = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f36930k = 0;
    private int l = 0;

    public l() {
        this.f38213f = false;
        this.n = false;
        this.g = false;
    }

    public boolean a() {
        return this.n;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public void b(boolean z) {
        this.f38213f = z;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public void c(boolean z) {
        this.g = z;
    }

    public String d() {
        return this.f36928i;
    }

    public String e() {
        return this.f36929j;
    }

    public int f() {
        return this.f36930k;
    }

    public int g() {
        return this.l;
    }

    @Override // com.networkbench.agent.impl.socket.p
    public void h() {
        this.f38209a = 2;
        this.f38210b = this.f36929j + ":" + this.f36930k;
        if (!this.f36928i.isEmpty()) {
            this.f38210b = this.f36928i + "/" + this.f38210b;
        }
        this.f38211c = this.l;
        this.d = this.m;
        this.f38212e = "";
    }

    @Override // com.networkbench.agent.impl.socket.p
    public String toString() {
        return "hostname :" + this.f36928i + "  hostAddress:" + this.f36929j + "   port:" + this.f36930k + "   connectPeriod: " + this.l;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public boolean b() {
        return this.f38213f;
    }

    public boolean c() {
        return this.g;
    }

    public void a(int i2) {
        this.m = i2;
    }

    public void b(String str) {
        this.f36929j = str;
    }

    public void c(int i2) {
        this.l = i2;
    }

    public void a(String str) {
        this.f36928i = str;
    }

    public void b(int i2) {
        this.f36930k = i2;
    }
}
