package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\b\u0000\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/snapshots/StateListStateRecord;", "T", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;", "list", "<init>", "(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StateListStateRecord<T> extends StateRecord {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PersistentList f8524c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8525e;

    public StateListStateRecord(long j2, PersistentList<? extends T> persistentList) {
        super(j2);
        this.f8524c = persistentList;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void a(StateRecord stateRecord) {
        synchronized (SnapshotStateListKt.f8492a) {
            stateRecord.getClass();
            this.f8524c = ((StateListStateRecord) stateRecord).f8524c;
            this.d = ((StateListStateRecord) stateRecord).d;
            this.f8525e = ((StateListStateRecord) stateRecord).f8525e;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord b() {
        return c(SnapshotKt.i().getF8464b());
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord c(long j2) {
        return new StateListStateRecord(j2, this.f8524c);
    }
}
