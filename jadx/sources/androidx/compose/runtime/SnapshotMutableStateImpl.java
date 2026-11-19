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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\tB\u001d\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableStateImpl;", "T", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/snapshots/SnapshotMutableState;", "value", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "policy", "<init>", "(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V", "StateStateRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SnapshotMutableStateImpl<T> extends StateObjectImpl implements SnapshotMutableState<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SnapshotMutationPolicy f8133c;
    public StateStateRecord d;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B\u001b\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0006\u001a\u00028\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;", "T", "Landroidx/compose/runtime/snapshots/StateRecord;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "myValue", "<init>", "(JLjava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class StateStateRecord<T> extends StateRecord {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f8134c;

        public StateStateRecord(long j2, T t) {
            super(j2);
            this.f8134c = t;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.f8134c = ((StateStateRecord) stateRecord).f8134c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return new StateStateRecord(SnapshotKt.i().getF8464b(), this.f8134c);
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new StateStateRecord(SnapshotKt.i().getF8464b(), this.f8134c);
        }
    }

    public SnapshotMutableStateImpl(T t, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.f8133c = snapshotMutationPolicy;
        Snapshot snapshotI = SnapshotKt.i();
        StateStateRecord stateStateRecord = new StateStateRecord(snapshotI.getF8464b(), t);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            stateStateRecord.f8534b = new StateStateRecord(1L, t);
        }
        this.d = stateStateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Object H() {
        return getF10755b();
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    /* JADX INFO: renamed from: e, reason: from getter */
    public final SnapshotMutationPolicy getF8133c() {
        return this.f8133c;
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        return ((StateStateRecord) SnapshotKt.s(this.d, this)).f8134c;
    }

    @Override // androidx.compose.runtime.MutableState
    public final Function1 q() {
        return new xo0(this, 26);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.d = (StateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.d;
    }

    @Override // androidx.compose.runtime.MutableState
    public final void setValue(Object obj) {
        Snapshot snapshotI;
        StateStateRecord stateStateRecord = (StateStateRecord) SnapshotKt.g(this.d);
        if (this.f8133c.a(stateStateRecord.f8134c, obj)) {
            return;
        }
        StateStateRecord stateStateRecord2 = this.d;
        synchronized (SnapshotKt.f8483c) {
            Snapshot.f8462e.getClass();
            snapshotI = SnapshotKt.i();
            ((StateStateRecord) SnapshotKt.n(stateStateRecord2, this, snapshotI, stateStateRecord)).f8134c = obj;
        }
        SnapshotKt.m(snapshotI, this);
    }

    public final String toString() {
        return "MutableState(value=" + ((StateStateRecord) SnapshotKt.g(this.d)).f8134c + ")@" + hashCode();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (this.f8133c.a(((StateStateRecord) stateRecord2).f8134c, ((StateStateRecord) stateRecord3).f8134c)) {
            return stateRecord2;
        }
        return null;
    }
}
