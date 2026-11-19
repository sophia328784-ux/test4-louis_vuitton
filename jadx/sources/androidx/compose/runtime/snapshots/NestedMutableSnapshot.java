package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001BO\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u0012\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u0012\u0006\u0010\f\u001a\u00020\u0001¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "invalid", "Lkotlin/Function1;", "", "", "readObserver", "writeObserver", "parent", "<init>", "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NestedMutableSnapshot extends MutableSnapshot {
    public final MutableSnapshot p;
    public boolean q;

    public NestedMutableSnapshot(long j2, SnapshotIdSet snapshotIdSet, Function1<Object, Unit> function1, Function1<Object, Unit> function2, MutableSnapshot mutableSnapshot) {
        super(j2, snapshotIdSet, function1, function2);
        this.p = mutableSnapshot;
        mutableSnapshot.k();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        if (this.f8465c) {
            return;
        }
        super.c();
        if (this.q) {
            return;
        }
        this.q = true;
        this.p.l();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        NestedMutableSnapshot nestedMutableSnapshot;
        MutableSnapshot mutableSnapshot = this.p;
        if (mutableSnapshot.n || mutableSnapshot.f8465c) {
            return new SnapshotApplyResult.Failure(this);
        }
        MutableScatterSet mutableScatterSet = this.f8456i;
        long j2 = this.f8464b;
        HashMap mapA = mutableScatterSet != null ? SnapshotKt.a(mutableSnapshot.getF8464b(), this, this.p.getF8463a()) : null;
        Object obj = SnapshotKt.f8483c;
        synchronized (obj) {
            try {
                SnapshotKt.b(this);
                if (mutableScatterSet == null || mutableScatterSet.d == 0) {
                    nestedMutableSnapshot = this;
                    nestedMutableSnapshot.a();
                } else {
                    nestedMutableSnapshot = this;
                    SnapshotApplyResult snapshotApplyResultZ = nestedMutableSnapshot.z(this.p.getF8464b(), mutableScatterSet, mapA, this.p.getF8463a());
                    if (!Intrinsics.c(snapshotApplyResultZ, SnapshotApplyResult.Success.f8467a)) {
                        return snapshotApplyResultZ;
                    }
                    MutableScatterSet f8456i = nestedMutableSnapshot.p.getF8456i();
                    if (f8456i != null) {
                        f8456i.k(mutableScatterSet);
                    } else {
                        nestedMutableSnapshot.p.B(mutableScatterSet);
                        nestedMutableSnapshot.f8456i = null;
                    }
                }
                if (Intrinsics.e(nestedMutableSnapshot.p.getF8464b(), j2) < 0) {
                    nestedMutableSnapshot.p.v();
                }
                MutableSnapshot mutableSnapshot2 = nestedMutableSnapshot.p;
                mutableSnapshot2.r(mutableSnapshot2.getF8463a().f(j2).a(nestedMutableSnapshot.f8458k));
                nestedMutableSnapshot.p.A(j2);
                MutableSnapshot mutableSnapshot3 = nestedMutableSnapshot.p;
                int i2 = nestedMutableSnapshot.d;
                nestedMutableSnapshot.d = -1;
                if (i2 >= 0) {
                    int[] iArr = mutableSnapshot3.l;
                    iArr.getClass();
                    int length = iArr.length;
                    int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
                    iArrCopyOf[length] = i2;
                    mutableSnapshot3.l = iArrCopyOf;
                } else {
                    mutableSnapshot3.getClass();
                }
                MutableSnapshot mutableSnapshot4 = nestedMutableSnapshot.p;
                SnapshotIdSet snapshotIdSet = nestedMutableSnapshot.f8458k;
                mutableSnapshot4.getClass();
                synchronized (obj) {
                    mutableSnapshot4.f8458k = mutableSnapshot4.f8458k.i(snapshotIdSet);
                    MutableSnapshot mutableSnapshot5 = nestedMutableSnapshot.p;
                    int[] iArr2 = nestedMutableSnapshot.l;
                    mutableSnapshot5.getClass();
                    if (iArr2.length != 0) {
                        int[] iArr3 = mutableSnapshot5.l;
                        if (iArr3.length != 0) {
                            int length2 = iArr3.length;
                            int length3 = iArr2.length;
                            int[] iArrCopyOf2 = Arrays.copyOf(iArr3, length2 + length3);
                            System.arraycopy(iArr2, 0, iArrCopyOf2, length2, length3);
                            iArr2 = iArrCopyOf2;
                        }
                        mutableSnapshot5.l = iArr2;
                    }
                }
                nestedMutableSnapshot.n = true;
                if (!nestedMutableSnapshot.q) {
                    nestedMutableSnapshot.q = true;
                    nestedMutableSnapshot.p.l();
                }
                return SnapshotApplyResult.Success.f8467a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
