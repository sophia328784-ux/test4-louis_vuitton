package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f31763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31765c;
    public final /* synthetic */ zzgu d;

    public zzgs(zzgu zzguVar, int i2, boolean z, boolean z2) {
        this.d = zzguVar;
        this.f31763a = i2;
        this.f31764b = z;
        this.f31765c = z2;
    }

    public final void a(String str) {
        this.d.p(this.f31763a, this.f31764b, this.f31765c, str, null, null, null);
    }

    public final void b(Object obj, String str) {
        this.d.p(this.f31763a, this.f31764b, this.f31765c, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        this.d.p(this.f31763a, this.f31764b, this.f31765c, str, obj, obj2, null);
    }

    public final void d(String str, Object obj, Object obj2, Object obj3) {
        this.d.p(this.f31763a, this.f31764b, this.f31765c, str, obj, obj2, obj3);
    }
}
