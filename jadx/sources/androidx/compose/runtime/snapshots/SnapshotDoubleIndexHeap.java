package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotDoubleIndexHeap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f8469b = new long[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f8470c = new int[16];
    public int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8471e;

    public SnapshotDoubleIndexHeap() {
        int[] iArr = new int[16];
        int i2 = 0;
        while (i2 < 16) {
            int i3 = i2 + 1;
            iArr[i2] = i3;
            i2 = i3;
        }
        this.d = iArr;
    }

    public final int a(long j2) {
        int i2 = this.f8468a + 1;
        long[] jArr = this.f8469b;
        int length = jArr.length;
        if (i2 > length) {
            int i3 = length * 2;
            long[] jArr2 = new long[i3];
            int[] iArr = new int[i3];
            ArraysKt.k(0, jArr, 0, jArr2, jArr.length);
            ArraysKt.m(0, 0, 14, this.f8470c, iArr);
            this.f8469b = jArr2;
            this.f8470c = iArr;
        }
        int i4 = this.f8468a;
        this.f8468a = i4 + 1;
        int length2 = this.d.length;
        if (this.f8471e >= length2) {
            int i5 = length2 * 2;
            int[] iArr2 = new int[i5];
            int i6 = 0;
            while (i6 < i5) {
                int i7 = i6 + 1;
                iArr2[i6] = i7;
                i6 = i7;
            }
            ArraysKt.m(0, 0, 14, this.d, iArr2);
            this.d = iArr2;
        }
        int i8 = this.f8471e;
        int[] iArr3 = this.d;
        this.f8471e = iArr3[i8];
        long[] jArr3 = this.f8469b;
        jArr3[i4] = j2;
        this.f8470c[i4] = i8;
        iArr3[i8] = i4;
        while (i4 > 0) {
            int i9 = ((i4 + 1) >> 1) - 1;
            if (Intrinsics.e(jArr3[i9], j2) <= 0) {
                break;
            }
            b(i9, i4);
            i4 = i9;
        }
        return i8;
    }

    public final void b(int i2, int i3) {
        long[] jArr = this.f8469b;
        int[] iArr = this.f8470c;
        int[] iArr2 = this.d;
        long j2 = jArr[i2];
        jArr[i2] = jArr[i3];
        jArr[i3] = j2;
        int i4 = iArr[i2];
        int i5 = iArr[i3];
        iArr[i2] = i5;
        iArr[i3] = i4;
        iArr2[i5] = i2;
        iArr2[i4] = i3;
    }
}
