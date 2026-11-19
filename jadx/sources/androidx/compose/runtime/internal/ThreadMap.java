package androidx.compose.runtime.internal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/internal/ThreadMap;", "", "", "size", "", "keys", "", "values", "<init>", "(I[J[Ljava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ThreadMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f8407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f8408c;

    public ThreadMap(int i2, long[] jArr, Object[] objArr) {
        this.f8406a = i2;
        this.f8407b = jArr;
        this.f8408c = objArr;
    }

    public final int a(long j2) {
        int i2 = this.f8406a - 1;
        if (i2 != -1) {
            long[] jArr = this.f8407b;
            int i3 = 0;
            if (i2 != 0) {
                while (i3 <= i2) {
                    int i4 = (i3 + i2) >>> 1;
                    long j3 = jArr[i4] - j2;
                    if (j3 < 0) {
                        i3 = i4 + 1;
                    } else {
                        if (j3 <= 0) {
                            return i4;
                        }
                        i2 = i4 - 1;
                    }
                }
                return -(i3 + 1);
            }
            long j4 = jArr[0];
            if (j4 == j2) {
                return 0;
            }
            if (j4 > j2) {
                return -2;
            }
        }
        return -1;
    }

    public final ThreadMap b(long j2, Object obj) {
        long[] jArr;
        int i2;
        Object[] objArr = this.f8408c;
        int i3 = 0;
        int i4 = 0;
        for (Object obj2 : objArr) {
            if (obj2 != null) {
                i4++;
            }
        }
        int i5 = i4 + 1;
        long[] jArr2 = new long[i5];
        Object[] objArr2 = new Object[i5];
        if (i5 > 1) {
            int i6 = 0;
            while (true) {
                jArr = this.f8407b;
                i2 = this.f8406a;
                if (i3 >= i5 || i6 >= i2) {
                    break;
                }
                long j3 = jArr[i6];
                Object obj3 = objArr[i6];
                if (j3 > j2) {
                    jArr2[i3] = j2;
                    objArr2[i3] = obj;
                    i3++;
                    break;
                }
                if (obj3 != null) {
                    jArr2[i3] = j3;
                    objArr2[i3] = obj3;
                    i3++;
                }
                i6++;
            }
            if (i6 == i2) {
                jArr2[i4] = j2;
                objArr2[i4] = obj;
            } else {
                while (i3 < i5) {
                    long j4 = jArr[i6];
                    Object obj4 = objArr[i6];
                    if (obj4 != null) {
                        jArr2[i3] = j4;
                        objArr2[i3] = obj4;
                        i3++;
                    }
                    i6++;
                }
            }
        } else {
            jArr2[0] = j2;
            objArr2[0] = obj;
        }
        return new ThreadMap(i5, jArr2, objArr2);
    }
}
