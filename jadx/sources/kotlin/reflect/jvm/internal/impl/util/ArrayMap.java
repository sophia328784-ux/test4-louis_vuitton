package kotlin.reflect.jvm.internal.impl.util;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ArrayMap<T> implements Iterable<T>, KMappedMarker {
    public ArrayMap(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract int f();

    public abstract Object get(int i2);

    public abstract void h(int i2, Object obj);

    @Override // java.lang.Iterable
    public Iterator iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
