package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.collections.FloatIterator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class ArrayIteratorsKt {
    public static final FloatIterator a(float[] fArr) {
        fArr.getClass();
        return new ArrayFloatIterator(fArr);
    }
}
