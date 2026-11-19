package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TrieNodeKt {
    public static final Object[] a(int i2, Object obj, Object obj2, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt.n(objArr, objArr2, 0, i2, 6);
        ArraysKt.l(objArr, objArr2, i2 + 2, i2, objArr.length);
        objArr2[i2] = obj;
        objArr2[i2 + 1] = obj2;
        return objArr2;
    }

    public static final Object[] b(int i2, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt.n(objArr, objArr2, 0, i2, 6);
        ArraysKt.l(objArr, objArr2, i2, i2 + 2, objArr.length);
        return objArr2;
    }

    public static final Object[] c(int i2, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.n(objArr, objArr2, 0, i2, 6);
        ArraysKt.l(objArr, objArr2, i2, i2 + 1, objArr.length);
        return objArr2;
    }

    public static final int d(int i2, int i3) {
        return (i2 >> i3) & 31;
    }
}
