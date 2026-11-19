package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.md;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Objects;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.jspecify.annotations.NullMarked;

/* JADX INFO: loaded from: classes2.dex */
@NullMarked
class ObjectCountHashMap<K> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient Object[] f33685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient int[] f33686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient int f33687c;
    public transient int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient long[] f33688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient float f33689f;
    public transient int g;

    public final class MapEntry extends Multisets$AbstractEntry<K> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f33690a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33691b;

        public MapEntry(int i2) {
            this.f33690a = ObjectCountHashMap.this.f33685a[i2];
            this.f33691b = i2;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final Object a() {
            return this.f33690a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            int i2 = this.f33691b;
            Object obj = this.f33690a;
            ObjectCountHashMap objectCountHashMap = ObjectCountHashMap.this;
            if (i2 == -1 || i2 >= objectCountHashMap.f33687c || !Objects.equals(obj, objectCountHashMap.f33685a[i2])) {
                this.f33691b = objectCountHashMap.c(obj);
            }
            int i3 = this.f33691b;
            if (i3 == -1) {
                return 0;
            }
            return objectCountHashMap.f33686b[i3];
        }
    }

    public final void a(int i2) {
        if (i2 > this.f33688e.length) {
            f(i2);
        }
        if (i2 >= this.g) {
            g(Math.max(2, Integer.highestOneBit(i2 - 1) << 1));
        }
    }

    public final int b(Object obj) {
        int iC = c(obj);
        if (iC == -1) {
            return 0;
        }
        return this.f33686b[iC];
    }

    public final int c(Object obj) {
        int iB = Hashing.b(obj);
        int[] iArr = this.d;
        int i2 = iArr[(iArr.length - 1) & iB];
        while (i2 != -1) {
            long j2 = this.f33688e[i2];
            if (((int) (j2 >>> 32)) == iB && Objects.equals(obj, this.f33685a[i2])) {
                return i2;
            }
            i2 = (int) j2;
        }
        return -1;
    }

    public final void d(int i2) {
        Preconditions.h(i2 >= 0, "Initial capacity must be non-negative");
        int iMax = Math.max(i2, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax > ((int) (1.0d * ((double) iHighestOneBit))) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
            iHighestOneBit = 1073741824;
        }
        int[] iArr = new int[iHighestOneBit];
        Arrays.fill(iArr, -1);
        this.d = iArr;
        this.f33689f = 1.0f;
        this.f33685a = new Object[i2];
        this.f33686b = new int[i2];
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        this.f33688e = jArr;
        this.g = Math.max(1, (int) (iHighestOneBit * 1.0f));
    }

    public final void e(int i2, Object obj) {
        long j2;
        if (i2 <= 0) {
            md.n(pq0.k(i2, "count must be positive but was: "));
            return;
        }
        long[] jArr = this.f33688e;
        Object[] objArr = this.f33685a;
        int[] iArr = this.f33686b;
        int iB = Hashing.b(obj);
        int[] iArr2 = this.d;
        int length = (iArr2.length - 1) & iB;
        int i3 = this.f33687c;
        int i4 = iArr2[length];
        if (i4 == -1) {
            iArr2[length] = i3;
            j2 = BodyPartID.bodyIdMax;
        } else {
            while (true) {
                long j3 = jArr[i4];
                j2 = BodyPartID.bodyIdMax;
                if (((int) (j3 >>> 32)) == iB && Objects.equals(obj, objArr[i4])) {
                    int i5 = iArr[i4];
                    iArr[i4] = i2;
                    return;
                } else {
                    int i6 = (int) j3;
                    if (i6 == -1) {
                        jArr[i4] = ((-4294967296L) & j3) | (((long) i3) & BodyPartID.bodyIdMax);
                        break;
                    }
                    i4 = i6;
                }
            }
        }
        if (i3 == Integer.MAX_VALUE) {
            md.k("Cannot contain more than Integer.MAX_VALUE elements!");
            return;
        }
        int i7 = i3 + 1;
        int length2 = this.f33688e.length;
        if (i7 > length2) {
            int iMax = Math.max(1, length2 >>> 1) + length2;
            int i8 = iMax >= 0 ? iMax : Integer.MAX_VALUE;
            if (i8 != length2) {
                f(i8);
            }
        }
        this.f33688e[i3] = (((long) iB) << 32) | j2;
        this.f33685a[i3] = obj;
        this.f33686b[i3] = i2;
        this.f33687c = i7;
        if (i3 >= this.g) {
            g(this.d.length * 2);
        }
    }

    public final void f(int i2) {
        this.f33685a = Arrays.copyOf(this.f33685a, i2);
        this.f33686b = Arrays.copyOf(this.f33686b, i2);
        long[] jArr = this.f33688e;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i2);
        if (i2 > length) {
            Arrays.fill(jArrCopyOf, length, i2, -1L);
        }
        this.f33688e = jArrCopyOf;
    }

    public final void g(int i2) {
        if (this.d.length >= 1073741824) {
            this.g = Integer.MAX_VALUE;
            return;
        }
        int i3 = ((int) (i2 * this.f33689f)) + 1;
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        long[] jArr = this.f33688e;
        int i4 = i2 - 1;
        for (int i5 = 0; i5 < this.f33687c; i5++) {
            int i6 = (int) (jArr[i5] >>> 32);
            int i7 = i6 & i4;
            int i8 = iArr[i7];
            iArr[i7] = i5;
            jArr[i5] = (((long) i6) << 32) | (((long) i8) & BodyPartID.bodyIdMax);
        }
        this.g = i3;
        this.d = iArr;
    }
}
