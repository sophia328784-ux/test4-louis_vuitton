package androidx.compose.runtime.snapshots;

import defpackage.av0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B3\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/ReadonlySnapshot;", "Landroidx/compose/runtime/snapshots/Snapshot;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "invalid", "Lkotlin/Function1;", "", "", "readObserver", "<init>", "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ReadonlySnapshot extends Snapshot {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f8461f;
    public int g;

    public ReadonlySnapshot(long j2, SnapshotIdSet snapshotIdSet, Function1<Object, Unit> function1) {
        super(j2, snapshotIdSet, (DefaultConstructorMarker) null);
        this.f8461f = function1;
        this.g = 1;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        if (this.f8465c) {
            return;
        }
        l();
        super.c();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Function1 getF8461f() {
        return this.f8461f;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: i */
    public final Function1 getT() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void k() {
        this.g++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        int i2 = this.g - 1;
        this.g = i2;
        if (i2 == 0) {
            a();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        av0 av0Var = SnapshotKt.f8481a;
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        SnapshotKt.b(this);
        return new NestedReadonlySnapshot(this.f8464b, this.f8463a, SnapshotKt.j(function1, true, this.f8461f), this);
    }
}
