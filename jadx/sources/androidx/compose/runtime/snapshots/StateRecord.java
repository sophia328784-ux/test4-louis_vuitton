package androidx.compose.runtime.snapshots;

import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007B\u0011\b\u0017\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/snapshots/StateRecord;", "", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "<init>", "(J)V", "()V", "", com.batch.android.s.b.a.f24015b, "(I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class StateRecord {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f8533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StateRecord f8534b;

    public StateRecord() {
        this(SnapshotKt.i().getF8464b());
    }

    public abstract void a(StateRecord stateRecord);

    public abstract StateRecord b();

    public StateRecord c(long j2) {
        StateRecord stateRecordB = b();
        stateRecordB.f8533a = j2;
        return stateRecordB;
    }

    public StateRecord(long j2) {
        this.f8533a = j2;
    }

    @Deprecated
    public StateRecord(int i2) {
        this(i2);
    }
}
