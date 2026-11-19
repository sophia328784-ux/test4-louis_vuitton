package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"collection"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class ArraySetKt {
    public static final int a(ArraySet arraySet, Object obj, int i2) {
        int i3 = arraySet.d;
        if (i3 == 0) {
            return -1;
        }
        try {
            int iA = ContainerHelpersKt.a(i3, i2, arraySet.f3229b);
            if (iA < 0 || Intrinsics.c(obj, arraySet.f3230c[iA])) {
                return iA;
            }
            int i4 = iA + 1;
            while (i4 < i3 && arraySet.f3229b[i4] == i2) {
                if (Intrinsics.c(obj, arraySet.f3230c[i4])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = iA - 1; i5 >= 0 && arraySet.f3229b[i5] == i2; i5--) {
                if (Intrinsics.c(obj, arraySet.f3230c[i5])) {
                    return i5;
                }
            }
            return ~i4;
        } catch (IndexOutOfBoundsException unused) {
            v7.c();
            return 0;
        }
    }
}
