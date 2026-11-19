package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\fB/\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;", "E", "Lkotlin/collections/AbstractSet;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "", "firstElement", "lastElement", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;", "hashMap", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentOrderedSet<E> extends AbstractSet<E> implements PersistentSet<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f8355f = new Companion(null);
    public static final PersistentOrderedSet g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8356c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PersistentHashMap f8357e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet$Companion;", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;", "", "EMPTY", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        PersistentHashMap.g.getClass();
        PersistentHashMap persistentHashMap = PersistentHashMap.f8324h;
        persistentHashMap.getClass();
        EndOfChain endOfChain = EndOfChain.f8367a;
        g = new PersistentOrderedSet(endOfChain, endOfChain, persistentHashMap);
    }

    public PersistentOrderedSet(Object obj, Object obj2, PersistentHashMap<E, Links> persistentHashMap) {
        this.f8356c = obj;
        this.d = obj2;
        this.f8357e = persistentHashMap;
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    public final PersistentOrderedSet add(Object obj) {
        PersistentHashMap persistentHashMap = this.f8357e;
        if (persistentHashMap.containsKey(obj)) {
            return this;
        }
        if (isEmpty()) {
            return new PersistentOrderedSet(obj, obj, persistentHashMap.i(obj, new Links()));
        }
        Object obj2 = this.d;
        Object obj3 = persistentHashMap.get(obj2);
        obj3.getClass();
        return new PersistentOrderedSet(this.f8356c, obj, persistentHashMap.i(obj2, new Links(((Links) obj3).f8353a, obj)).i(obj, new Links(obj2)));
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    public final PersistentSet addAll(Collection collection) {
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = new PersistentOrderedSetBuilder(this);
        persistentOrderedSetBuilder.addAll(collection);
        return persistentOrderedSetBuilder.h();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    public final PersistentOrderedSetBuilder builder() {
        return new PersistentOrderedSetBuilder(this);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.f8357e.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF8300e() {
        return this.f8357e.getF8326f();
    }

    @Override // kotlin.collections.AbstractSet, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentOrderedSetIterator(this.f8356c, this.f8357e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    public final PersistentOrderedSet remove(Object obj) {
        PersistentHashMap persistentHashMapI = this.f8357e;
        Links links = (Links) persistentHashMapI.get(obj);
        if (links == null) {
            return this;
        }
        Object obj2 = links.f8353a;
        Object obj3 = links.f8354b;
        TrieNode trieNode = persistentHashMapI.f8325e;
        TrieNode trieNodeV = trieNode.v(obj != null ? obj.hashCode() : 0, 0, obj);
        if (trieNode != trieNodeV) {
            if (trieNodeV == null) {
                PersistentHashMap.g.getClass();
                persistentHashMapI = PersistentHashMap.f8324h;
                persistentHashMapI.getClass();
            } else {
                persistentHashMapI = new PersistentHashMap(trieNodeV, persistentHashMapI.f8326f - 1);
            }
        }
        EndOfChain endOfChain = EndOfChain.f8367a;
        if (obj2 != endOfChain) {
            V v = persistentHashMapI.get(obj2);
            v.getClass();
            persistentHashMapI = persistentHashMapI.i(obj2, new Links(((Links) v).f8353a, obj3));
        }
        if (obj3 != endOfChain) {
            V v2 = persistentHashMapI.get(obj3);
            v2.getClass();
            persistentHashMapI = persistentHashMapI.i(obj3, new Links(obj2, ((Links) v2).f8354b));
        }
        Object obj4 = obj2 != endOfChain ? this.f8356c : obj3;
        if (obj3 != endOfChain) {
            obj2 = this.d;
        }
        return new PersistentOrderedSet(obj4, obj2, persistentHashMapI);
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    public final PersistentSet removeAll(Collection collection) {
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = new PersistentOrderedSetBuilder(this);
        persistentOrderedSetBuilder.removeAll(collection);
        return persistentOrderedSetBuilder.h();
    }
}
