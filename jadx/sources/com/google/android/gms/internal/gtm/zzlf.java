package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzlf extends zzlg {
    public final transient int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzlg f30193f;

    public zzlf(zzlg zzlgVar, int i2, int i3) {
        this.f30193f = zzlgVar;
        this.d = i2;
        this.f30192e = i3;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int f() {
        return this.f30193f.h() + this.d + this.f30192e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzkz.a(i2, this.f30192e);
        return this.f30193f.get(i2 + this.d);
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int h() {
        return this.f30193f.h() + this.d;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final Object[] i() {
        return this.f30193f.i();
    }

    @Override // com.google.android.gms.internal.gtm.zzlg, java.util.List
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final zzlg subList(int i2, int i3) {
        zzkz.b(i2, i3, this.f30192e);
        int i4 = this.d;
        return this.f30193f.subList(i2 + i4, i3 + i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30192e;
    }
}
