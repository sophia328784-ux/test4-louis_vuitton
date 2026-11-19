package androidx.collection;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class SparseArrayCompatKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f3386a = new Object();

    public static final void a(SparseArrayCompat sparseArrayCompat) {
        int i2 = sparseArrayCompat.f3385e;
        int[] iArr = sparseArrayCompat.f3384c;
        Object[] objArr = sparseArrayCompat.d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f3386a) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        sparseArrayCompat.f3383b = false;
        sparseArrayCompat.f3385e = i3;
    }
}
