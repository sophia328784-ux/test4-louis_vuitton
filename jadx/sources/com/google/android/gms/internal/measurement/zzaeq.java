package com.google.android.gms.internal.measurement;

import defpackage.az;
import defpackage.ct0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzaeq extends zzace implements RandomAccess, zzaee, zzafk {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long[] f30420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzaeq f30421f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long[] f30422c;
    public int d;

    static {
        long[] jArr = new long[0];
        f30420e = jArr;
        f30421f = new zzaeq(jArr, 0, false);
    }

    public zzaeq(long[] jArr, int i2, boolean z) {
        super(z);
        this.f30422c = jArr;
        this.d = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzaee
    public final long C(int i2) {
        i(i2);
        return this.f30422c[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        long jLongValue = ((Long) obj).longValue();
        f();
        if (i2 < 0 || i2 > (i3 = this.d)) {
            az.v(zzacg.a(this.d, i2, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i4 = i2 + 1;
        long[] jArr = this.f30422c;
        int length = jArr.length;
        if (i3 < length) {
            System.arraycopy(jArr, i2, jArr, i4, i3 - i2);
        } else {
            long[] jArr2 = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f30422c, 0, jArr2, 0, i2);
            System.arraycopy(this.f30422c, i2, jArr2, i4, this.d - i2);
            this.f30422c = jArr2;
        }
        this.f30422c[i2] = jLongValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzace, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        f();
        collection.getClass();
        if (!(collection instanceof zzaeq)) {
            return super.addAll(collection);
        }
        zzaeq zzaeqVar = (zzaeq) collection;
        int i2 = zzaeqVar.d;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.d;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        long[] jArr = this.f30422c;
        if (i4 > jArr.length) {
            this.f30422c = Arrays.copyOf(jArr, i4);
        }
        System.arraycopy(zzaeqVar.f30422c, 0, this.f30422c, this.d, zzaeqVar.d);
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
        if (!(obj instanceof zzaeq)) {
            return super.equals(obj);
        }
        zzaeq zzaeqVar = (zzaeq) obj;
        if (this.d != zzaeqVar.d) {
            return false;
        }
        long[] jArr = zzaeqVar.f30422c;
        for (int i2 = 0; i2 < this.d; i2++) {
            if (this.f30422c[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        i(i2);
        return Long.valueOf(this.f30422c[i2]);
    }

    public final void h(long j2) {
        f();
        int i2 = this.d;
        int length = this.f30422c.length;
        if (i2 == length) {
            long[] jArr = new long[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f30422c, 0, jArr, 0, this.d);
            this.f30422c = jArr;
        }
        long[] jArr2 = this.f30422c;
        int i3 = this.d;
        this.d = i3 + 1;
        jArr2[i3] = j2;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.d; i3++) {
            long j2 = this.f30422c[i3];
            byte[] bArr = zzaed.f30413a;
            i2 = (i2 * 31) + ((int) (j2 ^ (j2 >>> 32)));
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
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f30422c[i3] == jLongValue) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzaef, com.google.android.gms.internal.measurement.zzaeb
    /* JADX INFO: renamed from: k */
    public final zzaee d(int i2) {
        if (i2 >= this.d) {
            return new zzaeq(i2 == 0 ? f30420e : Arrays.copyOf(this.f30422c, i2), this.d, true);
        }
        ct0.c();
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzace, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        f();
        i(i2);
        long[] jArr = this.f30422c;
        long j2 = jArr[i2];
        int i3 = this.d;
        if (i2 < i3 - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (i3 - i2) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        f();
        if (i3 < i2) {
            az.v("toIndex < fromIndex");
            return;
        }
        long[] jArr = this.f30422c;
        System.arraycopy(jArr, i3, jArr, i2, this.d - i3);
        this.d -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        f();
        i(i2);
        long[] jArr = this.f30422c;
        long j2 = jArr[i2];
        jArr[i2] = jLongValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        h(((Long) obj).longValue());
        return true;
    }
}
