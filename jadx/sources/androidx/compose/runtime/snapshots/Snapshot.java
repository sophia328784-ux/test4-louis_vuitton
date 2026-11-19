package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.av0;
import defpackage.j00;
import defpackage.md;
import defpackage.mt;
import defpackage.rp0;
import defpackage.xo0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0004\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/snapshots/Snapshot;", "", "Companion", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;", "Landroidx/compose/runtime/snapshots/ReadonlySnapshot;", "Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Snapshot {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f8462e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SnapshotIdSet f8463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f8464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8465c;
    public int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/snapshots/Snapshot$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Snapshot a() {
            return (Snapshot) SnapshotKt.f8482b.a();
        }

        public static Snapshot b(Snapshot snapshot) {
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot.u == Thread_jvmKt.a()) {
                    transparentObserverMutableSnapshot.s = null;
                    return snapshot;
                }
            }
            if (snapshot instanceof TransparentObserverSnapshot) {
                TransparentObserverSnapshot transparentObserverSnapshot = (TransparentObserverSnapshot) snapshot;
                if (transparentObserverSnapshot.f8548j == Thread_jvmKt.a()) {
                    transparentObserverSnapshot.f8547i = null;
                    return snapshot;
                }
            }
            Snapshot snapshotF = SnapshotKt.f(snapshot, null, false);
            snapshotF.j();
            return snapshotF;
        }

        public static Object c(androidx.compose.runtime.b bVar, Function0 function0) {
            Snapshot transparentObserverMutableSnapshot;
            Snapshot snapshot = (Snapshot) SnapshotKt.f8482b.a();
            if (snapshot instanceof TransparentObserverMutableSnapshot) {
                TransparentObserverMutableSnapshot transparentObserverMutableSnapshot2 = (TransparentObserverMutableSnapshot) snapshot;
                if (transparentObserverMutableSnapshot2.u == Thread_jvmKt.a()) {
                    Function1 function1 = transparentObserverMutableSnapshot2.s;
                    Function1 function2 = transparentObserverMutableSnapshot2.t;
                    try {
                        ((TransparentObserverMutableSnapshot) snapshot).s = SnapshotKt.j(bVar, true, function1);
                        ((TransparentObserverMutableSnapshot) snapshot).t = function2;
                        return function0.mo47invoke();
                    } finally {
                        transparentObserverMutableSnapshot2.s = function1;
                        transparentObserverMutableSnapshot2.t = function2;
                    }
                }
            }
            if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, bVar, null, true, false);
            } else {
                transparentObserverMutableSnapshot = snapshot.u(bVar);
            }
            try {
                Snapshot snapshotJ = transparentObserverMutableSnapshot.j();
                try {
                    Object objMo47invoke = function0.mo47invoke();
                    Snapshot.q(snapshotJ);
                    transparentObserverMutableSnapshot.c();
                    return objMo47invoke;
                } catch (Throwable th) {
                    Snapshot.q(snapshotJ);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.c();
                throw th2;
            }
        }

        public static j00 d(Function2 function2) {
            SnapshotKt.d(SnapshotKt.f8481a);
            synchronized (SnapshotKt.f8483c) {
                SnapshotKt.f8486h = CollectionsKt.X(function2, SnapshotKt.f8486h);
            }
            return new j00(function2);
        }

        public static void e(Snapshot snapshot, Snapshot snapshot2, Function1 function1) {
            if (snapshot != snapshot2) {
                snapshot2.getClass();
                Snapshot.q(snapshot);
                snapshot2.c();
            } else if (snapshot instanceof TransparentObserverMutableSnapshot) {
                ((TransparentObserverMutableSnapshot) snapshot).s = function1;
            } else if (snapshot instanceof TransparentObserverSnapshot) {
                ((TransparentObserverSnapshot) snapshot).f8547i = function1;
            } else {
                mt.f(snapshot, "Non-transparent snapshot was reused: ");
            }
        }

        public static void f() {
            boolean z;
            synchronized (SnapshotKt.f8483c) {
                MutableScatterSet mutableScatterSet = SnapshotKt.f8488j.f8456i;
                z = false;
                if (mutableScatterSet != null && mutableScatterSet.c()) {
                    z = true;
                }
            }
            if (z) {
                SnapshotKt.d(SnapshotKt.f8481a);
            }
        }

        public static MutableSnapshot g(xo0 xo0Var, rp0 rp0Var) {
            MutableSnapshot mutableSnapshotC;
            Snapshot snapshotI = SnapshotKt.i();
            MutableSnapshot mutableSnapshot = snapshotI instanceof MutableSnapshot ? (MutableSnapshot) snapshotI : null;
            if (mutableSnapshot != null && (mutableSnapshotC = mutableSnapshot.C(xo0Var, rp0Var)) != null) {
                return mutableSnapshotC;
            }
            md.k("Cannot create a mutable snapshot of an read-only snapshot");
            return null;
        }
    }

    public Snapshot(long j2, SnapshotIdSet snapshotIdSet, DefaultConstructorMarker defaultConstructorMarker) {
        int iA;
        int iNumberOfTrailingZeros;
        this.f8463a = snapshotIdSet;
        this.f8464b = j2;
        av0 av0Var = SnapshotKt.f8481a;
        if (j2 != 0) {
            SnapshotIdSet f8463a = getF8463a();
            long j3 = f8463a.d;
            long[] jArr = f8463a.f8476e;
            if (jArr != null) {
                j2 = jArr[0];
            } else {
                long j4 = f8463a.f8475c;
                if (j4 != 0) {
                    iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
                } else {
                    long j5 = f8463a.f8474b;
                    if (j5 != 0) {
                        j3 += 64;
                        iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j5);
                    }
                }
                j2 = ((long) iNumberOfTrailingZeros) + j3;
            }
            synchronized (SnapshotKt.f8483c) {
                iA = SnapshotKt.f8485f.a(j2);
            }
        } else {
            iA = -1;
        }
        this.d = iA;
    }

    public static void q(Snapshot snapshot) {
        SnapshotKt.f8482b.b(snapshot);
    }

    public final void a() {
        synchronized (SnapshotKt.f8483c) {
            b();
            p();
        }
    }

    public void b() {
        SnapshotKt.d = SnapshotKt.d.f(getF8464b());
    }

    public void c() {
        this.f8465c = true;
        synchronized (SnapshotKt.f8483c) {
            o();
        }
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public SnapshotIdSet getF8463a() {
        return this.f8463a;
    }

    /* JADX INFO: renamed from: e */
    public abstract Function1 getF8547i();

    public abstract boolean f();

    /* JADX INFO: renamed from: g, reason: from getter */
    public long getF8464b() {
        return this.f8464b;
    }

    /* JADX INFO: renamed from: h */
    public int getF8455h() {
        return 0;
    }

    /* JADX INFO: renamed from: i */
    public abstract Function1 getT();

    public final Snapshot j() {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotKt.f8482b;
        Snapshot snapshot = (Snapshot) snapshotThreadLocal.a();
        snapshotThreadLocal.b(this);
        return snapshot;
    }

    public abstract void k();

    public abstract void l();

    public abstract void m();

    public abstract void n(StateObject stateObject);

    public final void o() {
        int i2 = this.d;
        if (i2 >= 0) {
            SnapshotKt.t(i2);
            this.d = -1;
        }
    }

    public void p() {
        o();
    }

    public void r(SnapshotIdSet snapshotIdSet) {
        this.f8463a = snapshotIdSet;
    }

    public void s(long j2) {
        this.f8464b = j2;
    }

    public void t(int i2) {
        throw new IllegalStateException("Updating write count is not supported for this snapshot");
    }

    public abstract Snapshot u(Function1 function1);

    public Snapshot(int i2, SnapshotIdSet snapshotIdSet, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, snapshotIdSet, (DefaultConstructorMarker) null);
    }
}
