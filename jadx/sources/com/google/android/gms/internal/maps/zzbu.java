package com.google.android.gms.internal.maps;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzbu extends zzbm {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object[] f30286j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final zzbu f30287k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient Object[] f30288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient int f30289f;
    public final transient Object[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final transient int f30290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final transient int f30291i;

    static {
        Object[] objArr = new Object[0];
        f30286j = objArr;
        f30287k = new zzbu(objArr, objArr, 0, 0, 0);
    }

    public zzbu(Object[] objArr, Object[] objArr2, int i2, int i3, int i4) {
        this.f30288e = objArr;
        this.f30289f = i2;
        this.g = objArr2;
        this.f30290h = i3;
        this.f30291i = i4;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.f30288e;
        int i2 = this.f30291i;
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
            int i2 = iRotateLeft & this.f30290h;
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

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int f() {
        return this.f30291i;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final int h() {
        return 0;
    }

    @Override // com.google.android.gms.internal.maps.zzbm, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f30289f;
    }

    @Override // com.google.android.gms.internal.maps.zzbf
    public final Object[] i() {
        return this.f30288e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzbi zzboVar = this.f30281c;
        if (zzboVar == null) {
            zzby zzbyVar = zzbi.f30280c;
            int i2 = this.f30291i;
            zzboVar = i2 == 0 ? zzbo.f30284f : new zzbo(this.f30288e, i2);
            this.f30281c = zzboVar;
        }
        return zzboVar.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f30291i;
    }
}
