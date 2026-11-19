package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzadb implements zzago {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzada f30394a;

    public zzadb(zzada zzadaVar) {
        this.f30394a = zzadaVar;
        zzadaVar.f30393a = this;
    }

    public final void a(int i2, List list) {
        boolean z = list instanceof zzaen;
        zzada zzadaVar = this.f30394a;
        int i3 = 0;
        if (!z) {
            while (i3 < list.size()) {
                zzadaVar.m(i2, (String) list.get(i3));
                i3++;
            }
            return;
        }
        zzaen zzaenVar = (zzaen) list;
        while (i3 < list.size()) {
            Object objF0 = zzaenVar.f0();
            if (objF0 instanceof String) {
                zzadaVar.m(i2, (String) objF0);
            } else {
                zzadaVar.n(i2, (zzacr) objF0);
            }
            i3++;
        }
    }

    public final void b(int i2, List list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f30394a.n(i2, (zzacr) list.get(i3));
        }
    }

    public final void c(int i2, int i3) {
        this.f30394a.i(i2, i3);
    }

    public final void d(int i2, long j2) {
        this.f30394a.j(i2, j2);
    }

    public final void e(int i2, long j2) {
        this.f30394a.k(i2, j2);
    }

    public final void f(float f2, int i2) {
        this.f30394a.i(i2, Float.floatToRawIntBits(f2));
    }

    public final void g(double d, int i2) {
        this.f30394a.k(i2, Double.doubleToRawLongBits(d));
    }

    public final void h(int i2, int i3) {
        this.f30394a.g(i2, i3);
    }

    public final void i(int i2, long j2) {
        this.f30394a.j(i2, j2);
    }

    public final void j(int i2, int i3) {
        this.f30394a.g(i2, i3);
    }

    public final void k(int i2, long j2) {
        this.f30394a.k(i2, j2);
    }

    public final void l(int i2, int i3) {
        this.f30394a.i(i2, i3);
    }

    public final void m(int i2, boolean z) {
        this.f30394a.l(i2, z);
    }

    public final void n(int i2, zzacr zzacrVar) {
        this.f30394a.n(i2, zzacrVar);
    }

    public final void o(int i2, int i3) {
        this.f30394a.h(i2, i3);
    }

    public final void p(int i2, int i3) {
        zzada zzadaVar = this.f30394a;
        zzadaVar.h(i2, (i3 >> 31) ^ (i3 + i3));
    }

    public final void q(int i2, long j2) {
        zzada zzadaVar = this.f30394a;
        zzadaVar.j(i2, (j2 >> 63) ^ (j2 + j2));
    }

    public final void r(int i2, Object obj, zzafp zzafpVar) {
        zzacb zzacbVar = (zzacb) obj;
        zzada zzadaVar = this.f30394a;
        zzadaVar.f(i2, 2);
        zzadaVar.v(zzacbVar.j(zzafpVar));
        zzafpVar.a(zzacbVar, this);
    }

    public final void s(int i2, Object obj, zzafp zzafpVar) {
        zzada zzadaVar = this.f30394a;
        zzadaVar.f(i2, 3);
        zzafpVar.a((zzacb) obj, this);
        zzadaVar.f(i2, 4);
    }

    public final void t(int i2, Object obj) {
        boolean z = obj instanceof zzacr;
        zzada zzadaVar = this.f30394a;
        if (z) {
            zzadaVar.r(i2, (zzacr) obj);
        } else {
            zzadaVar.q(i2, (zzafc) obj);
        }
    }
}
