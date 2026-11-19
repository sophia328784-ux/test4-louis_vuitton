package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\b\u0000\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/snapshots/StateSetStateRecord;", "T", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "set", "<init>", "(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StateSetStateRecord<T> extends StateRecord {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PersistentSet f8539c;
    public int d;

    public StateSetStateRecord(long j2, PersistentSet<? extends T> persistentSet) {
        super(j2);
        this.f8539c = persistentSet;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void a(StateRecord stateRecord) {
        synchronized (SnapshotStateSetKt.f8517a) {
            stateRecord.getClass();
            this.f8539c = ((StateSetStateRecord) stateRecord).f8539c;
            this.d = ((StateSetStateRecord) stateRecord).d;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord b() {
        return new StateSetStateRecord(SnapshotKt.i().getF8464b(), this.f8539c);
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord c(long j2) {
        return new StateSetStateRecord(j2, this.f8539c);
    }
}
