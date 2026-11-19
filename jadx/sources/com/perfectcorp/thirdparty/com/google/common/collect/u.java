package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.md;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
final class u<E> extends AbstractSet<E> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient int[] f42343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient long[] f42344c;
    public transient Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient int f42345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient int f42346f;

    public static u b(int i2) {
        u uVar = new u();
        Preconditions.g(i2 >= 0, "Initial capacity must be non-negative");
        uVar.f42345e = Math.max(1, i2);
        return uVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [int] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        boolean z;
        char c2 = 2;
        if (f()) {
            Preconditions.h("Arrays already allocated", f());
            int i2 = this.f42345e;
            int iMax = Math.max(i2, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > ((int) (((double) iHighestOneBit) * 1.0d)) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int[] iArr = new int[iHighestOneBit];
            Arrays.fill(iArr, -1);
            this.f42343b = iArr;
            long[] jArr = new long[i2];
            Arrays.fill(jArr, -1L);
            this.f42344c = jArr;
            this.d = new Object[i2];
        }
        long[] jArr2 = this.f42344c;
        Object[] objArr = this.d;
        int iB = al.a.b(obj);
        int[] iArr2 = this.f42343b;
        int length = (iArr2.length - 1) & iB;
        int i3 = this.f42346f;
        int i4 = iArr2[length];
        if (i4 == -1) {
            iArr2[length] = i3;
            z = false;
        } else {
            while (true) {
                long j2 = jArr2[i4];
                char c3 = c2;
                z = false;
                if (((int) (j2 >>> 32)) == iB && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, objArr[i4])) {
                    return false;
                }
                int i5 = (int) j2;
                if (i5 == -1) {
                    jArr2[i4] = ((-4294967296L) & j2) | (((long) i3) & BodyPartID.bodyIdMax);
                    break;
                }
                i4 = i5;
                c2 = c3;
            }
        }
        if (i3 == Integer.MAX_VALUE) {
            md.k("Cannot contain more than Integer.MAX_VALUE elements!");
            return z;
        }
        int i6 = i3 + 1;
        int length2 = this.f42344c.length;
        if (i6 > length2) {
            int iMax2 = Math.max(1, length2 >>> 1) + length2;
            int i7 = iMax2 >= 0 ? iMax2 : Integer.MAX_VALUE;
            if (i7 != length2) {
                this.d = Arrays.copyOf(this.d, i7);
                long[] jArr3 = this.f42344c;
                int length3 = jArr3.length;
                long[] jArrCopyOf = Arrays.copyOf(jArr3, i7);
                if (i7 > length3) {
                    Arrays.fill(jArrCopyOf, length3, i7, -1L);
                }
                this.f42344c = jArrCopyOf;
            }
        }
        this.f42344c[i3] = (((long) iB) << 32) | BodyPartID.bodyIdMax;
        this.d[i3] = obj;
        this.f42346f = i6;
        int length4 = this.f42343b.length;
        if (i3 > ((double) length4) * 1.0d && length4 < 1073741824) {
            int i8 = length4 * 2;
            ?? r2 = new int[i8];
            Arrays.fill((int[]) r2, -1);
            long[] jArr4 = this.f42344c;
            int i9 = i8 - 1;
            for (?? r5 = z; r5 < this.f42346f; r5++) {
                int i10 = (int) (jArr4[r5] >>> 32);
                int i11 = i10 & i9;
                ?? r7 = r2[i11];
                r2[i11] = r5;
                jArr4[r5] = (((long) r7) & BodyPartID.bodyIdMax) | (((long) i10) << 32);
            }
            this.f42343b = r2;
        }
        this.f42345e++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (f()) {
            return;
        }
        this.f42345e++;
        Arrays.fill(this.d, 0, this.f42346f, (Object) null);
        Arrays.fill(this.f42343b, -1);
        Arrays.fill(this.f42344c, 0, this.f42346f, -1L);
        this.f42346f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (f()) {
            return false;
        }
        int iB = al.a.b(obj);
        int[] iArr = this.f42343b;
        int i2 = iArr[(iArr.length - 1) & iB];
        while (i2 != -1) {
            long j2 = this.f42344c[i2];
            if (((int) (j2 >>> 32)) == iB && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, this.d[i2])) {
                return true;
            }
            i2 = (int) j2;
        }
        return false;
    }

    public final boolean f() {
        return this.f42343b == null;
    }

    public final boolean h(int i2, Object obj) {
        long[] jArr;
        long j2;
        int[] iArr = this.f42343b;
        int length = (iArr.length - 1) & i2;
        int i3 = iArr[length];
        if (i3 == -1) {
            return false;
        }
        int i4 = -1;
        while (true) {
            if (((int) (this.f42344c[i3] >>> 32)) == i2 && com.perfectcorp.thirdparty.com.google.common.base.g.a.a(obj, this.d[i3])) {
                if (i4 == -1) {
                    this.f42343b[length] = (int) this.f42344c[i3];
                } else {
                    long[] jArr2 = this.f42344c;
                    jArr2[i4] = (jArr2[i4] & (-4294967296L)) | (((long) ((int) jArr2[i3])) & BodyPartID.bodyIdMax);
                }
                int i5 = this.f42346f - 1;
                Object[] objArr = this.d;
                if (i3 < i5) {
                    objArr[i3] = objArr[i5];
                    objArr[i5] = null;
                    long[] jArr3 = this.f42344c;
                    long j3 = jArr3[i5];
                    jArr3[i3] = j3;
                    jArr3[i5] = -1;
                    int[] iArr2 = this.f42343b;
                    int length2 = ((int) (j3 >>> 32)) & (iArr2.length - 1);
                    int i6 = iArr2[length2];
                    if (i6 == i5) {
                        iArr2[length2] = i3;
                    } else {
                        while (true) {
                            jArr = this.f42344c;
                            j2 = jArr[i6];
                            int i7 = (int) j2;
                            if (i7 == i5) {
                                break;
                            }
                            i6 = i7;
                        }
                        jArr[i6] = (BodyPartID.bodyIdMax & ((long) i3)) | (j2 & (-4294967296L));
                    }
                } else {
                    objArr[i3] = null;
                    this.f42344c[i3] = -1;
                }
                this.f42346f--;
                this.f42345e++;
                return true;
            }
            int i8 = (int) this.f42344c[i3];
            if (i8 == -1) {
                return false;
            }
            i4 = i3;
            i3 = i8;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f42346f == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        v vVar = new v();
        vVar.f42349e = this;
        vVar.f42347b = this.f42345e;
        vVar.f42348c = isEmpty() ? -1 : 0;
        vVar.d = -1;
        return vVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (f()) {
            return false;
        }
        return h(al.a.b(obj), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f42346f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (f()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Object[] objArr2 = this.d;
        int i2 = this.f42346f;
        Preconditions.c(0, i2, objArr2.length);
        if (objArr.length < i2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
        } else if (objArr.length > i2) {
            objArr[i2] = null;
        }
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return f() ? new Object[0] : Arrays.copyOf(this.d, this.f42346f);
    }
}
