package androidx.compose.runtime.snapshots;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\b\"\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotMapSet;", "K", "V", "E", "", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "map", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class SnapshotMapSet<K, V, E> implements Set<E>, KMutableSet {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateMap f8490b;

    public SnapshotMapSet(SnapshotStateMap<K, V> snapshotStateMap) {
        this.f8490b = snapshotStateMap;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.f8490b.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f8490b.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f8490b.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
