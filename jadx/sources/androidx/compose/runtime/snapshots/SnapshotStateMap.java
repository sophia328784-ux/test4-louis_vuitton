package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001\u0007B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "K", "V", "Landroidx/compose/runtime/snapshots/StateObject;", "", "<init>", "()V", "StateMapStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotStateMap<K, V> implements StateObject, Map<K, V>, KMutableMap {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StateMapStateRecord f8493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f8494c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Collection f8495e;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B)\b\u0000\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;", "K", "V", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;", "map", "<init>", "(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class StateMapStateRecord<K, V> extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public PersistentMap f8496c;
        public int d;

        public StateMapStateRecord(long j2, PersistentMap<K, ? extends V> persistentMap) {
            super(j2);
            this.f8496c = persistentMap;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) stateRecord;
            synchronized (SnapshotStateMapKt.f8497a) {
                this.f8496c = stateMapStateRecord.f8496c;
                this.d = stateMapStateRecord.d;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return new StateMapStateRecord(SnapshotKt.i().getF8464b(), this.f8496c);
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new StateMapStateRecord(j2, this.f8496c);
        }
    }

    public SnapshotStateMap() {
        PersistentHashMap.g.getClass();
        PersistentHashMap persistentHashMap = PersistentHashMap.f8324h;
        persistentHashMap.getClass();
        Snapshot snapshotI = SnapshotKt.i();
        StateMapStateRecord stateMapStateRecord = new StateMapStateRecord(snapshotI.getF8464b(), persistentHashMap);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            stateMapStateRecord.f8534b = new StateMapStateRecord(1L, persistentHashMap);
        }
        this.f8493b = stateMapStateRecord;
        this.f8494c = new SnapshotMapEntrySet(this);
        this.d = new SnapshotMapKeySet(this);
        this.f8495e = new SnapshotMapValueSet(this);
    }

    public static final boolean a(SnapshotStateMap snapshotStateMap, StateMapStateRecord stateMapStateRecord, int i2, PersistentMap persistentMap) {
        boolean z;
        snapshotStateMap.getClass();
        synchronized (SnapshotStateMapKt.f8497a) {
            int i3 = stateMapStateRecord.d;
            if (i3 == i2) {
                stateMapStateRecord.f8496c = persistentMap;
                z = true;
                stateMapStateRecord.d = i3 + 1;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final StateMapStateRecord c() {
        StateMapStateRecord stateMapStateRecord = this.f8493b;
        stateMapStateRecord.getClass();
        return (StateMapStateRecord) SnapshotKt.s(stateMapStateRecord, this);
    }

    @Override // java.util.Map
    public final void clear() {
        Snapshot snapshotI;
        StateMapStateRecord stateMapStateRecord = this.f8493b;
        stateMapStateRecord.getClass();
        StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
        PersistentHashMap.g.getClass();
        PersistentHashMap persistentHashMap = PersistentHashMap.f8324h;
        persistentHashMap.getClass();
        if (persistentHashMap != stateMapStateRecord2.f8496c) {
            StateMapStateRecord stateMapStateRecord3 = this.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                StateMapStateRecord stateMapStateRecord4 = (StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, this, snapshotI);
                synchronized (SnapshotStateMapKt.f8497a) {
                    stateMapStateRecord4.f8496c = persistentHashMap;
                    stateMapStateRecord4.d++;
                }
            }
            SnapshotKt.m(snapshotI, this);
        }
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return c().f8496c.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return c().f8496c.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.f8494c;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return c().f8496c.get(obj);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return c().f8496c.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.d;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        PersistentMap persistentMap;
        int i2;
        V vPut;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateMapKt.f8497a) {
                StateMapStateRecord stateMapStateRecord = this.f8493b;
                stateMapStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
                persistentMap = stateMapStateRecord2.f8496c;
                i2 = stateMapStateRecord2.d;
            }
            persistentMap.getClass();
            PersistentMap.Builder builder = persistentMap.builder();
            vPut = builder.put(obj, obj2);
            PersistentMap persistentMapG = builder.g();
            if (Intrinsics.c(persistentMapG, persistentMap)) {
                break;
            }
            StateMapStateRecord stateMapStateRecord3 = this.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = a(this, (StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, this, snapshotI), i2, persistentMapG);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return vPut;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        PersistentMap persistentMap;
        int i2;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateMapKt.f8497a) {
                StateMapStateRecord stateMapStateRecord = this.f8493b;
                stateMapStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
                persistentMap = stateMapStateRecord2.f8496c;
                i2 = stateMapStateRecord2.d;
            }
            persistentMap.getClass();
            PersistentMap.Builder builder = persistentMap.builder();
            builder.putAll(map);
            PersistentMap persistentMapG = builder.g();
            if (Intrinsics.c(persistentMapG, persistentMap)) {
                return;
            }
            StateMapStateRecord stateMapStateRecord3 = this.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = a(this, (StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, this, snapshotI), i2, persistentMapG);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f8493b = (StateMapStateRecord) stateRecord;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        PersistentMap persistentMap;
        int i2;
        V vRemove;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateMapKt.f8497a) {
                StateMapStateRecord stateMapStateRecord = this.f8493b;
                stateMapStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.g(stateMapStateRecord);
                persistentMap = stateMapStateRecord2.f8496c;
                i2 = stateMapStateRecord2.d;
            }
            persistentMap.getClass();
            PersistentMap.Builder builder = persistentMap.builder();
            vRemove = builder.remove(obj);
            PersistentMap persistentMapG = builder.g();
            if (Intrinsics.c(persistentMapG, persistentMap)) {
                break;
            }
            StateMapStateRecord stateMapStateRecord3 = this.f8493b;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = a(this, (StateMapStateRecord) SnapshotKt.v(stateMapStateRecord3, this, snapshotI), i2, persistentMapG);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return vRemove;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8493b;
    }

    @Override // java.util.Map
    public final int size() {
        return c().f8496c.size();
    }

    public final String toString() {
        StateMapStateRecord stateMapStateRecord = this.f8493b;
        stateMapStateRecord.getClass();
        return "SnapshotStateMap(value=" + ((StateMapStateRecord) SnapshotKt.g(stateMapStateRecord)).f8496c + ")@" + hashCode();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f8495e;
    }
}
