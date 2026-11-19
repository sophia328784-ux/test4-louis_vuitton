package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import defpackage.av0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0017\u0018\u00002\u00020\u0001:\u0001\u000eBI\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007\u0012\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/compose/runtime/snapshots/MutableSnapshot;", "Landroidx/compose/runtime/snapshots/Snapshot;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "invalid", "Lkotlin/Function1;", "", "", "readObserver", "writeObserver", "<init>", "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class MutableSnapshot extends Snapshot {
    public static final int[] o;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f8454f;
    public final Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MutableScatterSet f8456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f8457j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SnapshotIdSet f8458k;
    public int[] l;
    public int m;
    public boolean n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/runtime/snapshots/MutableSnapshot$Companion;", "", "", "EmptyIntArray", "[I", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        o = new int[0];
    }

    public MutableSnapshot(long j2, SnapshotIdSet snapshotIdSet, Function1<Object, Unit> function1, Function1<Object, Unit> function2) {
        super(j2, snapshotIdSet, (DefaultConstructorMarker) null);
        this.f8454f = function1;
        this.g = function2;
        SnapshotIdSet.f8473f.getClass();
        this.f8458k = SnapshotIdSet.g;
        this.l = o;
        this.m = 1;
    }

    public final void A(long j2) {
        synchronized (SnapshotKt.f8483c) {
            this.f8458k = this.f8458k.m(j2);
        }
    }

    public void B(MutableScatterSet mutableScatterSet) {
        this.f8456i = mutableScatterSet;
    }

    public MutableSnapshot C(Function1 function1, Function1 function2) {
        NestedMutableSnapshot nestedMutableSnapshot;
        if (this.f8465c) {
            PreconditionsKt.a("Cannot use a disposed snapshot");
        }
        if (this.n && this.d < 0) {
            PreconditionsKt.b("Unsupported operation on a disposed or applied snapshot");
        }
        A(getF8464b());
        Object obj = SnapshotKt.f8483c;
        synchronized (obj) {
            long j2 = SnapshotKt.f8484e;
            SnapshotKt.f8484e = j2 + 1;
            SnapshotKt.d = SnapshotKt.d.m(j2);
            SnapshotIdSet f8463a = getF8463a();
            r(f8463a.m(j2));
            nestedMutableSnapshot = new NestedMutableSnapshot(j2, SnapshotKt.c(f8463a, getF8464b() + 1, j2), SnapshotKt.j(function1, true, e()), SnapshotKt.k(function2, getT()), this);
        }
        if (this.n || this.f8465c) {
            return nestedMutableSnapshot;
        }
        long f8464b = getF8464b();
        synchronized (obj) {
            long j3 = SnapshotKt.f8484e;
            SnapshotKt.f8484e = j3 + 1;
            s(j3);
            SnapshotKt.d = SnapshotKt.d.m(getF8464b());
        }
        r(SnapshotKt.c(getF8463a(), f8464b + 1, getF8464b()));
        return nestedMutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void b() {
        SnapshotKt.d = SnapshotKt.d.f(getF8464b()).a(this.f8458k);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void c() {
        if (this.f8465c) {
            return;
        }
        super.c();
        l();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean f() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: h, reason: from getter */
    public int getF8455h() {
        return this.f8455h;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: i, reason: from getter */
    public Function1 getT() {
        return this.g;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void k() {
        this.m++;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x008e A[LOOP:0: B:18:0x0039->B:35:0x008e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x0091 A[EDGE_INSN: B:39:0x0091->B:36:0x0091 BREAK  A[LOOP:0: B:18:0x0039->B:35:0x008e], SYNTHETIC] */
    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void l() {
        if (this.m <= 0) {
            PreconditionsKt.a("no pending nested snapshots");
        }
        int i2 = this.m - 1;
        this.m = i2;
        if (i2 != 0 || this.n) {
            return;
        }
        MutableScatterSet f8456i = getF8456i();
        if (f8456i != null) {
            if (this.n) {
                PreconditionsKt.b("Unsupported operation on a snapshot that has been applied");
            }
            B(null);
            long f8464b = getF8464b();
            Object[] objArr = f8456i.f3368b;
            long[] jArr = f8456i.f3367a;
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
                                for (StateRecord stateRecordS = ((StateObject) objArr[(i3 << 3) + i5]).s(); stateRecordS != null; stateRecordS = stateRecordS.f8534b) {
                                    long j3 = stateRecordS.f8533a;
                                    if (j3 == f8464b || CollectionsKt.u(this.f8458k, Long.valueOf(j3))) {
                                        av0 av0Var = SnapshotKt.f8481a;
                                        stateRecordS.f8533a = 0L;
                                    }
                                }
                            }
                            j2 >>= 8;
                        }
                        if (i4 != 8) {
                            break;
                        } else if (i3 != length) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
            }
        }
        a();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void m() {
        if (this.n || this.f8465c) {
            return;
        }
        v();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void n(StateObject stateObject) {
        MutableScatterSet f8456i = getF8456i();
        if (f8456i == null) {
            f8456i = ScatterSetKt.a();
            B(f8456i);
        }
        f8456i.d(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void p() {
        int length = this.l.length;
        for (int i2 = 0; i2 < length; i2++) {
            SnapshotKt.t(this.l[i2]);
        }
        o();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void t(int i2) {
        this.f8455h = i2;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public Snapshot u(Function1 function1) {
        NestedReadonlySnapshot nestedReadonlySnapshot;
        if (this.f8465c) {
            PreconditionsKt.a("Cannot use a disposed snapshot");
        }
        if (this.n && this.d < 0) {
            PreconditionsKt.b("Unsupported operation on a disposed or applied snapshot");
        }
        long f8464b = getF8464b();
        A(getF8464b());
        Object obj = SnapshotKt.f8483c;
        synchronized (obj) {
            long j2 = SnapshotKt.f8484e;
            SnapshotKt.f8484e = j2 + 1;
            SnapshotKt.d = SnapshotKt.d.m(j2);
            nestedReadonlySnapshot = new NestedReadonlySnapshot(j2, SnapshotKt.c(getF8463a(), f8464b + 1, j2), SnapshotKt.j(function1, true, e()), this);
        }
        if (this.n || this.f8465c) {
            return nestedReadonlySnapshot;
        }
        long f8464b2 = getF8464b();
        synchronized (obj) {
            long j3 = SnapshotKt.f8484e;
            SnapshotKt.f8484e = j3 + 1;
            s(j3);
            SnapshotKt.d = SnapshotKt.d.m(getF8464b());
        }
        r(SnapshotKt.c(getF8463a(), f8464b2 + 1, getF8464b()));
        return nestedReadonlySnapshot;
    }

    public final void v() {
        A(getF8464b());
        if (this.n || this.f8465c) {
            return;
        }
        long f8464b = getF8464b();
        synchronized (SnapshotKt.f8483c) {
            long j2 = SnapshotKt.f8484e;
            SnapshotKt.f8484e = j2 + 1;
            s(j2);
            SnapshotKt.d = SnapshotKt.d.m(getF8464b());
        }
        r(SnapshotKt.c(getF8463a(), f8464b + 1, getF8464b()));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0152 A[EDGE_INSN: B:101:0x0152->B:77:0x0152 BREAK  A[LOOP:4: B:66:0x0123->B:76:0x014f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x010e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0110 A[Catch: all -> 0x0106, LOOP:2: B:48:0x00de->B:60:0x0110, LOOP_END, TryCatch #1 {all -> 0x0106, blocks: (B:43:0x00c2, B:45:0x00d2, B:48:0x00de, B:50:0x00ea, B:52:0x00f4, B:54:0x00fa, B:57:0x0108, B:63:0x0119, B:66:0x0123, B:68:0x012d, B:70:0x0137, B:72:0x013d, B:73:0x0147, B:76:0x014f, B:77:0x0152, B:79:0x0156, B:81:0x015d, B:82:0x0169, B:60:0x0110), top: B:91:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0113  */
    /* JADX WARN: Code duplicated, block: B:75:0x014d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x014f A[Catch: all -> 0x0106, LOOP:4: B:66:0x0123->B:76:0x014f, LOOP_END, TryCatch #1 {all -> 0x0106, blocks: (B:43:0x00c2, B:45:0x00d2, B:48:0x00de, B:50:0x00ea, B:52:0x00f4, B:54:0x00fa, B:57:0x0108, B:63:0x0119, B:66:0x0123, B:68:0x012d, B:70:0x0137, B:72:0x013d, B:73:0x0147, B:76:0x014f, B:77:0x0152, B:79:0x0156, B:81:0x015d, B:82:0x0169, B:60:0x0110), top: B:91:0x00c2 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0117 A[EDGE_INSN: B:96:0x0117->B:62:0x0117 BREAK  A[LOOP:2: B:48:0x00de->B:60:0x0110], SYNTHETIC] */
    public SnapshotApplyResult w() {
        HashMap mapA;
        List list;
        MutableScatterSet mutableScatterSet;
        long j2;
        long j3;
        MutableScatterSet f8456i = getF8456i();
        if (f8456i != null) {
            long j4 = SnapshotKt.f8488j.f8464b;
            mapA = SnapshotKt.a(j4, this, SnapshotKt.d.f(j4));
        } else {
            mapA = null;
        }
        EmptyList emptyList = EmptyList.f71768b;
        synchronized (SnapshotKt.f8483c) {
            try {
                SnapshotKt.b(this);
                if (f8456i == null || f8456i.d == 0) {
                    b();
                    GlobalSnapshot globalSnapshot = SnapshotKt.f8488j;
                    MutableScatterSet mutableScatterSet2 = globalSnapshot.f8456i;
                    SnapshotKt.u(globalSnapshot, SnapshotKt.f8481a);
                    if (mutableScatterSet2 == null || !mutableScatterSet2.c()) {
                        list = emptyList;
                        mutableScatterSet = null;
                    } else {
                        list = SnapshotKt.f8486h;
                        mutableScatterSet = mutableScatterSet2;
                    }
                } else {
                    GlobalSnapshot globalSnapshot2 = SnapshotKt.f8488j;
                    SnapshotApplyResult snapshotApplyResultZ = z(SnapshotKt.f8484e, f8456i, mapA, SnapshotKt.d.f(globalSnapshot2.f8464b));
                    if (!Intrinsics.c(snapshotApplyResultZ, SnapshotApplyResult.Success.f8467a)) {
                        return snapshotApplyResultZ;
                    }
                    b();
                    mutableScatterSet = globalSnapshot2.f8456i;
                    SnapshotKt.u(globalSnapshot2, SnapshotKt.f8481a);
                    B(null);
                    globalSnapshot2.f8456i = null;
                    list = SnapshotKt.f8486h;
                }
                this.n = true;
                if (mutableScatterSet != null) {
                    ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet);
                    if (!scatterSetWrapper.f8172b.b()) {
                        int size = list.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ((Function2) list.get(i2)).invoke(scatterSetWrapper, this);
                        }
                    }
                }
                if (f8456i != null && f8456i.c()) {
                    ScatterSetWrapper scatterSetWrapper2 = new ScatterSetWrapper(f8456i);
                    int size2 = list.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((Function2) list.get(i3)).invoke(scatterSetWrapper2, this);
                    }
                }
                synchronized (SnapshotKt.f8483c) {
                    try {
                        p();
                        SnapshotKt.e();
                        if (mutableScatterSet != null) {
                            Object[] objArr = mutableScatterSet.f3368b;
                            long[] jArr = mutableScatterSet.f3367a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i4 = 0;
                                j2 = 128;
                                while (true) {
                                    long j5 = jArr[i4];
                                    j3 = 255;
                                    if ((((~j5) << 7) & j5 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i4 != length) {
                                            break;
                                            break;
                                        }
                                        i4++;
                                    } else {
                                        int i5 = 8 - ((~(i4 - length)) >>> 31);
                                        for (int i6 = 0; i6 < i5; i6++) {
                                            if ((j5 & 255) < 128) {
                                                SnapshotKt.p((StateObject) objArr[(i4 << 3) + i6]);
                                            }
                                            j5 >>= 8;
                                        }
                                        if (i5 != 8) {
                                            break;
                                        }
                                        if (i4 != length) {
                                            break;
                                        }
                                        i4++;
                                    }
                                }
                            } else {
                                j2 = 128;
                                j3 = 255;
                            }
                        } else {
                            j2 = 128;
                            j3 = 255;
                        }
                        if (f8456i != null) {
                            Object[] objArr2 = f8456i.f3368b;
                            long[] jArr2 = f8456i.f3367a;
                            int length2 = jArr2.length - 2;
                            if (length2 >= 0) {
                                int i7 = 0;
                                while (true) {
                                    long j6 = jArr2[i7];
                                    if ((((~j6) << 7) & j6 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i7 != length2) {
                                            break;
                                            break;
                                        }
                                        i7++;
                                    } else {
                                        int i8 = 8 - ((~(i7 - length2)) >>> 31);
                                        for (int i9 = 0; i9 < i8; i9++) {
                                            if ((j6 & j3) < j2) {
                                                SnapshotKt.p((StateObject) objArr2[(i7 << 3) + i9]);
                                            }
                                            j6 >>= 8;
                                        }
                                        if (i8 != 8) {
                                            break;
                                        }
                                        if (i7 != length2) {
                                            break;
                                        }
                                        i7++;
                                    }
                                }
                            }
                        }
                        ArrayList arrayList = this.f8457j;
                        if (arrayList != null) {
                            int size3 = arrayList.size();
                            for (int i10 = 0; i10 < size3; i10++) {
                                SnapshotKt.p((StateObject) arrayList.get(i10));
                            }
                        }
                        this.f8457j = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return SnapshotApplyResult.Success.f8467a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: x, reason: from getter */
    public MutableScatterSet getF8456i() {
        return this.f8456i;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: y, reason: from getter and merged with bridge method [inline-methods] */
    public Function1 getF8461f() {
        return this.f8454f;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0171  */
    /* JADX WARN: Code duplicated, block: B:69:0x017b  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a7 A[LOOP:3: B:79:0x01a5->B:80:0x01a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:88:0x018e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final SnapshotApplyResult z(long j2, MutableScatterSet mutableScatterSet, HashMap map, SnapshotIdSet snapshotIdSet) {
        ArrayList arrayList;
        ArrayList arrayListY;
        ArrayList arrayList2;
        int size;
        int i2;
        ArrayList arrayList3;
        int size2;
        int i3;
        StateObject stateObject;
        StateRecord stateRecord;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        long[] jArr;
        SnapshotIdSet snapshotIdSet3;
        Object[] objArr2;
        long[] jArr2;
        int i4;
        long j3;
        ArrayList arrayList4;
        StateRecord stateRecordX;
        SnapshotIdSet snapshotIdSetI = getF8463a().m(getF8464b()).i(this.f8458k);
        Object[] objArr3 = mutableScatterSet.f3368b;
        long[] jArr3 = mutableScatterSet.f3367a;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i5 = 0;
            arrayList2 = null;
            arrayListY = null;
            while (true) {
                long j4 = jArr3[i5];
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j4 & 255) < 128) {
                            objArr2 = objArr3;
                            StateObject stateObject2 = (StateObject) objArr3[(i5 << 3) + i7];
                            jArr2 = jArr3;
                            StateRecord stateRecordS = stateObject2.s();
                            i4 = i7;
                            ArrayList arrayList5 = arrayList2;
                            StateRecord stateRecordR = SnapshotKt.r(stateRecordS, j2, snapshotIdSet);
                            if (stateRecordR == null) {
                                arrayList4 = arrayListY;
                                j3 = j4;
                            } else {
                                arrayList4 = arrayListY;
                                j3 = j4;
                                StateRecord stateRecordR2 = SnapshotKt.r(stateRecordS, getF8464b(), snapshotIdSetI);
                                if (stateRecordR2 != null && stateRecordR2.f8533a != 1 && !stateRecordR.equals(stateRecordR2)) {
                                    snapshotIdSet3 = snapshotIdSetI;
                                    StateRecord stateRecordR3 = SnapshotKt.r(stateRecordS, getF8464b(), getF8463a());
                                    if (stateRecordR3 == null) {
                                        SnapshotKt.q();
                                        throw null;
                                    }
                                    if (map == null || (stateRecordX = (StateRecord) map.get(stateRecordR)) == null) {
                                        stateRecordX = stateObject2.x(stateRecordR2, stateRecordR, stateRecordR3);
                                    }
                                    if (stateRecordX == null) {
                                        return new SnapshotApplyResult.Failure(this);
                                    }
                                    if (!stateRecordX.equals(stateRecordR3)) {
                                        if (stateRecordX.equals(stateRecordR)) {
                                            ArrayList arrayList6 = arrayList5 == null ? new ArrayList() : arrayList5;
                                            arrayList6.add(new Pair(stateObject2, stateRecordR.c(getF8464b())));
                                            arrayListY = arrayList4 == null ? new ArrayList() : arrayList4;
                                            arrayListY.add(stateObject2);
                                            arrayList2 = arrayList6;
                                        } else {
                                            arrayList2 = arrayList5 == null ? new ArrayList() : arrayList5;
                                            arrayList2.add(!stateRecordX.equals(stateRecordR2) ? new Pair(stateObject2, stateRecordX) : new Pair(stateObject2, stateRecordR2.c(getF8464b())));
                                        }
                                    }
                                    arrayListY = arrayList4;
                                }
                                arrayList2 = arrayList5;
                                arrayListY = arrayList4;
                            }
                            snapshotIdSet3 = snapshotIdSetI;
                            arrayList2 = arrayList5;
                            arrayListY = arrayList4;
                        } else {
                            snapshotIdSet3 = snapshotIdSetI;
                            objArr2 = objArr3;
                            jArr2 = jArr3;
                            i4 = i7;
                            j3 = j4;
                        }
                        j4 = j3 >> 8;
                        i7 = i4 + 1;
                        jArr3 = jArr2;
                        objArr3 = objArr2;
                        snapshotIdSetI = snapshotIdSet3;
                    }
                    snapshotIdSet2 = snapshotIdSetI;
                    objArr = objArr3;
                    jArr = jArr3;
                    if (i6 != 8) {
                        break;
                    }
                } else {
                    snapshotIdSet2 = snapshotIdSetI;
                    objArr = objArr3;
                    jArr = jArr3;
                }
                if (i5 != length) {
                    i5++;
                    jArr3 = jArr;
                    objArr3 = objArr;
                    snapshotIdSetI = snapshotIdSet2;
                } else {
                    arrayList = arrayList2;
                }
            }
            if (arrayList2 != null) {
                v();
                size2 = arrayList2.size();
                for (i3 = 0; i3 < size2; i3++) {
                    Pair pair = (Pair) arrayList2.get(i3);
                    stateObject = (StateObject) pair.f71705b;
                    stateRecord = (StateRecord) pair.f71706c;
                    stateRecord.f8533a = j2;
                    synchronized (SnapshotKt.f8483c) {
                        stateRecord.f8534b = stateObject.s();
                        stateObject.r(stateRecord);
                    }
                }
            }
            if (arrayListY != null) {
                size = arrayListY.size();
                for (i2 = 0; i2 < size; i2++) {
                    mutableScatterSet.m((StateObject) arrayListY.get(i2));
                }
                arrayList3 = this.f8457j;
                if (arrayList3 != null) {
                    arrayListY = CollectionsKt.Y(arrayList3, arrayListY);
                }
                this.f8457j = arrayListY;
            }
            return SnapshotApplyResult.Success.f8467a;
        }
        arrayList = null;
        arrayListY = null;
        arrayList2 = arrayList;
        if (arrayList2 != null) {
            v();
            size2 = arrayList2.size();
            while (i3 < size2) {
                Pair pair2 = (Pair) arrayList2.get(i3);
                stateObject = (StateObject) pair2.f71705b;
                stateRecord = (StateRecord) pair2.f71706c;
                stateRecord.f8533a = j2;
                synchronized (SnapshotKt.f8483c) {
                    stateRecord.f8534b = stateObject.s();
                    stateObject.r(stateRecord);
                }
            }
        }
        if (arrayListY != null) {
            size = arrayListY.size();
            while (i2 < size) {
                mutableScatterSet.m((StateObject) arrayListY.get(i2));
            }
            arrayList3 = this.f8457j;
            if (arrayList3 != null) {
                arrayListY = CollectionsKt.Y(arrayList3, arrayListY);
            }
            this.f8457j = arrayListY;
        }
        return SnapshotApplyResult.Success.f8467a;
    }
}
