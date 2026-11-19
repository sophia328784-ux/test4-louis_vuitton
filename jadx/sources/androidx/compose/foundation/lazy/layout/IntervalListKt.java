package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IntervalListKt {
    public static final int a(int i2, MutableVector mutableVector) {
        int i3 = mutableVector.d - 1;
        int i4 = 0;
        while (i4 < i3) {
            int iA = defpackage.a.a(i3, i4, 2, i4);
            Object[] objArr = mutableVector.f8165b;
            int i5 = ((IntervalList.Interval) objArr[iA]).f5405a;
            if (i5 != i2) {
                if (i5 < i2) {
                    i4 = iA + 1;
                    if (i2 < ((IntervalList.Interval) objArr[i4]).f5405a) {
                    }
                } else {
                    i3 = iA - 1;
                }
            }
            return iA;
        }
        return i4;
    }
}
