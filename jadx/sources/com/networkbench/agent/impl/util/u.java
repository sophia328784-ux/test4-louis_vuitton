package com.networkbench.agent.impl.util;

import defpackage.cj;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class u {
    private static final com.networkbench.agent.impl.c.e R = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38402a = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f38403b = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f38404c = 128;
    public static final int d = 16384;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f38405e = 32768;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f38406f = 65536;
    public static final int g = 131072;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f38407h = 262144;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f38408i = 524287;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f38409j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f38410k = 2;
    private static final int l = 16;
    private static final int m = 32;
    private static final int n = 64;
    private static final int o = 256;
    private static final int p = 512;
    private static final int q = 1024;
    private static final int r = 2048;
    private static final int s = 4096;
    private static final int t = 8192;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean u = false;
    private boolean z = true;
    private boolean A = false;
    private boolean B = true;
    private boolean C = false;
    private boolean D = false;
    private boolean E = true;
    private boolean F = true;
    private boolean G = true;
    private boolean H = true;
    private boolean I = true;
    private boolean J = false;
    private boolean K = false;
    private boolean L = false;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = false;
    private boolean S = false;

    public void a(int i2, boolean z) {
        com.networkbench.agent.impl.c.j.a("setModuleSwitch method called with features: " + i2 + ", isNBSOption: " + z);
        if (!z && (i2 < 0 || this.S)) {
            R.a("启动的时候已经设置过了, 忽略这一次features设置! ");
            if (r.u().j()) {
                com.networkbench.agent.impl.c.g.n("启动的时候已经设置过了, 忽略这一次features设置! ");
                return;
            }
            return;
        }
        boolean z2 = (i2 & 1) != 0;
        e(z2);
        boolean z3 = (i2 & 2) != 0;
        l(z3);
        boolean z4 = (i2 & 4) != 0;
        j(z4);
        boolean z5 = (i2 & 8) != 0;
        k(z5);
        boolean z6 = (i2 & 16) != 0;
        f(z6);
        boolean z7 = (i2 & 32) != 0;
        m(z7);
        boolean z8 = (i2 & 64) != 0;
        g(z8);
        boolean z9 = (i2 & 128) != 0;
        h(z9);
        boolean z10 = (i2 & 256) != 0;
        i(z10);
        boolean z11 = (i2 & 512) != 0;
        a(z11);
        boolean z12 = (i2 & 1024) != 0;
        b(z12);
        boolean z13 = (i2 & 2048) != 0;
        c(z13);
        this.H = (i2 & 4096) != 0;
        this.I = (i2 & 8192) != 0;
        this.M = (i2 & 16384) != 0;
        this.N = (32768 & i2) != 0;
        this.O = (65536 & i2) != 0;
        this.P = (131072 & i2) != 0;
        this.Q = (i2 & 262144) != 0;
        if (r.u().j()) {
            StringBuilder sbM = cj.m("Network Switch is ", "\nUI Switch is ", "\nCrash Switch is ", z2, z3);
            fc.y(sbM, z4, "\nWebView Switch is ", z5, "\nsocketdata Switch is ");
            fc.y(sbM, z6, "\ncross_app Switch is ", z7, "\nANR monitor Switch is ");
            fc.y(sbM, z8, "\nUserAction Switch  is ", z9, "\ncdnSwitch Switch  is ");
            fc.y(sbM, z10, "\nrecord Switch  is ", z11, "\nallTraceCollectEnabled Switch  is ");
            fc.y(sbM, z12, "\nviolenceSwitch  is ", z13, "\nbetaOn Switch is ");
            sbM.append(this.F);
            sbM.append("\noomModule Switch is ");
            sbM.append(this.I);
            sbM.append("\nbatteryModuleEnabled Switch is ");
            sbM.append(this.M);
            sbM.append("\nbatteryErrorEnabled Switch is ");
            sbM.append(this.N);
            sbM.append("\nrecordNetworkEnabled Switch is ");
            sbM.append(this.O);
            sbM.append("\ncpuModuleEnabled Switch is ");
            sbM.append(this.P);
            sbM.append("\nfpsModuleEnabled Switch is ");
            sbM.append(this.Q);
            com.networkbench.agent.impl.c.g.n("setModuleSwitch : \n".concat(sbM.toString()));
        }
        this.S = true;
    }

    public boolean b() {
        return this.E && this.O;
    }

    public boolean c() {
        return this.E && this.F && this.N;
    }

    public void d() {
        com.networkbench.agent.impl.c.g.n("setModuleSwitch : \n".concat("Network Switch is " + this.u + "\nUI Switch is " + this.B + "\nCrash Switch is " + this.z + "\nWebView Switch is " + this.A + "\nsocketdata Switch is " + this.v + "\ncross_app Switch is " + this.C + "\nANR monitor Switch is " + this.w + "\nUserAction Switch  is " + this.x + "\ncdnSwitch Switch  is " + this.y + "\nbetaOn Switch is " + this.F));
    }

    public boolean e() {
        return this.E;
    }

    public boolean f() {
        return this.E && this.u;
    }

    public boolean g() {
        return this.E && this.v;
    }

    public boolean h() {
        return this.E && this.w;
    }

    public boolean i() {
        return this.E && this.x;
    }

    public boolean j() {
        return this.E && this.y;
    }

    public boolean k() {
        return this.E && this.z;
    }

    public boolean l() {
        return this.E && this.G && this.F;
    }

    public boolean m() {
        return this.E && this.B;
    }

    public boolean n() {
        return this.E && this.A;
    }

    public boolean o() {
        return this.E && this.D && this.F;
    }

    public boolean p() {
        return this.E && this.B;
    }

    public boolean q() {
        return this.E && this.C;
    }

    public boolean r() {
        return this.E && this.J;
    }

    public boolean s() {
        return this.E && this.K;
    }

    public boolean t() {
        return this.E && this.L;
    }

    public boolean u() {
        return this.F;
    }

    public boolean v() {
        return this.E && this.H;
    }

    public boolean w() {
        return this.E && this.I;
    }

    public boolean x() {
        return this.E && this.F && this.P;
    }

    public boolean y() {
        return this.E && this.F && this.Q;
    }

    public void e(boolean z) {
        this.u = z;
    }

    public void b(boolean z) {
        this.K = z;
    }

    public void f(boolean z) {
        this.v = z;
    }

    public void g(boolean z) {
        this.w = z;
    }

    public void h(boolean z) {
        this.x = z;
    }

    public void i(boolean z) {
        this.y = z;
    }

    public void j(boolean z) {
        this.z = z;
    }

    public void k(boolean z) {
        this.A = z;
    }

    public void m(boolean z) {
        this.C = z;
    }

    public void n(boolean z) {
        this.F = z;
    }

    public void p(boolean z) {
        this.G = z;
    }

    public void c(boolean z) {
        this.L = z;
    }

    public void l(boolean z) {
        this.B = z;
    }

    public void o(boolean z) {
        this.D = z;
    }

    public void d(boolean z) {
        this.E = z;
    }

    public void a(boolean z) {
        this.J = z;
    }

    public void a(int i2) {
        a(i2, false);
    }

    public boolean a() {
        return this.E && this.F && this.M;
    }
}
