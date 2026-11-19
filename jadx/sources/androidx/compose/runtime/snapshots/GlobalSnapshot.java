package androidx.compose.runtime.snapshots;

import defpackage.dy;
import defpackage.jo0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/snapshots/GlobalSnapshot;", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "invalid", "<init>", "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GlobalSnapshot extends MutableSnapshot {
    public static final /* synthetic */ int p = 0;

    public GlobalSnapshot(long j2, SnapshotIdSet snapshotIdSet) {
        super(j2, snapshotIdSet, null, new dy(18));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot C(final Function1 function1, final Function1 function2) {
        return (MutableSnapshot) ((Snapshot) SnapshotKt.d(new jo0(new Function1<SnapshotIdSet, MutableSnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2;
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.f8483c) {
                    j2 = SnapshotKt.f8484e;
                    SnapshotKt.f8484e = 1 + j2;
                }
                return new MutableSnapshot(j2, snapshotIdSet, function1, function2);
            }
        }, 5)));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        synchronized (SnapshotKt.f8483c) {
            o();
        }
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
        SnapshotKt.d(SnapshotKt.f8481a);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(final Function1 function1) {
        return (ReadonlySnapshot) ((Snapshot) SnapshotKt.d(new jo0(new Function1<SnapshotIdSet, ReadonlySnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2;
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.f8483c) {
                    j2 = SnapshotKt.f8484e;
                    SnapshotKt.f8484e = 1 + j2;
                }
                return new ReadonlySnapshot(j2, snapshotIdSet, function1);
            }
        }, 5)));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }
}
