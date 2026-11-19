package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import defpackage.b21;
import defpackage.o60;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetIterator;", "E", "", "", "nextElement", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;", "map", "<init>", "(Ljava/lang/Object;Ljava/util/Map;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PersistentOrderedSetIterator<E> implements Iterator<E>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f8361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f8362c;
    public int d;

    public PersistentOrderedSetIterator(Object obj, Map<E, Links> map) {
        this.f8361b = obj;
        this.f8362c = map;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d < this.f8362c.size();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        Object obj = this.f8361b;
        this.d++;
        Object obj2 = this.f8362c.get(obj);
        if (obj2 == null) {
            throw new ConcurrentModificationException(o60.n("Hash code of an element (", obj, ") has changed after it was added to the persistent set."));
        }
        this.f8361b = ((Links) obj2).f8354b;
        return obj;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
