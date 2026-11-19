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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableIntStateImpl;", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/MutableIntState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "<init>", "(I)V", "IntStateStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SnapshotMutableIntStateImpl extends StateObjectImpl implements MutableIntState, SnapshotMutableState<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IntStateStateRecord f8129c;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "", "value", "<init>", "(JI)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IntStateStateRecord extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f8130c;

        public IntStateStateRecord(long j2, int i2) {
            super(j2);
            this.f8130c = i2;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.f8130c = ((IntStateStateRecord) stateRecord).f8130c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return c(SnapshotKt.i().getF8464b());
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new IntStateStateRecord(j2, this.f8130c);
        }
    }

    public SnapshotMutableIntStateImpl(int i2) {
        Snapshot snapshotI = SnapshotKt.i();
        IntStateStateRecord intStateStateRecord = new IntStateStateRecord(snapshotI.getF8464b(), i2);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            intStateStateRecord.f8534b = new IntStateStateRecord(1L, i2);
        }
        this.f8129c = intStateStateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Object H() {
        return Integer.valueOf(f());
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    /* JADX INFO: renamed from: e */
    public final SnapshotMutationPolicy getF8133c() {
        return StructuralEqualityPolicy.f8158a;
    }

    @Override // androidx.compose.runtime.MutableIntState, androidx.compose.runtime.IntState
    public final int f() {
        return ((IntStateStateRecord) SnapshotKt.s(this.f8129c, this)).f8130c;
    }

    @Override // androidx.compose.runtime.MutableIntState
    public final void i(int i2) {
        Snapshot snapshotI;
        IntStateStateRecord intStateStateRecord = (IntStateStateRecord) SnapshotKt.g(this.f8129c);
        if (intStateStateRecord.f8130c != i2) {
            IntStateStateRecord intStateStateRecord2 = this.f8129c;
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                ((IntStateStateRecord) SnapshotKt.n(intStateStateRecord2, this, snapshotI, intStateStateRecord)).f8130c = i2;
            }
            SnapshotKt.m(snapshotI, this);
        }
    }

    @Override // androidx.compose.runtime.MutableState
    public final Function1 q() {
        return new xo0(this, 24);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f8129c = (IntStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8129c;
    }

    public final String toString() {
        return "MutableIntState(value=" + ((IntStateStateRecord) SnapshotKt.g(this.f8129c)).f8130c + ")@" + hashCode();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((IntStateStateRecord) stateRecord2).f8130c == ((IntStateStateRecord) stateRecord3).f8130c) {
            return stateRecord2;
        }
        return null;
    }
}
