package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntList;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;", "", "list", "Landroidx/collection/MutableIntList;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class PrioritySet {
    public static final void a(MutableIntList mutableIntList, int i2) {
        if (mutableIntList.f3256b == 0 || !(mutableIntList.b(0) == i2 || mutableIntList.b(mutableIntList.f3256b - 1) == i2)) {
            int i3 = mutableIntList.f3256b;
            mutableIntList.e(i2);
            while (i3 > 0) {
                int i4 = ((i3 + 1) >>> 1) - 1;
                int iB = mutableIntList.b(i4);
                if (i2 <= iB) {
                    break;
                }
                mutableIntList.h(i3, iB);
                i3 = i4;
            }
            mutableIntList.h(i3, i2);
        }
    }

    public static final int b(MutableIntList mutableIntList) {
        int iB;
        int i2 = mutableIntList.f3256b;
        int iB2 = mutableIntList.b(0);
        while (mutableIntList.f3256b != 0 && mutableIntList.b(0) == iB2) {
            mutableIntList.h(0, mutableIntList.c());
            mutableIntList.g(mutableIntList.f3256b - 1);
            int i3 = mutableIntList.f3256b;
            int i4 = i3 >>> 1;
            int i5 = 0;
            while (i5 < i4) {
                int iB3 = mutableIntList.b(i5);
                int i6 = (i5 + 1) * 2;
                int i7 = i6 - 1;
                int iB4 = mutableIntList.b(i7);
                if (i6 < i3 && (iB = mutableIntList.b(i6)) > iB4) {
                    if (iB <= iB3) {
                        break;
                    }
                    mutableIntList.h(i5, iB);
                    mutableIntList.h(i6, iB3);
                    i5 = i6;
                } else {
                    if (iB4 <= iB3) {
                        break;
                    }
                    mutableIntList.h(i5, iB4);
                    mutableIntList.h(i7, iB3);
                    i5 = i7;
                }
            }
        }
        return iB2;
    }
}
