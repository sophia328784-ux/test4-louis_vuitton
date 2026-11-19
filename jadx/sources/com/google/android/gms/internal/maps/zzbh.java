package com.google.android.gms.internal.maps;

/* JADX INFO: loaded from: classes2.dex */
final class zzbh extends zzbi {
    public final transient int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzbi f30279f;

    public zzbh(zzbi zzbiVar, int i2, int i3) {
        this.f30279f = zzbiVar;
        this.d = i2;
        this.f30278e = i3;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int f() {
        return this.f30279f.h() + this.d + this.f30278e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzba.a(i2, this.f30278e);
        return this.f30279f.get(i2 + this.d);
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int h() {
        return this.f30279f.h() + this.d;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final Object[] i() {
        return this.f30279f.i();
    }

    @Override // com.google.android.gms.internal.maps.zzbi, java.util.List
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final zzbi subList(int i2, int i3) {
        zzba.b(i2, i3, this.f30278e);
        int i4 = this.d;
        return this.f30279f.subList(i2 + i4, i3 + i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30278e;
    }
}
