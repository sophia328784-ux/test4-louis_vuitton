package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableSet;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;", "E", "Lkotlin/collections/AbstractMutableSet;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;", "set", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentOrderedSetBuilder<E> extends AbstractMutableSet<E> implements PersistentSet.Builder<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersistentOrderedSet f8358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f8359c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PersistentHashMapBuilder f8360e;

    public PersistentOrderedSetBuilder(PersistentOrderedSet<E> persistentOrderedSet) {
        this.f8358b = persistentOrderedSet;
        this.f8359c = persistentOrderedSet.f8356c;
        this.d = persistentOrderedSet.d;
        this.f8360e = persistentOrderedSet.f8357e.builder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.f8360e;
        if (persistentHashMapBuilder.containsKey(obj)) {
            return false;
        }
        if (isEmpty()) {
            this.f8359c = obj;
            this.d = obj;
            persistentHashMapBuilder.put(obj, new Links());
            return true;
        }
        V v = persistentHashMapBuilder.get(this.d);
        v.getClass();
        persistentHashMapBuilder.put(this.d, new Links(((Links) v).f8353a, obj));
        persistentHashMapBuilder.put(obj, new Links(this.d));
        this.d = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8360e.clear();
        EndOfChain endOfChain = EndOfChain.f8367a;
        this.f8359c = endOfChain;
        this.d = endOfChain;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f8360e.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int f() {
        return this.f8360e.getG();
    }

    public final PersistentOrderedSet h() {
        PersistentHashMap persistentHashMapG = this.f8360e.g();
        PersistentOrderedSet persistentOrderedSet = this.f8358b;
        if (persistentHashMapG != persistentOrderedSet.f8357e) {
            persistentOrderedSet = new PersistentOrderedSet(this.f8359c, this.d, persistentHashMapG);
        }
        this.f8358b = persistentOrderedSet;
        return persistentOrderedSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentOrderedSetMutableIterator(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.f8360e;
        Links links = (Links) persistentHashMapBuilder.remove(obj);
        if (links == null) {
            return false;
        }
        Object obj2 = links.f8354b;
        Object obj3 = links.f8353a;
        EndOfChain endOfChain = EndOfChain.f8367a;
        if (obj3 != endOfChain) {
            V v = persistentHashMapBuilder.get(obj3);
            v.getClass();
            persistentHashMapBuilder.put(obj3, new Links(((Links) v).f8353a, obj2));
        } else {
            this.f8359c = obj2;
        }
        if (obj2 == endOfChain) {
            this.d = obj3;
            return true;
        }
        V v2 = persistentHashMapBuilder.get(obj2);
        v2.getClass();
        persistentHashMapBuilder.put(obj2, new Links(obj3, ((Links) v2).f8354b));
        return true;
    }
}
