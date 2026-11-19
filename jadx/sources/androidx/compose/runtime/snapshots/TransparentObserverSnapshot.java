package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.av0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;", "Landroidx/compose/runtime/snapshots/Snapshot;", "parentSnapshot", "Lkotlin/Function1;", "", "", "specifiedReadObserver", "", "mergeParentObservers", "ownsParentSnapshot", "<init>", "(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransparentObserverSnapshot extends Snapshot {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Snapshot f8545f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f8546h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Function1 f8547i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f8548j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransparentObserverSnapshot(Snapshot snapshot, Function1<Object, Unit> function1, boolean z, boolean z2) {
        Function1 f8547i;
        super(0L, SnapshotIdSet.g, (DefaultConstructorMarker) null);
        av0 av0Var = SnapshotKt.f8481a;
        SnapshotIdSet.f8473f.getClass();
        this.f8545f = snapshot;
        this.g = z;
        this.f8546h = z2;
        this.f8547i = SnapshotKt.j(function1, z, (snapshot == null || (f8547i = snapshot.getF8461f()) == null) ? SnapshotKt.f8488j.f8454f : f8547i);
        this.f8548j = Thread_jvmKt.a();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        Snapshot snapshot;
        this.f8465c = true;
        if (!this.f8546h || (snapshot = this.f8545f) == null) {
            return;
        }
        snapshot.c();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: d */
    public final SnapshotIdSet getF8463a() {
        return v().getF8463a();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Function1 getF8461f() {
        return this.f8547i;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return v().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: g */
    public final long getF8464b() {
        return v().getF8464b();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: i */
    public final Function1 getG() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void k() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
        v().m();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        v().n(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        Function1 function1J = SnapshotKt.j(function1, true, this.f8547i);
        return !this.g ? SnapshotKt.f(v().u(null), function1J, true) : v().u(function1J);
    }

    public final Snapshot v() {
        Snapshot snapshot = this.f8545f;
        return snapshot == null ? SnapshotKt.f8488j : snapshot;
    }
}
