package com.google.android.gms.internal.common;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzaj extends zzah {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzah f29816f = new zzaj(new Object[0], 0);
    public final transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient int f29817e;

    public zzaj(Object[] objArr, int i2) {
        this.d = objArr;
        this.f29817e = i2;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] f() {
        return this.d;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzr.a(i2, this.f29817e);
        Object obj = this.d[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int i() {
        return this.f29817e;
    }

    @Override // com.google.android.gms.internal.common.zzah, com.google.android.gms.internal.common.zzac
    public final int l(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.f29817e;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29817e;
    }
}
