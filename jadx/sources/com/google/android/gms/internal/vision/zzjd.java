package com.google.android.gms.internal.vision;

import defpackage.az;
import defpackage.ct0;
import defpackage.pq0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzjd extends zzhj<Integer> implements zzjl<Integer>, zzkw, RandomAccess {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzjd f31223e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f31224c;
    public int d;

    static {
        zzjd zzjdVar = new zzjd(new int[0], 0);
        f31223e = zzjdVar;
        zzjdVar.f31182b = false;
    }

    public zzjd(int[] iArr, int i2) {
        this.f31224c = iArr;
        this.d = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        int iIntValue = ((Integer) obj).intValue();
        f();
        if (i2 < 0 || i2 > (i3 = this.d)) {
            az.v(l(i2));
            return;
        }
        int[] iArr = this.f31224c;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i2, iArr, i2 + 1, i3 - i2);
        } else {
            int[] iArr2 = new int[pq0.c(i3, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f31224c, i2, iArr2, i2 + 1, this.d - i2);
            this.f31224c = iArr2;
        }
        this.f31224c[i2] = iIntValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        f();
        Charset charset = zzjf.f31225a;
        collection.getClass();
        if (!(collection instanceof zzjd)) {
            return super.addAll(collection);
        }
        zzjd zzjdVar = (zzjd) collection;
        int i2 = zzjdVar.d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.d;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        int[] iArr = this.f31224c;
        if (i4 > iArr.length) {
            this.f31224c = Arrays.copyOf(iArr, i4);
        }
        System.arraycopy(zzjdVar.f31224c, 0, this.f31224c, this.d, zzjdVar.d);
        this.d = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.vision.zzjl
    public final /* synthetic */ zzjl e(int i2) {
        if (i2 >= this.d) {
            return new zzjd(Arrays.copyOf(this.f31224c, i2), this.d);
        }
        ct0.c();
        return null;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjd)) {
            return super.equals(obj);
        }
        zzjd zzjdVar = (zzjd) obj;
        if (this.d != zzjdVar.d) {
            return false;
        }
        int[] iArr = zzjdVar.f31224c;
        for (int i2 = 0; i2 < this.d; i2++) {
            if (this.f31224c[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        i(i2);
        return Integer.valueOf(this.f31224c[i2]);
    }

    public final void h(int i2) {
        f();
        int i3 = this.d;
        int[] iArr = this.f31224c;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[pq0.c(i3, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f31224c = iArr2;
        }
        int[] iArr3 = this.f31224c;
        int i4 = this.d;
        this.d = i4 + 1;
        iArr3[i4] = i2;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.d; i3++) {
            i2 = (i2 * 31) + this.f31224c[i3];
        }
        return i2;
    }

    public final void i(int i2) {
        if (i2 < 0 || i2 >= this.d) {
            az.v(l(i2));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f31224c[i3] == iIntValue) {
                return i3;
            }
        }
        return -1;
    }

    public final String l(int i2) {
        int i3 = this.d;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        f();
        i(i2);
        int[] iArr = this.f31224c;
        int i3 = iArr[i2];
        int i4 = this.d;
        if (i2 < i4 - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (i4 - i2) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        f();
        if (i3 < i2) {
            az.v("toIndex < fromIndex");
            return;
        }
        int[] iArr = this.f31224c;
        System.arraycopy(iArr, i3, iArr, i2, this.d - i3);
        this.d -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        f();
        i(i2);
        int[] iArr = this.f31224c;
        int i3 = iArr[i2];
        iArr[i2] = iIntValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        h(((Integer) obj).intValue());
        return true;
    }
}
