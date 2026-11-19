package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes2.dex */
final class zzag extends zzah {
    public final transient int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f29813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzah f29814f;

    public zzag(zzah zzahVar, int i2, int i3) {
        this.f29814f = zzahVar;
        this.d = i2;
        this.f29813e = i3;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] f() {
        return this.f29814f.f();
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzr.a(i2, this.f29813e);
        return this.f29814f.get(i2 + this.d);
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int h() {
        return this.f29814f.h() + this.d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int i() {
        return this.f29814f.h() + this.d + this.f29813e;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* JADX INFO: renamed from: n */
    public final zzah subList(int i2, int i3) {
        zzr.b(i2, i3, this.f29813e);
        int i4 = this.d;
        return this.f29814f.subList(i2 + i4, i3 + i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29813e;
    }
}
