package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00010\u0003B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;", "K", "V", "Landroidx/compose/runtime/snapshots/SnapshotMapSet;", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "map", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SnapshotMapValueSet<K, V> extends SnapshotMapSet<K, V, V> {
    public SnapshotMapValueSet(SnapshotStateMap<K, V> snapshotStateMap) {
        super(snapshotStateMap);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8490b.containsValue(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!this.f8490b.containsValue(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        SnapshotStateMap snapshotStateMap = this.f8490b;
        return new StateMapMutableValuesIterator(snapshotStateMap, ((ImmutableSet) snapshotStateMap.c().f8496c.entrySet()).iterator());
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        Object next;
        SnapshotStateMap snapshotStateMap = this.f8490b;
        Iterator it = ((SnapshotMapEntrySet) snapshotStateMap.f8494c).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Map.Entry) next).getValue(), obj));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return false;
        }
        snapshotStateMap.remove(entry.getKey());
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        PersistentMap persistentMap;
        int i2;
        Snapshot snapshotI;
        boolean zA;
        Set setB0 = CollectionsKt.B0(collection);
        SnapshotStateMap snapshotStateMap = this.f8490b;
        boolean z = false;
        do {
            synchronized (SnapshotStateMapKt.f8497a) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.f8493b;
                stateMapStateRecord.getClass();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
                persistentMap = stateMapStateRecord2.f8496c;
                i2 = stateMapStateRecord2.d;
            }
            persistentMap.getClass();
            PersistentMap.Builder builder = persistentMap.builder();
            Object it = ((SnapshotMapEntrySet) snapshotStateMap.f8494c).iterator();
            while (((StateMapMutableIterator) it).hasNext()) {
                Map.Entry entry = (Map.Entry) ((StateMapMutableEntriesIterator) it).next();
                if (setB0.contains(entry.getValue())) {
                    builder.remove(entry.getKey());
                    z = true;
                }
            }
            PersistentMap persistentMapG = builder.g();
            if (Intrinsics.c(persistentMapG, persistentMap)) {
                break;
            }
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateMap.a(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, snapshotStateMap, snapshotI), i2, persistentMapG);
            }
            SnapshotKt.m(snapshotI, snapshotStateMap);
        } while (!zA);
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        PersistentMap persistentMap;
        int i2;
        Snapshot snapshotI;
        boolean zA;
        Set setB0 = CollectionsKt.B0(collection);
        SnapshotStateMap snapshotStateMap = this.f8490b;
        boolean z = false;
        do {
            synchronized (SnapshotStateMapKt.f8497a) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.f8493b;
                stateMapStateRecord.getClass();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
                persistentMap = stateMapStateRecord2.f8496c;
                i2 = stateMapStateRecord2.d;
            }
            persistentMap.getClass();
            PersistentMap.Builder builder = persistentMap.builder();
            Object it = ((SnapshotMapEntrySet) snapshotStateMap.f8494c).iterator();
            while (((StateMapMutableIterator) it).hasNext()) {
                Map.Entry entry = (Map.Entry) ((StateMapMutableEntriesIterator) it).next();
                if (!setB0.contains(entry.getValue())) {
                    builder.remove(entry.getKey());
                    z = true;
                }
            }
            PersistentMap persistentMapG = builder.g();
            if (Intrinsics.c(persistentMapG, persistentMap)) {
                break;
            }
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateMap.a(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, snapshotStateMap, snapshotI), i2, persistentMapG);
            }
            SnapshotKt.m(snapshotI, snapshotStateMap);
        } while (!zA);
        return z;
    }
}
