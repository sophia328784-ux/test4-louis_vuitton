package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.md;
import defpackage.pq0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/LongSparseArray;", "E", "", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class LongSparseArray<E> implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ boolean f3286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ long[] f3287c;
    public /* synthetic */ Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f3288e;

    public LongSparseArray(int i2) {
        if (i2 == 0) {
            this.f3287c = ContainerHelpersKt.f3400b;
            this.d = ContainerHelpersKt.f3401c;
            return;
        }
        int i3 = i2 * 8;
        for (int i4 = 4; i4 < 32; i4++) {
            int i5 = (1 << i4) - 12;
            if (i3 <= i5) {
                i3 = i5;
                break;
            }
        }
        int i6 = i3 / 8;
        this.f3287c = new long[i6];
        this.d = new Object[i6];
    }

    public final void a() {
        int i2 = this.f3288e;
        Object[] objArr = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f3288e = 0;
        this.f3286b = false;
    }

    public final Object b(long j2) {
        Object obj;
        int iB = ContainerHelpersKt.b(j2, this.f3287c, this.f3288e);
        if (iB < 0 || (obj = this.d[iB]) == LongSparseArrayKt.f3289a) {
            return null;
        }
        return obj;
    }

    public final int c(long j2) {
        if (this.f3286b) {
            int i2 = this.f3288e;
            long[] jArr = this.f3287c;
            Object[] objArr = this.d;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != LongSparseArrayKt.f3289a) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f3286b = false;
            this.f3288e = i3;
        }
        return ContainerHelpersKt.b(j2, this.f3287c, this.f3288e);
    }

    public final Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        LongSparseArray longSparseArray = (LongSparseArray) objClone;
        longSparseArray.f3287c = (long[]) this.f3287c.clone();
        longSparseArray.d = (Object[]) this.d.clone();
        return longSparseArray;
    }

    public final long d(int i2) {
        int i3;
        if (i2 < 0 || i2 >= (i3 = this.f3288e)) {
            md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
            return 0L;
        }
        if (this.f3286b) {
            long[] jArr = this.f3287c;
            Object[] objArr = this.d;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                Object obj = objArr[i5];
                if (obj != LongSparseArrayKt.f3289a) {
                    if (i5 != i4) {
                        jArr[i4] = jArr[i5];
                        objArr[i4] = obj;
                        objArr[i5] = null;
                    }
                    i4++;
                }
            }
            this.f3286b = false;
            this.f3288e = i4;
        }
        return this.f3287c[i2];
    }

    public final void e(long j2, Object obj) {
        int iB = ContainerHelpersKt.b(j2, this.f3287c, this.f3288e);
        if (iB >= 0) {
            this.d[iB] = obj;
            return;
        }
        int i2 = ~iB;
        int i3 = this.f3288e;
        Object obj2 = LongSparseArrayKt.f3289a;
        if (i2 < i3) {
            Object[] objArr = this.d;
            if (objArr[i2] == obj2) {
                this.f3287c[i2] = j2;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.f3286b) {
            long[] jArr = this.f3287c;
            if (i3 >= jArr.length) {
                Object[] objArr2 = this.d;
                int i4 = 0;
                for (int i5 = 0; i5 < i3; i5++) {
                    Object obj3 = objArr2[i5];
                    if (obj3 != obj2) {
                        if (i5 != i4) {
                            jArr[i4] = jArr[i5];
                            objArr2[i4] = obj3;
                            objArr2[i5] = null;
                        }
                        i4++;
                    }
                }
                this.f3286b = false;
                this.f3288e = i4;
                i2 = ~ContainerHelpersKt.b(j2, this.f3287c, i4);
            }
        }
        int i6 = this.f3288e;
        if (i6 >= this.f3287c.length) {
            int i7 = (i6 + 1) * 8;
            for (int i8 = 4; i8 < 32; i8++) {
                int i9 = (1 << i8) - 12;
                if (i7 <= i9) {
                    i7 = i9;
                    break;
                }
            }
            int i10 = i7 / 8;
            this.f3287c = Arrays.copyOf(this.f3287c, i10);
            this.d = Arrays.copyOf(this.d, i10);
        }
        int i11 = this.f3288e;
        if (i11 - i2 != 0) {
            long[] jArr2 = this.f3287c;
            int i12 = i2 + 1;
            ArraysKt.k(i12, jArr2, i2, jArr2, i11);
            Object[] objArr3 = this.d;
            ArraysKt.l(objArr3, objArr3, i12, i2, this.f3288e);
        }
        this.f3287c[i2] = j2;
        this.d[i2] = obj;
        this.f3288e++;
    }

    public final void f(long j2) {
        int iB = ContainerHelpersKt.b(j2, this.f3287c, this.f3288e);
        if (iB >= 0) {
            Object[] objArr = this.d;
            Object obj = objArr[iB];
            Object obj2 = LongSparseArrayKt.f3289a;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f3286b = true;
            }
        }
    }

    public final int g() {
        if (this.f3286b) {
            int i2 = this.f3288e;
            long[] jArr = this.f3287c;
            Object[] objArr = this.d;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != LongSparseArrayKt.f3289a) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f3286b = false;
            this.f3288e = i3;
        }
        return this.f3288e;
    }

    public final Object h(int i2) {
        int i3;
        if (i2 < 0 || i2 >= (i3 = this.f3288e)) {
            md.n(pq0.k(i2, "Expected index to be within 0..size()-1, but was "));
            return null;
        }
        if (this.f3286b) {
            long[] jArr = this.f3287c;
            Object[] objArr = this.d;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                Object obj = objArr[i5];
                if (obj != LongSparseArrayKt.f3289a) {
                    if (i5 != i4) {
                        jArr[i4] = jArr[i5];
                        objArr[i4] = obj;
                        objArr[i5] = null;
                    }
                    i4++;
                }
            }
            this.f3286b = false;
            this.f3288e = i4;
        }
        return this.d[i2];
    }

    public final String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3288e * 28);
        sb.append('{');
        int i2 = this.f3288e;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(d(i3));
            sb.append('=');
            Object objH = h(i3);
            if (objH != sb) {
                sb.append(objH);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public LongSparseArray() {
        this(0, 1, null);
    }

    public /* synthetic */ LongSparseArray(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 10 : i2);
    }
}
