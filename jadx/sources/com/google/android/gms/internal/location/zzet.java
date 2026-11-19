package com.google.android.gms.internal.location;

/* JADX INFO: loaded from: classes2.dex */
final class zzet extends zzeu {
    public final transient int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzeu f30263f;

    public zzet(zzeu zzeuVar, int i2, int i3) {
        this.f30263f = zzeuVar;
        this.d = i2;
        this.f30262e = i3;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final Object[] f() {
        return this.f30263f.f();
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzeo.a(i2, this.f30262e);
        return this.f30263f.get(i2 + this.d);
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int h() {
        return this.f30263f.h() + this.d;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int i() {
        return this.f30263f.h() + this.d + this.f30262e;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.location.zzeu, java.util.List
    /* JADX INFO: renamed from: o */
    public final zzeu subList(int i2, int i3) {
        zzeo.b(i2, i3, this.f30262e);
        int i4 = this.d;
        return this.f30263f.subList(i2 + i4, i3 + i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30262e;
    }
}
