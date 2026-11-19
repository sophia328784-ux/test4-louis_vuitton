package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.WeakReference;
import defpackage.av0;
import defpackage.pj0;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final av0 f8481a = new av0(25);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SnapshotThreadLocal f8482b = new SnapshotThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f8483c = new Object();
    public static SnapshotIdSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static long f8484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SnapshotDoubleIndexHeap f8485f;
    public static final SnapshotWeakSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static List f8486h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static List f8487i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final GlobalSnapshot f8488j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final AtomicInt f8489k;

    static {
        SnapshotIdSet.f8473f.getClass();
        SnapshotIdSet snapshotIdSet = SnapshotIdSet.g;
        d = snapshotIdSet;
        f8484e = 2L;
        f8485f = new SnapshotDoubleIndexHeap();
        g = new SnapshotWeakSet();
        EmptyList emptyList = EmptyList.f71768b;
        f8486h = emptyList;
        f8487i = emptyList;
        long j2 = f8484e;
        f8484e = 1 + j2;
        GlobalSnapshot globalSnapshot = new GlobalSnapshot(j2, snapshotIdSet);
        d = d.m(globalSnapshot.f8464b);
        f8488j = globalSnapshot;
        f8489k = new AtomicInt(0);
    }

    public static final HashMap a(long j2, MutableSnapshot mutableSnapshot, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        SnapshotIdSet snapshotIdSet2;
        long[] jArr2;
        int i2;
        int i3;
        StateRecord stateRecordR;
        MutableScatterSet mutableScatterSetX = mutableSnapshot.getF8456i();
        if (mutableScatterSetX != null) {
            long f8464b = mutableSnapshot.getF8464b();
            SnapshotIdSet snapshotIdSetI = mutableSnapshot.getF8463a().m(f8464b).i(mutableSnapshot.f8458k);
            Object[] objArr = mutableScatterSetX.f3368b;
            long[] jArr3 = mutableScatterSetX.f3367a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i4 = 0;
                HashMap map = null;
                while (true) {
                    long j3 = jArr3[i4];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i5 = 8;
                        int i6 = 8 - ((~(i4 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j3 & 255) < 128) {
                                StateObject stateObject = (StateObject) objArr[(i4 << 3) + i7];
                                StateRecord stateRecordS = stateObject.s();
                                jArr2 = jArr3;
                                i2 = i5;
                                i3 = i7;
                                StateRecord stateRecordR2 = r(stateRecordS, j2, snapshotIdSet);
                                if (stateRecordR2 != null && (stateRecordR = r(stateRecordS, f8464b, snapshotIdSetI)) != null && !stateRecordR2.equals(stateRecordR)) {
                                    StateRecord stateRecordR3 = r(stateRecordS, f8464b, mutableSnapshot.getF8463a());
                                    if (stateRecordR3 == null) {
                                        q();
                                        throw null;
                                    }
                                    StateRecord stateRecordX = stateObject.x(stateRecordR, stateRecordR2, stateRecordR3);
                                    if (stateRecordX == null) {
                                        return null;
                                    }
                                    if (map == null) {
                                        map = new HashMap();
                                    }
                                    map.put(stateRecordR2, stateRecordX);
                                    map = map;
                                }
                            } else {
                                jArr2 = jArr3;
                                i2 = i5;
                                i3 = i7;
                            }
                            j3 >>= i2;
                            i7 = i3 + 1;
                            i5 = i2;
                            jArr3 = jArr2;
                            snapshotIdSetI = snapshotIdSetI;
                        }
                        jArr = jArr3;
                        snapshotIdSet2 = snapshotIdSetI;
                        if (i6 != i5) {
                            return map;
                        }
                    } else {
                        jArr = jArr3;
                        snapshotIdSet2 = snapshotIdSetI;
                    }
                    if (i4 == length) {
                        return map;
                    }
                    i4++;
                    jArr3 = jArr;
                    snapshotIdSetI = snapshotIdSet2;
                }
            }
        }
        return null;
    }

    public static final void b(Snapshot snapshot) {
        long j2;
        if (d.h(snapshot.getF8464b())) {
            return;
        }
        StringBuilder sb = new StringBuilder("Snapshot is not open: snapshotId=");
        sb.append(snapshot.getF8464b());
        sb.append(", disposed=");
        sb.append(snapshot.f8465c);
        sb.append(", applied=");
        MutableSnapshot mutableSnapshot = snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null;
        sb.append(mutableSnapshot != null ? Boolean.valueOf(mutableSnapshot.n) : "read-only");
        sb.append(", lowestPin=");
        synchronized (f8483c) {
            SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f8485f;
            j2 = snapshotDoubleIndexHeap.f8468a > 0 ? snapshotDoubleIndexHeap.f8469b[0] : -1L;
        }
        sb.append(j2);
        throw new IllegalStateException(sb.toString().toString());
    }

    public static final SnapshotIdSet c(SnapshotIdSet snapshotIdSet, long j2, long j3) {
        while (Intrinsics.e(j2, j3) < 0) {
            snapshotIdSet = snapshotIdSet.m(j2);
            j2++;
        }
        return snapshotIdSet;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0093 A[LOOP:1: B:30:0x0059->B:43:0x0093, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0096 A[EDGE_INSN: B:58:0x0096->B:44:0x0096 BREAK  A[LOOP:1: B:30:0x0059->B:43:0x0093], SYNTHETIC] */
    public static final Object d(Function1 function1) {
        MutableScatterSet mutableScatterSet;
        Object objU;
        GlobalSnapshot globalSnapshot = f8488j;
        synchronized (f8483c) {
            try {
                mutableScatterSet = globalSnapshot.f8456i;
                if (mutableScatterSet != null) {
                    f8489k.addAndGet(1);
                }
                objU = u(globalSnapshot, function1);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (mutableScatterSet != null) {
            try {
                List list = f8486h;
                ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((Function2) list.get(i2)).invoke(scatterSetWrapper, globalSnapshot);
                }
                f8489k.addAndGet(-1);
            } catch (Throwable th2) {
                f8489k.addAndGet(-1);
                throw th2;
            }
        }
        synchronized (f8483c) {
            e();
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.f3368b;
                long[] jArr = mutableScatterSet.f3367a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    while (true) {
                        long j2 = jArr[i3];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i3 != length) {
                                break;
                                break;
                            }
                            i3++;
                        } else {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((255 & j2) < 128) {
                                    p((StateObject) objArr[(i3 << 3) + i5]);
                                }
                                j2 >>= 8;
                            }
                            if (i4 != 8) {
                                break;
                            }
                            if (i3 != length) {
                                break;
                            }
                            i3++;
                        }
                    }
                }
            }
        }
        return objU;
    }

    public static final void e() {
        SnapshotWeakSet snapshotWeakSet = g;
        int i2 = snapshotWeakSet.f8518a;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            WeakReference weakReference = snapshotWeakSet.f8520c[i3];
            Object obj = weakReference != null ? weakReference.get() : null;
            if (obj != null && o((StateObject) obj)) {
                if (i4 != i3) {
                    snapshotWeakSet.f8520c[i4] = weakReference;
                    int[] iArr = snapshotWeakSet.f8519b;
                    iArr[i4] = iArr[i3];
                }
                i4++;
            }
            i3++;
        }
        for (int i5 = i4; i5 < i2; i5++) {
            snapshotWeakSet.f8520c[i5] = null;
            snapshotWeakSet.f8519b[i5] = 0;
        }
        if (i4 != i2) {
            snapshotWeakSet.f8518a = i4;
        }
    }

    public static final Snapshot f(Snapshot snapshot, Function1 function1, boolean z) {
        boolean z2 = snapshot instanceof MutableSnapshot;
        if (z2 || snapshot == null) {
            return new TransparentObserverMutableSnapshot(z2 ? (MutableSnapshot) snapshot : null, function1, null, false, z);
        }
        return new TransparentObserverSnapshot(snapshot, function1, false, z);
    }

    public static final StateRecord g(StateRecord stateRecord) {
        StateRecord stateRecordR;
        Snapshot.f8462e.getClass();
        Snapshot snapshotI = i();
        StateRecord stateRecordR2 = r(stateRecord, snapshotI.getF8464b(), snapshotI.getF8463a());
        if (stateRecordR2 != null) {
            return stateRecordR2;
        }
        synchronized (f8483c) {
            Snapshot snapshotI2 = i();
            stateRecordR = r(stateRecord, snapshotI2.getF8464b(), snapshotI2.getF8463a());
        }
        if (stateRecordR != null) {
            return stateRecordR;
        }
        q();
        throw null;
    }

    public static final StateRecord h(StateRecord stateRecord, Snapshot snapshot) {
        StateRecord stateRecordR;
        StateRecord stateRecordR2 = r(stateRecord, snapshot.getF8464b(), snapshot.getF8463a());
        if (stateRecordR2 != null) {
            return stateRecordR2;
        }
        synchronized (f8483c) {
            stateRecordR = r(stateRecord, snapshot.getF8464b(), snapshot.getF8463a());
        }
        if (stateRecordR != null) {
            return stateRecordR;
        }
        q();
        throw null;
    }

    public static final Snapshot i() {
        Snapshot snapshot = (Snapshot) f8482b.a();
        return snapshot == null ? f8488j : snapshot;
    }

    public static final Function1 j(Function1 function1, boolean z, Function1 function2) {
        if (!z) {
            function2 = null;
        }
        if (function1 == null || function2 == null || function1 == function2) {
            return function1 == null ? function2 : function1;
        }
        return new pj0(function1, function2, 5);
    }

    public static final Function1 k(Function1 function1, Function1 function2) {
        if (function1 == null || function2 == null || function1 == function2) {
            return function1 == null ? function2 : function1;
        }
        return new pj0(function1, function2, 6);
    }

    public static final StateRecord l(StateRecord stateRecord, StateObject stateObject) {
        long j2 = f8484e;
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f8485f;
        if (snapshotDoubleIndexHeap.f8468a > 0) {
            j2 = snapshotDoubleIndexHeap.f8469b[0];
        }
        long j3 = j2 - 1;
        SnapshotIdSet.f8473f.getClass();
        SnapshotIdSet snapshotIdSet = SnapshotIdSet.g;
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        for (StateRecord stateRecordS = stateObject.s(); stateRecordS != null; stateRecordS = stateRecordS.f8534b) {
            long j4 = stateRecordS.f8533a;
            if (j4 != 0) {
                if (j4 != 0 && Intrinsics.e(j4, j3) <= 0 && !snapshotIdSet.h(j4)) {
                    if (stateRecord3 != null) {
                        if (Intrinsics.e(stateRecordS.f8533a, stateRecord3.f8533a) >= 0) {
                            stateRecord2 = stateRecord3;
                            break;
                        }
                        break;
                    }
                    stateRecord3 = stateRecordS;
                }
            }
            stateRecord2 = stateRecordS;
            break;
        }
        if (stateRecord2 != null) {
            stateRecord2.f8533a = Long.MAX_VALUE;
            return stateRecord2;
        }
        StateRecord stateRecordC = stateRecord.c(Long.MAX_VALUE);
        stateRecordC.f8534b = stateObject.s();
        stateObject.r(stateRecordC);
        return stateRecordC;
    }

    public static final void m(Snapshot snapshot, StateObject stateObject) {
        snapshot.t(snapshot.getF8455h() + 1);
        Function1 function1I = snapshot.getT();
        if (function1I != null) {
            function1I.invoke(stateObject);
        }
    }

    public static final StateRecord n(StateRecord stateRecord, StateObjectImpl stateObjectImpl, Snapshot snapshot, StateRecord stateRecord2) {
        StateRecord stateRecordL;
        if (snapshot.f()) {
            snapshot.n(stateObjectImpl);
        }
        long f8464b = snapshot.getF8464b();
        if (stateRecord2.f8533a == f8464b) {
            return stateRecord2;
        }
        synchronized (f8483c) {
            stateRecordL = l(stateRecord, stateObjectImpl);
        }
        stateRecordL.f8533a = f8464b;
        if (stateRecord2.f8533a != 1) {
            snapshot.n(stateObjectImpl);
        }
        return stateRecordL;
    }

    public static final boolean o(StateObject stateObject) {
        StateRecord stateRecord;
        long j2 = f8484e;
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f8485f;
        if (snapshotDoubleIndexHeap.f8468a > 0) {
            j2 = snapshotDoubleIndexHeap.f8469b[0];
        }
        StateRecord stateRecord2 = null;
        StateRecord stateRecordS = null;
        int i2 = 0;
        for (StateRecord stateRecordS2 = stateObject.s(); stateRecordS2 != null; stateRecordS2 = stateRecordS2.f8534b) {
            long j3 = stateRecordS2.f8533a;
            if (j3 != 0) {
                if (Intrinsics.e(j3, j2) >= 0) {
                    i2++;
                } else if (stateRecord2 == null) {
                    i2++;
                    stateRecord2 = stateRecordS2;
                } else {
                    if (Intrinsics.e(stateRecordS2.f8533a, stateRecord2.f8533a) < 0) {
                        stateRecord = stateRecord2;
                        stateRecord2 = stateRecordS2;
                    } else {
                        stateRecord = stateRecordS2;
                    }
                    if (stateRecordS == null) {
                        stateRecordS = stateObject.s();
                        StateRecord stateRecord3 = stateRecordS;
                        while (true) {
                            if (stateRecordS == null) {
                                stateRecordS = stateRecord3;
                                break;
                            }
                            if (Intrinsics.e(stateRecordS.f8533a, j2) >= 0) {
                                break;
                            }
                            if (Intrinsics.e(stateRecord3.f8533a, stateRecordS.f8533a) < 0) {
                                stateRecord3 = stateRecordS;
                            }
                            stateRecordS = stateRecordS.f8534b;
                        }
                    }
                    stateRecord2.f8533a = 0L;
                    stateRecord2.a(stateRecordS);
                    stateRecord2 = stateRecord;
                }
            }
        }
        return i2 > 1;
    }

    public static final void p(StateObject stateObject) {
        if (o(stateObject)) {
            SnapshotWeakSet snapshotWeakSet = g;
            int i2 = snapshotWeakSet.f8518a;
            int iIdentityHashCode = System.identityHashCode(stateObject);
            int i3 = -1;
            if (i2 > 0) {
                int i4 = snapshotWeakSet.f8518a - 1;
                int i5 = 0;
                while (true) {
                    if (i5 > i4) {
                        i3 = -(i5 + 1);
                        break;
                    }
                    int i6 = (i5 + i4) >>> 1;
                    int i7 = snapshotWeakSet.f8519b[i6];
                    if (i7 < iIdentityHashCode) {
                        i5 = i6 + 1;
                    } else if (i7 > iIdentityHashCode) {
                        i4 = i6 - 1;
                    } else {
                        WeakReference weakReference = snapshotWeakSet.f8520c[i6];
                        if (stateObject == (weakReference != null ? weakReference.get() : null)) {
                            i3 = i6;
                            break;
                        }
                        int i8 = i6 - 1;
                        while (true) {
                            if (-1 >= i8 || snapshotWeakSet.f8519b[i8] != iIdentityHashCode) {
                                i6++;
                                int i9 = snapshotWeakSet.f8518a;
                                while (true) {
                                    if (i6 >= i9) {
                                        i3 = -(snapshotWeakSet.f8518a + 1);
                                        break;
                                    }
                                    if (snapshotWeakSet.f8519b[i6] != iIdentityHashCode) {
                                        i3 = -(i6 + 1);
                                        break;
                                    }
                                    WeakReference weakReference2 = snapshotWeakSet.f8520c[i6];
                                    if ((weakReference2 != null ? weakReference2.get() : null) == stateObject) {
                                        i3 = i6;
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                WeakReference weakReference3 = snapshotWeakSet.f8520c[i8];
                                if ((weakReference3 != null ? weakReference3.get() : null) == stateObject) {
                                    i3 = i8;
                                    break;
                                }
                                i8--;
                            }
                        }
                    }
                }
                if (i3 >= 0) {
                    return;
                }
            }
            int i10 = -(i3 + 1);
            WeakReference[] weakReferenceArr = snapshotWeakSet.f8520c;
            int length = weakReferenceArr.length;
            if (i2 == length) {
                int i11 = length * 2;
                WeakReference[] weakReferenceArr2 = new WeakReference[i11];
                int[] iArr = new int[i11];
                int i12 = i10 + 1;
                System.arraycopy(weakReferenceArr, i10, weakReferenceArr2, i12, i2 - i10);
                System.arraycopy(snapshotWeakSet.f8520c, 0, weakReferenceArr2, 0, i10);
                ArraysKt.i(i12, i10, i2, snapshotWeakSet.f8519b, iArr);
                ArraysKt.m(0, i10, 6, snapshotWeakSet.f8519b, iArr);
                snapshotWeakSet.f8520c = weakReferenceArr2;
                snapshotWeakSet.f8519b = iArr;
            } else {
                int i13 = i10 + 1;
                System.arraycopy(weakReferenceArr, i10, weakReferenceArr, i13, i2 - i10);
                int[] iArr2 = snapshotWeakSet.f8519b;
                ArraysKt.i(i13, i10, i2, iArr2, iArr2);
            }
            snapshotWeakSet.f8520c[i10] = new WeakReference(stateObject);
            snapshotWeakSet.f8519b[i10] = iIdentityHashCode;
            snapshotWeakSet.f8518a++;
        }
    }

    public static final void q() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final StateRecord r(StateRecord stateRecord, long j2, SnapshotIdSet snapshotIdSet) {
        StateRecord stateRecord2 = null;
        while (stateRecord != null) {
            long j3 = stateRecord.f8533a;
            if (j3 != 0 && Intrinsics.e(j3, j2) <= 0 && !snapshotIdSet.h(j3) && (stateRecord2 == null || Intrinsics.e(stateRecord2.f8533a, stateRecord.f8533a) < 0)) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.f8534b;
        }
        if (stateRecord2 != null) {
            return stateRecord2;
        }
        return null;
    }

    public static final StateRecord s(StateRecord stateRecord, StateObject stateObject) {
        StateRecord stateRecordR;
        Snapshot.f8462e.getClass();
        Snapshot snapshotI = i();
        Function1 function1E = snapshotI.getF8547i();
        if (function1E != null) {
            function1E.invoke(stateObject);
        }
        StateRecord stateRecordR2 = r(stateRecord, snapshotI.getF8464b(), snapshotI.getF8463a());
        if (stateRecordR2 != null) {
            return stateRecordR2;
        }
        synchronized (f8483c) {
            Snapshot snapshotI2 = i();
            StateRecord stateRecordS = stateObject.s();
            stateRecordS.getClass();
            stateRecordR = r(stateRecordS, snapshotI2.getF8464b(), snapshotI2.getF8463a());
            if (stateRecordR == null) {
                q();
                throw null;
            }
        }
        return stateRecordR;
    }

    public static final void t(int i2) {
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f8485f;
        int i3 = snapshotDoubleIndexHeap.d[i2];
        snapshotDoubleIndexHeap.b(i3, snapshotDoubleIndexHeap.f8468a - 1);
        snapshotDoubleIndexHeap.f8468a--;
        long[] jArr = snapshotDoubleIndexHeap.f8469b;
        long j2 = jArr[i3];
        int i4 = i3;
        while (i4 > 0) {
            int i5 = ((i4 + 1) >> 1) - 1;
            if (Intrinsics.e(jArr[i5], j2) <= 0) {
                break;
            }
            snapshotDoubleIndexHeap.b(i5, i4);
            i4 = i5;
        }
        long[] jArr2 = snapshotDoubleIndexHeap.f8469b;
        int i6 = snapshotDoubleIndexHeap.f8468a >> 1;
        while (i3 < i6) {
            int i7 = (i3 + 1) << 1;
            int i8 = i7 - 1;
            if (i7 < snapshotDoubleIndexHeap.f8468a && Intrinsics.e(jArr2[i7], jArr2[i8]) < 0) {
                if (Intrinsics.e(jArr2[i7], jArr2[i3]) >= 0) {
                    break;
                }
                snapshotDoubleIndexHeap.b(i7, i3);
                i3 = i7;
            } else {
                if (Intrinsics.e(jArr2[i8], jArr2[i3]) >= 0) {
                    break;
                }
                snapshotDoubleIndexHeap.b(i8, i3);
                i3 = i8;
            }
        }
        snapshotDoubleIndexHeap.d[i2] = snapshotDoubleIndexHeap.f8471e;
        snapshotDoubleIndexHeap.f8471e = i2;
    }

    public static final Object u(GlobalSnapshot globalSnapshot, Function1 function1) {
        long j2 = globalSnapshot.f8464b;
        Object objInvoke = function1.invoke(d.f(j2));
        long j3 = f8484e;
        f8484e = 1 + j3;
        SnapshotIdSet snapshotIdSetF = d.f(j2);
        d = snapshotIdSetF;
        globalSnapshot.f8464b = j3;
        globalSnapshot.f8463a = snapshotIdSetF;
        globalSnapshot.f8455h = 0;
        globalSnapshot.f8456i = null;
        globalSnapshot.o();
        d = d.m(j3);
        return objInvoke;
    }

    public static final StateRecord v(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord stateRecordR;
        if (snapshot.f()) {
            snapshot.n(stateObject);
        }
        long f8464b = snapshot.getF8464b();
        StateRecord stateRecordR2 = r(stateRecord, f8464b, snapshot.getF8463a());
        if (stateRecordR2 == null) {
            q();
            throw null;
        }
        if (stateRecordR2.f8533a == snapshot.getF8464b()) {
            return stateRecordR2;
        }
        synchronized (f8483c) {
            stateRecordR = r(stateObject.s(), f8464b, snapshot.getF8463a());
            if (stateRecordR == null) {
                q();
                throw null;
            }
            if (stateRecordR.f8533a != f8464b) {
                StateRecord stateRecordL = l(stateRecordR, stateObject);
                stateRecordL.a(stateRecordR);
                stateRecordL.f8533a = snapshot.getF8464b();
                stateRecordR = stateRecordL;
            }
        }
        if (stateRecordR2.f8533a != 1) {
            snapshot.n(stateObject);
        }
        return stateRecordR;
    }
}
