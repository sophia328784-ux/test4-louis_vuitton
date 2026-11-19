package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
final class zzcb extends zzcc {
    public final transient int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f29846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzcc f29847f;

    public zzcb(zzcc zzccVar, int i2, int i3) {
        this.f29847f = zzccVar;
        this.d = i2;
        this.f29846e = i3;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int f() {
        return this.f29847f.h() + this.d + this.f29846e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzbm.a(i2, this.f29846e);
        return this.f29847f.get(i2 + this.d);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int h() {
        return this.f29847f.h() + this.d;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] m() {
        return this.f29847f.m();
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    /* JADX INFO: renamed from: o */
    public final zzcc subList(int i2, int i3) {
        zzbm.b(i2, i3, this.f29846e);
        int i4 = this.d;
        return this.f29847f.subList(i2 + i4, i3 + i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29846e;
    }
}
