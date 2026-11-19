package com.google.android.gms.internal.measurement;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzada extends zzacj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f30392b = zzagg.d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f30393a;

    public static int b(int i2) {
        return (352 - (Integer.numberOfLeadingZeros(i2) * 9)) >>> 6;
    }

    public static int c(long j2) {
        return (640 - (Long.numberOfLeadingZeros(j2) * 9)) >>> 6;
    }

    public static int d(zzafc zzafcVar) {
        int iE = zzafcVar.e();
        return b(iE) + iE;
    }

    public abstract int A();

    public final void e() {
        if (A() > 0) {
            md.k("Did not write as much data as expected.");
        } else {
            if (A() >= 0) {
                return;
            }
            md.k("Wrote more data than expected.");
        }
    }

    public abstract void f(int i2, int i3);

    public abstract void g(int i2, int i3);

    public abstract void h(int i2, int i3);

    public abstract void i(int i2, int i3);

    public abstract void j(int i2, long j2);

    public abstract void k(int i2, long j2);

    public abstract void l(int i2, boolean z);

    public abstract void m(int i2, String str);

    public abstract void n(int i2, zzacr zzacrVar);

    public abstract void o(zzacr zzacrVar);

    public abstract void p(int i2, byte[] bArr);

    public abstract void q(int i2, zzafc zzafcVar);

    public abstract void r(int i2, zzacr zzacrVar);

    public abstract void s(zzafc zzafcVar);

    public abstract void t(byte b2);

    public abstract void u(int i2);

    public abstract void v(int i2);

    public abstract void w(int i2);

    public abstract void x(long j2);

    public abstract void y(long j2);

    public abstract void z(String str);
}
