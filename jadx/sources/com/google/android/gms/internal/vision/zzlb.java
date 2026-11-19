package com.google.android.gms.internal.vision;

import defpackage.az;
import defpackage.ct0;
import defpackage.pq0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzlb<E> extends zzhj<E> implements RandomAccess {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzlb f31262e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f31263c;
    public int d;

    static {
        zzlb zzlbVar = new zzlb(new Object[0], 0);
        f31262e = zzlbVar;
        zzlbVar.f31182b = false;
    }

    public zzlb(Object[] objArr, int i2) {
        this.f31263c = objArr;
        this.d = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        f();
        if (i2 < 0 || i2 > (i3 = this.d)) {
            az.v(i(i2));
            return;
        }
        Object[] objArr = this.f31263c;
        if (i3 < objArr.length) {
            System.arraycopy(objArr, i2, objArr, i2 + 1, i3 - i2);
        } else {
            Object[] objArr2 = new Object[pq0.c(i3, 3, 2, 1)];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.f31263c, i2, objArr2, i2 + 1, this.d - i2);
            this.f31263c = objArr2;
        }
        this.f31263c[i2] = obj;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzjl
    public final /* synthetic */ zzjl e(int i2) {
        if (i2 >= this.d) {
            return new zzlb(Arrays.copyOf(this.f31263c, i2), this.d);
        }
        ct0.c();
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        h(i2);
        return this.f31263c[i2];
    }

    public final void h(int i2) {
        if (i2 < 0 || i2 >= this.d) {
            az.v(i(i2));
        }
    }

    public final String i(int i2) {
        int i3 = this.d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        f();
        h(i2);
        Object[] objArr = this.f31263c;
        Object obj = objArr[i2];
        int i3 = this.d;
        if (i2 < i3 - 1) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, (i3 - i2) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        f();
        h(i2);
        Object[] objArr = this.f31263c;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        f();
        int i2 = this.d;
        Object[] objArr = this.f31263c;
        if (i2 == objArr.length) {
            this.f31263c = Arrays.copyOf(objArr, ((i2 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f31263c;
        int i3 = this.d;
        this.d = i3 + 1;
        objArr2[i3] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
