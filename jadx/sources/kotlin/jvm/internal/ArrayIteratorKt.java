package kotlin.jvm.internal;

import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class ArrayIteratorKt {
    public static final Iterator a(Object[] objArr) {
        objArr.getClass();
        return new ArrayIterator(objArr);
    }
}
