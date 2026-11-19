package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;", "K", "V", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;", "Lkotlin/collections/AbstractMutableMap;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "map", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PersistentHashMapBuilder<K, V> extends AbstractMutableMap<K, V> implements PersistentMap.Builder<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PersistentHashMap f8329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutabilityOwnership f8330c = new MutabilityOwnership();
    public TrieNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f8331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8332f;
    public int g;

    public PersistentHashMapBuilder(PersistentHashMap<K, V> persistentHashMap) {
        this.f8329b = persistentHashMap;
        PersistentHashMap persistentHashMap2 = this.f8329b;
        this.d = persistentHashMap2.f8325e;
        this.g = persistentHashMap2.getF8326f();
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set c() {
        return new PersistentHashMapBuilderEntries(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        TrieNode.f8343e.getClass();
        TrieNode trieNode = TrieNode.f8344f;
        trieNode.getClass();
        this.d = trieNode;
        h(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.d.d(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set d() {
        return new PersistentHashMapBuilderKeys(this);
    }

    @Override // kotlin.collections.AbstractMutableMap
    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getG() {
        return this.g;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Collection f() {
        return new PersistentHashMapBuilderValues(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    public PersistentHashMap g() {
        TrieNode trieNode = this.d;
        PersistentHashMap persistentHashMap = this.f8329b;
        if (trieNode != persistentHashMap.f8325e) {
            this.f8330c = new MutabilityOwnership();
            persistentHashMap = new PersistentHashMap(this.d, getG());
        }
        this.f8329b = persistentHashMap;
        return persistentHashMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return this.d.g(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    public final void h(int i2) {
        this.g = i2;
        this.f8332f++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.f8331e = null;
        this.d = this.d.l(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        return this.f8331e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        DefaultConstructorMarker defaultConstructorMarker = null;
        PersistentHashMap persistentHashMapG = map instanceof PersistentHashMap ? (PersistentHashMap) map : null;
        if (persistentHashMapG == null) {
            PersistentHashMapBuilder persistentHashMapBuilder = map instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) map : null;
            persistentHashMapG = persistentHashMapBuilder != null ? persistentHashMapBuilder.g() : null;
        }
        if (persistentHashMapG == null) {
            super.putAll(map);
            return;
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, defaultConstructorMarker);
        int i2 = this.g;
        TrieNode trieNode = this.d;
        TrieNode trieNode2 = persistentHashMapG.f8325e;
        trieNode2.getClass();
        this.d = trieNode.m(trieNode2, 0, deltaCounter, this);
        int i3 = (persistentHashMapG.f8326f + i2) - deltaCounter.f8366a;
        if (i2 != i3) {
            h(i3);
        }
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int g = getG();
        TrieNode trieNodeO = this.d.o(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (trieNodeO == null) {
            TrieNode.f8343e.getClass();
            trieNodeO = TrieNode.f8344f;
            trieNodeO.getClass();
        }
        this.d = trieNodeO;
        return g != getG();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        this.f8331e = null;
        TrieNode trieNodeN = this.d.n(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (trieNodeN == null) {
            TrieNode.f8343e.getClass();
            trieNodeN = TrieNode.f8344f;
            trieNodeN.getClass();
        }
        this.d = trieNodeN;
        return this.f8331e;
    }
}
