package com.google.android.gms.internal.fido;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzcu extends zzcf {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object[] f29864j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzcu f29865k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f29866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f29867f;
    public final transient Object[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f29868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient int f29869i;

    static {
        Object[] objArr = new Object[0];
        f29864j = objArr;
        f29865k = new zzcu(objArr, objArr, 0, 0, 0);
    }

    public zzcu(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        this.f29866e = objArr;
        this.f29867f = i2;
        this.g = objArr2;
        this.f29868h = i3;
        this.f29869i = i4;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.f29866e;
        int i2 = this.f29869i;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        Object[] objArr = this.g;
        if (objArr.length == 0) {
            return false;
        }
        int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15)) * 461845907);
        while (true) {
            int i2 = iRotateLeft & this.f29868h;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iRotateLeft = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int f() {
        return this.f29869i;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f29867f;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final zzdc i() {
        return q().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return q().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] m() {
        return this.f29866e;
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc r() {
        return zzcc.p(this.f29869i, this.f29866e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f29869i;
    }
}
