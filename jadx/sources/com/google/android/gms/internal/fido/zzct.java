package com.google.android.gms.internal.fido;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzct extends zzcc {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzcc f29862f = new zzct(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f29863e;

    public zzct(Object[] objArr, int i2) {
        this.d = objArr;
        this.f29863e = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f29863e;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int f() {
        return this.f29863e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzbm.a(i2, this.f29863e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] m() {
        return this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29863e;
    }
}
