package com.google.android.gms.internal.gtm;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzlj extends zzlg {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzlg f30198f = new zzlj(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f30199e;

    public zzlj(Object[] objArr, int i2) {
        this.d = objArr;
        this.f30199e = i2;
    }

    @Override // com.google.android.gms.internal.gtm.zzlg, com.google.android.gms.internal.gtm.zzld
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f30199e;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int f() {
        return this.f30199e;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzkz.a(i2, this.f30199e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.gtm.zzld
    public final Object[] i() {
        return this.d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30199e;
    }
}
