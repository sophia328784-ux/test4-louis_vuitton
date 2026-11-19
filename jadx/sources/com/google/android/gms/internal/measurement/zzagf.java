package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzagf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Unsafe f30475a;

    public zzagf(Unsafe unsafe) {
        this.f30475a = unsafe;
    }

    public abstract void a(Object obj, long j2, byte b2);

    public abstract boolean b(long j2, Object obj);

    public abstract void c(Object obj, long j2, boolean z);

    public abstract float d(long j2, Object obj);

    public abstract void e(Object obj, long j2, float f2);

    public abstract double f(long j2, Object obj);

    public abstract void g(Object obj, long j2, double d);
}
