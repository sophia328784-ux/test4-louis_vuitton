package com.google.android.gms.internal.maps;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzbo extends zzbi {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzbi f30284f = new zzbo(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30285e;

    public zzbo(Object[] objArr, int i2) {
        this.d = objArr;
        this.f30285e = i2;
    }

    @Override // com.google.android.gms.internal.maps.zzbi, com.google.android.gms.internal.maps.zzbf
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f30285e;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int f() {
        return this.f30285e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzba.a(i2, this.f30285e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final Object[] i() {
        return this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30285e;
    }
}
