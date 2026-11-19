package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotStateListKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f8492a = new Object();

    public static final void a(int i2, int i3) {
        if (i2 < 0 || i2 >= i3) {
            throw new IndexOutOfBoundsException("index (" + i2 + ") is out of bound of [0, " + i3 + ')');
        }
    }

    public static final boolean b(StateListStateRecord stateListStateRecord, int i2, PersistentList persistentList, boolean z) {
        boolean z2;
        synchronized (f8492a) {
            try {
                int i3 = stateListStateRecord.d;
                if (i3 == i2) {
                    stateListStateRecord.f8524c = persistentList;
                    z2 = true;
                    if (z) {
                        stateListStateRecord.f8525e++;
                    }
                    stateListStateRecord.d = i3 + 1;
                } else {
                    z2 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public static final StateListStateRecord c(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.f8491b;
        stateListStateRecord.getClass();
        return (StateListStateRecord) SnapshotKt.s(stateListStateRecord, snapshotStateList);
    }

    public static final int d(SnapshotStateList snapshotStateList) {
        StateListStateRecord stateListStateRecord = snapshotStateList.f8491b;
        stateListStateRecord.getClass();
        return ((StateListStateRecord) SnapshotKt.g(stateListStateRecord)).f8525e;
    }

    public static final boolean e(SnapshotStateList snapshotStateList, Function1 function1) {
        int i2;
        PersistentList persistentList;
        Object objInvoke;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (f8492a) {
                StateListStateRecord stateListStateRecord = snapshotStateList.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentVectorBuilder persistentVectorBuilderBuilder = persistentList.builder();
            objInvoke = function1.invoke(persistentVectorBuilderBuilder);
            PersistentList persistentListI = persistentVectorBuilderBuilder.i();
            if (Intrinsics.c(persistentListI, persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = snapshotStateList.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, snapshotStateList, snapshotI), i2, persistentListI, true);
            }
            SnapshotKt.m(snapshotI, snapshotStateList);
        } while (!zB);
        return ((Boolean) objInvoke).booleanValue();
    }
}
