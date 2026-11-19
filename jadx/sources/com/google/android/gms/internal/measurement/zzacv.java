package com.google.android.gms.internal.measurement;

import defpackage.lc0;
import defpackage.md;
import defpackage.n91;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzacv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f30381c;

    public static zzacv h(InputStream inputStream, int i2) {
        if (i2 <= 0) {
            md.n("bufferSize must be > 0");
            return null;
        }
        if (inputStream != null) {
            return new zzacu(inputStream, i2);
        }
        zzact zzactVar = new zzact(zzaed.f30413a);
        try {
            zzactVar.a(0);
            return zzactVar;
        } catch (zzaeh e2) {
            lc0.u(e2);
            return null;
        }
    }

    public static int j(int i2) {
        return (i2 >>> 1) ^ (-(i2 & 1));
    }

    public static long k(long j2) {
        return (j2 >>> 1) ^ (-(1 & j2));
    }

    public abstract int A();

    public abstract int B();

    public abstract int C();

    public abstract long D();

    public abstract int E();

    public abstract long F();

    public abstract int G();

    public abstract long H();

    public abstract int a(int i2);

    public abstract void b(int i2);

    public abstract int c();

    public abstract boolean d();

    public abstract int e();

    public abstract int f(int i2, int i3, byte[] bArr);

    public abstract void g(int i2);

    public final void i() {
        boolean zN;
        do {
            int iL = l();
            if (iL == 0) {
                return;
            }
            int i2 = this.f30379a;
            int i3 = this.f30380b;
            if (i2 + i3 >= 100) {
                n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                return;
            } else {
                this.f30380b = i3 + 1;
                zN = n(iL);
                this.f30380b--;
            }
        } while (zN);
    }

    public abstract int l();

    public abstract void m(int i2);

    public abstract boolean n(int i2);

    public abstract double o();

    public abstract float p();

    public abstract long q();

    public abstract long r();

    public abstract int s();

    public abstract long t();

    public abstract int u();

    public abstract boolean v();

    public abstract String w();

    public abstract String x();

    public abstract zzacr y();

    public abstract byte[] z();
}
