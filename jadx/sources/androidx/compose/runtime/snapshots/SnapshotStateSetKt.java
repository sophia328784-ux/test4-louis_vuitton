package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotStateSetKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f8517a = new Object();

    public static final boolean a(StateSetStateRecord stateSetStateRecord, int i2, PersistentSet persistentSet) {
        boolean z;
        synchronized (f8517a) {
            int i3 = stateSetStateRecord.d;
            if (i3 == i2) {
                stateSetStateRecord.f8539c = persistentSet;
                z = true;
                stateSetStateRecord.d = i3 + 1;
            } else {
                z = false;
            }
        }
        return z;
    }

    public static final StateSetStateRecord b(SnapshotStateSet snapshotStateSet) {
        StateSetStateRecord stateSetStateRecord = snapshotStateSet.f8516b;
        stateSetStateRecord.getClass();
        return (StateSetStateRecord) SnapshotKt.s(stateSetStateRecord, snapshotStateSet);
    }
}
