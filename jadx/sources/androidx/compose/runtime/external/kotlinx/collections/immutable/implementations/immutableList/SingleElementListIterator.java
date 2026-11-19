package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.b21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SingleElementListIterator;", "E", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;", "element", "", "index", "<init>", "(Ljava/lang/Object;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SingleElementListIterator<E> extends AbstractListIterator<E> {
    public final Object d;

    public SingleElementListIterator(E e2, int i2) {
        super(i2, 1);
        this.d = e2;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f8301b++;
            return this.d;
        }
        b21.x();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            this.f8301b--;
            return this.d;
        }
        b21.x();
        return null;
    }
}
