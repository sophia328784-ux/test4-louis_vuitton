package com.google.android.gms.internal.measurement;

import defpackage.az;
import defpackage.ct0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzadv extends zzace implements RandomAccess, zzaeb, zzafk {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f30408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzadv f30409f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f30410c;
    public int d;

    static {
        int[] iArr = new int[0];
        f30408e = iArr;
        f30409f = new zzadv(iArr, 0, false);
    }

    public zzadv(int[] iArr, int i2, boolean z) {
        super(z);
        this.f30410c = iArr;
        this.d = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        int iIntValue = ((Integer) obj).intValue();
        f();
        if (i2 < 0 || i2 > (i3 = this.d)) {
            az.v(zzacg.a(this.d, i2, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i4 = i2 + 1;
        int[] iArr = this.f30410c;
        int length = iArr.length;
        if (i3 < length) {
            System.arraycopy(iArr, i2, iArr, i4, i3 - i2);
        } else {
            int[] iArr2 = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f30410c, 0, iArr2, 0, i2);
            System.arraycopy(this.f30410c, i2, iArr2, i4, this.d - i2);
            this.f30410c = iArr2;
        }
        this.f30410c[i2] = iIntValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzace, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        f();
        collection.getClass();
        if (!(collection instanceof zzadv)) {
            return super.addAll(collection);
        }
        zzadv zzadvVar = (zzadv) collection;
        int i2 = zzadvVar.d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.d;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        int[] iArr = this.f30410c;
        if (i4 > iArr.length) {
            this.f30410c = Arrays.copyOf(iArr, i4);
        }
        System.arraycopy(zzadvVar.f30410c, 0, this.f30410c, this.d, zzadvVar.d);
        this.d = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzace, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzadv)) {
            return super.equals(obj);
        }
        zzadv zzadvVar = (zzadv) obj;
        if (this.d != zzadvVar.d) {
            return false;
        }
        int[] iArr = zzadvVar.f30410c;
        for (int i2 = 0; i2 < this.d; i2++) {
            if (this.f30410c[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        i(i2);
        return Integer.valueOf(this.f30410c[i2]);
    }

    public final void h(int i2) {
        f();
        int i3 = this.d;
        int length = this.f30410c.length;
        if (i3 == length) {
            int[] iArr = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f30410c, 0, iArr, 0, this.d);
            this.f30410c = iArr;
        }
        int[] iArr2 = this.f30410c;
        int i4 = this.d;
        this.d = i4 + 1;
        iArr2[i4] = i2;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.d; i3++) {
            i2 = (i2 * 31) + this.f30410c[i3];
        }
        return i2;
    }

    public final void i(int i2) {
        if (i2 < 0 || i2 >= this.d) {
            az.v(zzacg.a(this.d, i2, (byte) 13, "Index:", ", Size:"));
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
            if (this.f30410c[i3] == iIntValue) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzace, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        f();
        i(i2);
        int[] iArr = this.f30410c;
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
        int[] iArr = this.f30410c;
        System.arraycopy(iArr, i3, iArr, i2, this.d - i3);
        this.d -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        f();
        i(i2);
        int[] iArr = this.f30410c;
        int i3 = iArr[i2];
        iArr[i2] = iIntValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.measurement.zzaef, com.google.android.gms.internal.measurement.zzaeb
    /* JADX INFO: renamed from: w */
    public final zzaeb d(int i2) {
        if (i2 >= this.d) {
            return new zzadv(i2 == 0 ? f30408e : Arrays.copyOf(this.f30410c, i2), this.d, true);
        }
        ct0.c();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzaeb
    public final int y(int i2) {
        i(i2);
        return this.f30410c[i2];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        h(((Integer) obj).intValue());
        return true;
    }
}
