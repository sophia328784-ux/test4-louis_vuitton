package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "", "Success", "Failure", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotApplyResult {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "Landroidx/compose/runtime/snapshots/Snapshot;", "snapshot", "<init>", "(Landroidx/compose/runtime/snapshots/Snapshot;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Failure extends SnapshotApplyResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Snapshot f8466a;

        public Failure(Snapshot snapshot) {
            super(null);
            this.f8466a = snapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public final void a() throws SnapshotApplyConflictException {
            Snapshot snapshot = this.f8466a;
            snapshot.c();
            throw new SnapshotApplyConflictException(snapshot);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Success extends SnapshotApplyResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Success f8467a = new Success(null);

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public final void a() {
        }
    }

    public SnapshotApplyResult(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract void a();
}
