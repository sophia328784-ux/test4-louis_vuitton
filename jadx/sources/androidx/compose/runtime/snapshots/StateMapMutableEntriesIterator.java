package androidx.compose.runtime.snapshots;

import defpackage.r81;
import defpackage.v7;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010&\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00050\u0004B5\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0018\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;", "K", "V", "Landroidx/compose/runtime/snapshots/StateMapMutableIterator;", "", "", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "map", "", "", "iterator", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StateMapMutableEntriesIterator<K, V> extends StateMapMutableIterator<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.StateMapMutableEntriesIterator$next$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010'\n\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class AnonymousClass1 implements Map.Entry<Object, Object>, KMutableMap.Entry {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f8526b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f8527c;

        public AnonymousClass1() {
            Map.Entry entry = StateMapMutableEntriesIterator.this.f8530e;
            entry.getClass();
            this.f8526b = entry.getKey();
            Map.Entry entry2 = StateMapMutableEntriesIterator.this.f8530e;
            entry2.getClass();
            this.f8527c = entry2.getValue();
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f8526b;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f8527c;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            StateMapMutableEntriesIterator stateMapMutableEntriesIterator = StateMapMutableEntriesIterator.this;
            SnapshotStateMap snapshotStateMap = stateMapMutableEntriesIterator.f8528b;
            if (snapshotStateMap.c().d != stateMapMutableEntriesIterator.d) {
                v7.c();
                return null;
            }
            Object obj2 = this.f8527c;
            snapshotStateMap.put(this.f8526b, obj);
            this.f8527c = obj;
            return obj2;
        }
    }

    public StateMapMutableEntriesIterator(SnapshotStateMap<K, V> snapshotStateMap, Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        super(snapshotStateMap, it);
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        if (this.f8530e != null) {
            return new AnonymousClass1();
        }
        r81.b();
        return null;
    }
}
