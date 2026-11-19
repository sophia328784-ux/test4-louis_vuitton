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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003:\u0001\bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/MutableFloatState;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "", "value", "<init>", "(F)V", "FloatStateStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SnapshotMutableFloatStateImpl extends StateObjectImpl implements MutableFloatState, SnapshotMutableState<Float> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FloatStateStateRecord f8127c;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "", "value", "<init>", "(JF)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FloatStateStateRecord extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f8128c;

        public FloatStateStateRecord(long j2, float f2) {
            super(j2);
            this.f8128c = f2;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.f8128c = ((FloatStateStateRecord) stateRecord).f8128c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return c(SnapshotKt.i().getF8464b());
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new FloatStateStateRecord(j2, this.f8128c);
        }
    }

    public SnapshotMutableFloatStateImpl(float f2) {
        Snapshot snapshotI = SnapshotKt.i();
        FloatStateStateRecord floatStateStateRecord = new FloatStateStateRecord(snapshotI.getF8464b(), f2);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            floatStateStateRecord.f8534b = new FloatStateStateRecord(1L, f2);
        }
        this.f8127c = floatStateStateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Object H() {
        return Float.valueOf(a());
    }

    @Override // androidx.compose.runtime.MutableFloatState, androidx.compose.runtime.FloatState
    public final float a() {
        return ((FloatStateStateRecord) SnapshotKt.s(this.f8127c, this)).f8128c;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    /* JADX INFO: renamed from: e */
    public final SnapshotMutationPolicy getF8133c() {
        return StructuralEqualityPolicy.f8158a;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Function1 q() {
        return new xo0(this, 23);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f8127c = (FloatStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8127c;
    }

    public final String toString() {
        return "MutableFloatState(value=" + ((FloatStateStateRecord) SnapshotKt.g(this.f8127c)).f8128c + ")@" + hashCode();
    }

    @Override // androidx.compose.runtime.MutableFloatState
    public final void w(float f2) {
        Snapshot snapshotI;
        FloatStateStateRecord floatStateStateRecord = (FloatStateStateRecord) SnapshotKt.g(this.f8127c);
        if (floatStateStateRecord.f8128c == f2) {
            return;
        }
        FloatStateStateRecord floatStateStateRecord2 = this.f8127c;
        synchronized (SnapshotKt.f8483c) {
            Snapshot.f8462e.getClass();
            snapshotI = SnapshotKt.i();
            ((FloatStateStateRecord) SnapshotKt.n(floatStateStateRecord2, this, snapshotI, floatStateStateRecord)).f8128c = f2;
        }
        SnapshotKt.m(snapshotI, this);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((FloatStateStateRecord) stateRecord2).f8128c == ((FloatStateStateRecord) stateRecord3).f8128c) {
            return stateRecord2;
        }
        return null;
    }
}
