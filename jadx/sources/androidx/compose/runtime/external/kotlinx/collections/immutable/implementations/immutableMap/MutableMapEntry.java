package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.b21;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B+\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u0006\u0010\b\u001a\u00028\u0001¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/MutableMapEntry;", "K", "V", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/MapEntry;", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderEntriesIterator;", "parentIterator", ConfigurationName.KEY, "value", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderEntriesIterator;Ljava/lang/Object;Ljava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    public final PersistentHashMapBuilderEntriesIterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f8323e;

    public MutableMapEntry(PersistentHashMapBuilderEntriesIterator<K, V> persistentHashMapBuilderEntriesIterator, K k2, V v) {
        super(k2, v);
        this.d = persistentHashMapBuilderEntriesIterator;
        this.f8323e = v;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    /* JADX INFO: renamed from: getValue */
    public final Object getF8322c() {
        return this.f8323e;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.f8323e;
        this.f8323e = obj;
        PersistentHashMapBuilderBaseIterator persistentHashMapBuilderBaseIterator = this.d.f8337b;
        PersistentHashMapBuilder persistentHashMapBuilder = persistentHashMapBuilderBaseIterator.f8333e;
        Object obj3 = this.f8321b;
        if (!persistentHashMapBuilder.containsKey(obj3)) {
            return obj2;
        }
        boolean z = persistentHashMapBuilderBaseIterator.d;
        if (!z) {
            persistentHashMapBuilder.put(obj3, obj);
        } else {
            if (!z) {
                b21.x();
                return null;
            }
            TrieNodeBaseIterator trieNodeBaseIterator = persistentHashMapBuilderBaseIterator.f8327b[persistentHashMapBuilderBaseIterator.f8328c];
            Object obj4 = trieNodeBaseIterator.f8350b[trieNodeBaseIterator.d];
            persistentHashMapBuilder.put(obj3, obj);
            persistentHashMapBuilderBaseIterator.d(obj4 != null ? obj4.hashCode() : 0, persistentHashMapBuilder.d, obj4, 0);
        }
        persistentHashMapBuilderBaseIterator.f8335h = persistentHashMapBuilder.f8332f;
        return obj2;
    }
}
