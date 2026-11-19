package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.av0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "parentSnapshot", "Lkotlin/Function1;", "", "", "specifiedReadObserver", "specifiedWriteObserver", "", "mergeParentObservers", "ownsParentSnapshot", "<init>", "(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransparentObserverMutableSnapshot extends MutableSnapshot {
    public final MutableSnapshot p;
    public final boolean q;
    public final boolean r;
    public Function1 s;
    public Function1 t;
    public final long u;

    /* JADX WARN: Illegal instructions before constructor call */
    public TransparentObserverMutableSnapshot(MutableSnapshot mutableSnapshot, Function1<Object, Unit> function1, Function1<Object, Unit> function2, boolean z, boolean z2) {
        Function1 t;
        Function1 function1E;
        av0 av0Var = SnapshotKt.f8481a;
        SnapshotIdSet.f8473f.getClass();
        super(0L, SnapshotIdSet.g, SnapshotKt.j(function1, z, (mutableSnapshot == null || (function1E = mutableSnapshot.e()) == null) ? SnapshotKt.f8488j.f8454f : function1E), SnapshotKt.k(function2, (mutableSnapshot == null || (t = mutableSnapshot.getG()) == null) ? SnapshotKt.f8488j.g : t));
        this.p = mutableSnapshot;
        this.q = z;
        this.r = z2;
        this.s = this.f8454f;
        this.t = this.g;
        this.u = Thread_jvmKt.a();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final void B(MutableScatterSet mutableScatterSet) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot C(Function1 function1, Function1 function2) {
        Function1 function1J = SnapshotKt.j(function1, true, this.s);
        Function1 function1K = SnapshotKt.k(function2, this.t);
        return !this.q ? new TransparentObserverMutableSnapshot(D().C(null, function1K), function1J, function1K, false, true) : D().C(function1J, function1K);
    }

    public final MutableSnapshot D() {
        MutableSnapshot mutableSnapshot = this.p;
        return mutableSnapshot == null ? SnapshotKt.f8488j : mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        MutableSnapshot mutableSnapshot;
        this.f8465c = true;
        if (!this.r || (mutableSnapshot = this.p) == null) {
            return;
        }
        mutableSnapshot.c();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: d */
    public final SnapshotIdSet getF8463a() {
        return D().getF8463a();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Function1 getF8461f() {
        return this.s;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return D().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: g */
    public final long getF8464b() {
        return D().getF8464b();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: h */
    public final int getF8455h() {
        return D().getF8455h();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: i, reason: from getter */
    public final Function1 getG() {
        return this.t;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void k() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
        D().m();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        D().n(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void r(SnapshotIdSet snapshotIdSet) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void s(long j2) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void t(int i2) {
        D().t(i2);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        Function1 function1J = SnapshotKt.j(function1, true, this.s);
        return !this.q ? SnapshotKt.f(D().u(null), function1J, true) : D().u(function1J);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        return D().w();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    /* JADX INFO: renamed from: x */
    public final MutableScatterSet getF8456i() {
        return D().getF8456i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    /* JADX INFO: renamed from: y */
    public final Function1 e() {
        return this.s;
    }
}
