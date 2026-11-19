package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import defpackage.xo0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableLongStateImpl;", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/MutableLongState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "<init>", "(J)V", "LongStateStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SnapshotMutableLongStateImpl extends StateObjectImpl implements MutableLongState, SnapshotMutableState<Long> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LongStateStateRecord f8131c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableLongStateImpl$LongStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "value", "<init>", "(JJ)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class LongStateStateRecord extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f8132c;

        public LongStateStateRecord(long j2, long j3) {
            super(j2);
            this.f8132c = j3;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.f8132c = ((LongStateStateRecord) stateRecord).f8132c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return c(SnapshotKt.i().getF8464b());
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new LongStateStateRecord(j2, this.f8132c);
        }
    }

    public SnapshotMutableLongStateImpl(long j2) {
        Snapshot snapshotI = SnapshotKt.i();
        LongStateStateRecord longStateStateRecord = new LongStateStateRecord(snapshotI.getF8464b(), j2);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            longStateStateRecord.f8534b = new LongStateStateRecord(1L, j2);
        }
        this.f8131c = longStateStateRecord;
    }

    @Override // androidx.compose.runtime.MutableLongState
    public final void D(long j2) {
        Snapshot snapshotI;
        LongStateStateRecord longStateStateRecord = (LongStateStateRecord) SnapshotKt.g(this.f8131c);
        if (longStateStateRecord.f8132c != j2) {
            LongStateStateRecord longStateStateRecord2 = this.f8131c;
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                ((LongStateStateRecord) SnapshotKt.n(longStateStateRecord2, this, snapshotI, longStateStateRecord)).f8132c = j2;
            }
            SnapshotKt.m(snapshotI, this);
        }
    }

    @Override // androidx.compose.runtime.MutableState
    public final Object H() {
        return Long.valueOf(b());
    }

    @Override // androidx.compose.runtime.MutableLongState, androidx.compose.runtime.LongState
    public final long b() {
        return ((LongStateStateRecord) SnapshotKt.s(this.f8131c, this)).f8132c;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    /* JADX INFO: renamed from: e */
    public final SnapshotMutationPolicy getF8133c() {
        return StructuralEqualityPolicy.f8158a;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Function1 q() {
        return new xo0(this, 25);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f8131c = (LongStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8131c;
    }

    public final String toString() {
        return "MutableLongState(value=" + ((LongStateStateRecord) SnapshotKt.g(this.f8131c)).f8132c + ")@" + hashCode();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((LongStateStateRecord) stateRecord2).f8132c == ((LongStateStateRecord) stateRecord3).f8132c) {
            return stateRecord2;
        }
        return null;
    }
}
