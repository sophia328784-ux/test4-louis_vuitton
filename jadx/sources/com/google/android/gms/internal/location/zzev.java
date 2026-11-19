package com.google.android.gms.internal.location;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzev extends zzeu {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzeu f30265f = new zzev(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30266e;

    public zzev(Object[] objArr, int i2) {
        this.d = objArr;
        this.f30266e = i2;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final Object[] f() {
        return this.d;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzeo.a(i2, this.f30266e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int i() {
        return this.f30266e;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.location.zzeu, com.google.android.gms.internal.location.zzer
    public final int n(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f30266e;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30266e;
    }
}
