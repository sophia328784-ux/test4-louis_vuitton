package androidx.compose.runtime.snapshots;

import defpackage.r81;
import defpackage.v7;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010&\n\u0002\b\u0004\b\"\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B5\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0018\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/snapshots/StateMapMutableIterator;", "K", "V", "", "Landroidx/compose/runtime/snapshots/SnapshotStateMap;", "map", "", "", "iterator", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class StateMapMutableIterator<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateMap f8528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterator f8529c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map.Entry f8530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map.Entry f8531f;

    public StateMapMutableIterator(SnapshotStateMap<K, V> snapshotStateMap, Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        this.f8528b = snapshotStateMap;
        this.f8529c = it;
        this.d = snapshotStateMap.c().d;
        a();
    }

    public final void a() {
        this.f8530e = this.f8531f;
        Iterator it = this.f8529c;
        this.f8531f = it.hasNext() ? (Map.Entry) it.next() : null;
    }

    public final boolean hasNext() {
        return this.f8531f != null;
    }

    public final void remove() {
        SnapshotStateMap snapshotStateMap = this.f8528b;
        if (snapshotStateMap.c().d != this.d) {
            v7.c();
            return;
        }
        Map.Entry entry = this.f8530e;
        if (entry == null) {
            r81.b();
            return;
        }
        snapshotStateMap.remove(entry.getKey());
        this.f8530e = null;
        this.d = snapshotStateMap.c().d;
    }
}
