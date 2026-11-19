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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl;", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/MutableDoubleState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "<init>", "(D)V", "DoubleStateStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SnapshotMutableDoubleStateImpl extends StateObjectImpl implements MutableDoubleState, SnapshotMutableState<Double> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DoubleStateStateRecord f8125c;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableDoubleStateImpl$DoubleStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "", "value", "<init>", "(JD)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DoubleStateStateRecord extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f8126c;

        public DoubleStateStateRecord(long j2, double d) {
            super(j2);
            this.f8126c = d;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.f8126c = ((DoubleStateStateRecord) stateRecord).f8126c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return c(this.f8533a);
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new DoubleStateStateRecord(j2, this.f8126c);
        }
    }

    public SnapshotMutableDoubleStateImpl(double d) {
        Snapshot snapshotI = SnapshotKt.i();
        DoubleStateStateRecord doubleStateStateRecord = new DoubleStateStateRecord(snapshotI.getF8464b(), d);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            doubleStateStateRecord.f8534b = new DoubleStateStateRecord(1L, d);
        }
        this.f8125c = doubleStateStateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Object H() {
        return Double.valueOf(d());
    }

    @Override // androidx.compose.runtime.MutableDoubleState, androidx.compose.runtime.DoubleState
    public final double d() {
        return ((DoubleStateStateRecord) SnapshotKt.s(this.f8125c, this)).f8126c;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    /* JADX INFO: renamed from: e */
    public final SnapshotMutationPolicy getF8133c() {
        return StructuralEqualityPolicy.f8158a;
    }

    @Override // androidx.compose.runtime.MutableDoubleState
    public final void p(double d) {
        Snapshot snapshotI;
        DoubleStateStateRecord doubleStateStateRecord = (DoubleStateStateRecord) SnapshotKt.g(this.f8125c);
        if (doubleStateStateRecord.f8126c == d) {
            return;
        }
        DoubleStateStateRecord doubleStateStateRecord2 = this.f8125c;
        synchronized (SnapshotKt.f8483c) {
            Snapshot.f8462e.getClass();
            snapshotI = SnapshotKt.i();
            ((DoubleStateStateRecord) SnapshotKt.n(doubleStateStateRecord2, this, snapshotI, doubleStateStateRecord)).f8126c = d;
        }
        SnapshotKt.m(snapshotI, this);
    }

    @Override // androidx.compose.runtime.MutableState
    public final Function1 q() {
        return new xo0(this, 22);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f8125c = (DoubleStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8125c;
    }

    public final String toString() {
        return "MutableDoubleState(value=" + ((DoubleStateStateRecord) SnapshotKt.g(this.f8125c)).f8126c + ")@" + hashCode();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((DoubleStateStateRecord) stateRecord2).f8126c == ((DoubleStateStateRecord) stateRecord3).f8126c) {
            return stateRecord2;
        }
        return null;
    }
}
