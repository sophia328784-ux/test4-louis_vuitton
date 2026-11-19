package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzh {
    public Long A;
    public long B;
    public String C;
    public int D;
    public int E;
    public long F;
    public String G;
    public byte[] H;
    public int I;
    public long J;
    public long K;
    public long L;
    public long M;
    public long N;
    public long O;
    public long P;
    public String Q;
    public boolean R;
    public long S;
    public long T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f31778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31780c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f31781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f31782f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f31783h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f31784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f31785j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f31786k;
    public String l;
    public long m;
    public long n;
    public boolean o;
    public boolean p;
    public Boolean q;
    public long r;
    public ArrayList s;
    public String t;
    public boolean u;
    public long v;
    public long w;
    public int x;
    public boolean y;
    public Long z;

    public zzh(zzic zzicVar, String str) {
        Preconditions.h(zzicVar);
        Preconditions.e(str);
        this.f31778a = zzicVar;
        this.f31779b = str;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
    }

    public final void A(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.v != j2;
        this.v = j2;
    }

    public final void B(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.w != j2;
        this.w = j2;
    }

    public final void C(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.B != j2;
        this.B = j2;
    }

    public final String D() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.C;
    }

    public final String E() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.f31779b;
    }

    public final String F() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.f31780c;
    }

    public final void G(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.f31780c, str);
        this.f31780c = str;
    }

    public final String H() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.d;
    }

    public final void I(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.R |= true ^ Objects.equals(this.d, str);
        this.d = str;
    }

    public final void J(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.f31781e, str);
        this.f31781e = str;
    }

    public final String K() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.f31782f;
    }

    public final void L(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.f31782f, str);
        this.f31782f = str;
    }

    public final void M(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.f31783h != j2;
        this.f31783h = j2;
    }

    public final void N(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.f31784i != j2;
        this.f31784i = j2;
    }

    public final String O() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.f31785j;
    }

    public final void P(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.f31785j, str);
        this.f31785j = str;
    }

    public final long Q() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.f31786k;
    }

    public final void R(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.f31786k != j2;
        this.f31786k = j2;
    }

    public final void S(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.l, str);
        this.l = str;
    }

    public final void T(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.m != j2;
        this.m = j2;
    }

    public final void a(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.n != j2;
        this.n = j2;
    }

    public final long b() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.r;
    }

    public final void c(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.r != j2;
        this.r = j2;
    }

    public final void d(boolean z) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.o != z;
        this.o = z;
    }

    public final void e(long j2) {
        Preconditions.a(j2 >= 0);
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.g != j2;
        this.g = j2;
    }

    public final void f(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.S != j2;
        this.S = j2;
    }

    public final void g(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.T != j2;
        this.T = j2;
    }

    public final void h(long j2) {
        zzic zzicVar = this.f31778a;
        zzhz zzhzVar = zzicVar.g;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzhzVar);
        zzhzVar.g();
        long j3 = this.g + j2;
        String str = this.f31779b;
        if (j3 > 2147483647L) {
            zzic.m(zzguVar);
            zzguVar.f31771i.b(zzgu.o(str), "Bundle index overflow. appId");
            j3 = (-1) + j2;
        }
        long j4 = this.F + 1;
        if (j4 > 2147483647L) {
            zzic.m(zzguVar);
            zzguVar.f31771i.b(zzgu.o(str), "Delivery index overflow. appId");
            j4 = 0;
        }
        this.R = true;
        this.g = j3;
        this.F = j4;
    }

    public final void i(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.K != j2;
        this.K = j2;
    }

    public final void j(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.L != j2;
        this.L = j2;
    }

    public final void k(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.M != j2;
        this.M = j2;
    }

    public final void l(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.N != j2;
        this.N = j2;
    }

    public final void m(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.P != j2;
        this.P = j2;
    }

    public final void n(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.O != j2;
        this.O = j2;
    }

    public final boolean o() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.R;
    }

    public final void p(int i2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.D != i2;
        this.D = i2;
    }

    public final void q(int i2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.E != i2;
        this.E = i2;
    }

    public final void r(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.F != j2;
        this.F = j2;
    }

    public final String s() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.G;
    }

    public final int t() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.I;
    }

    public final void u(long j2) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= this.J != j2;
        this.J = j2;
    }

    public final String v() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        String str = this.Q;
        w(null);
        return str;
    }

    public final void w(String str) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        this.R |= !Objects.equals(this.Q, str);
        this.Q = str;
    }

    public final Boolean x() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.q;
    }

    public final void y(List list) {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (Objects.equals(this.s, list)) {
            return;
        }
        this.R = true;
        this.s = list != null ? new ArrayList(list) : null;
    }

    public final boolean z() {
        zzhz zzhzVar = this.f31778a.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        return this.u;
    }
}
