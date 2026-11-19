package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\nB%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState;", "T", "Landroidx/compose/runtime/snapshots/StateObjectImpl;", "Landroidx/compose/runtime/DerivedState;", "Lkotlin/Function0;", "calculation", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "policy", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/SnapshotMutationPolicy;)V", "ResultRecord", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DerivedSnapshotState<T> extends StateObjectImpl implements DerivedState<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f7964c;
    public final SnapshotMutationPolicy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ResultRecord f7965e = new ResultRecord(SnapshotKt.i().getF8464b());

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003:\u0001\tB\u0013\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;", "T", "Landroidx/compose/runtime/snapshots/StateRecord;", "Landroidx/compose/runtime/DerivedState$Record;", "", "Landroidx/compose/runtime/snapshots/SnapshotId;", "snapshotId", "<init>", "(J)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ResultRecord<T> extends StateRecord implements DerivedState.Record<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Companion f7966h = new Companion(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Object f7967i = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f7968c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ObjectIntMap f7969e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Object f7970f;
        public int g;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public ResultRecord(long j2) {
            super(j2);
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.f3344a;
            mutableObjectIntMap.getClass();
            this.f7969e = mutableObjectIntMap;
            this.f7970f = f7967i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            ResultRecord resultRecord = (ResultRecord) stateRecord;
            this.f7969e = resultRecord.f7969e;
            this.f7970f = resultRecord.f7970f;
            this.g = resultRecord.g;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b() {
            return new ResultRecord(SnapshotKt.i().getF8464b());
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord c(long j2) {
            return new ResultRecord(j2);
        }

        public final boolean d(DerivedState derivedState, Snapshot snapshot) {
            boolean z;
            boolean z2;
            Object obj = SnapshotKt.f8483c;
            synchronized (obj) {
                z = true;
                z2 = (this.f7968c == snapshot.getF8464b() && this.d == snapshot.h()) ? false : true;
            }
            if (this.f7970f == f7967i || (z2 && this.g != e(derivedState, snapshot))) {
                z = false;
            }
            if (!z || !z2) {
                return z;
            }
            synchronized (obj) {
                this.f7968c = snapshot.getF8464b();
                this.d = snapshot.h();
            }
            return z;
        }

        /* JADX WARN: Code duplicated, block: B:41:0x00d8 A[PHI: r11
          0x00d8: PHI (r11v1 int) = (r11v0 int), (r11v2 int) binds: [B:30:0x00a9, B:40:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:44:0x00de A[Catch: all -> 0x00cc, LOOP:3: B:29:0x009c->B:44:0x00de, LOOP_END, TryCatch #0 {all -> 0x00cc, blocks: (B:12:0x0025, B:15:0x0032, B:17:0x0041, B:19:0x004f, B:21:0x0059, B:24:0x0076, B:26:0x007a, B:29:0x009c, B:31:0x00ab, B:33:0x00b5, B:35:0x00bb, B:38:0x00cf, B:47:0x00f8, B:44:0x00de, B:46:0x00e8), top: B:74:0x0025 }] */
        /* JADX WARN: Code duplicated, block: B:63:0x014c A[LOOP:5: B:62:0x014a->B:63:0x014c, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:84:0x00f8 A[EDGE_INSN: B:84:0x00f8->B:47:0x00f8 BREAK  A[LOOP:3: B:29:0x009c->B:44:0x00de], SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v10, types: [androidx.compose.runtime.DerivedSnapshotState$ResultRecord] */
        /* JADX WARN: Type inference failed for: r13v5, types: [androidx.compose.runtime.snapshots.StateRecord] */
        /* JADX WARN: Type inference failed for: r13v6, types: [androidx.compose.runtime.snapshots.StateRecord, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r18v3, types: [int] */
        /* JADX WARN: Type inference failed for: r25v0 */
        /* JADX WARN: Type inference failed for: r25v1, types: [int] */
        /* JADX WARN: Type inference failed for: r25v2 */
        /* JADX WARN: Type inference failed for: r25v3 */
        /* JADX WARN: Type inference failed for: r25v4 */
        /* JADX WARN: Type inference failed for: r25v5 */
        /* JADX WARN: Type inference failed for: r25v6 */
        /* JADX WARN: Type inference failed for: r25v7 */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v7 */
        /* JADX WARN: Type inference failed for: r3v8, types: [int] */
        public final int e(DerivedState derivedState, Snapshot snapshot) {
            ObjectIntMap objectIntMap;
            int iIdentityHashCode;
            Object[] objArr;
            int i2;
            int i3;
            long[] jArr;
            int i4;
            Object[] objArr2;
            long[] jArr2;
            ?? r25;
            Object[] objArr3;
            long j2;
            long j3;
            int i5;
            ?? r26;
            ?? H;
            synchronized (SnapshotKt.f8483c) {
                objectIntMap = this.f7969e;
            }
            int i6 = 7;
            if (objectIntMap.f3343e == 0) {
                return 7;
            }
            MutableVector mutableVectorC = SnapshotStateKt.c();
            Object[] objArr4 = mutableVectorC.f8165b;
            int i7 = mutableVectorC.d;
            boolean z = false;
            for (int i8 = 0; i8 < i7; i8++) {
                ((DerivedStateObserver) objArr4[i8]).start();
            }
            try {
                Object[] objArr5 = objectIntMap.f3341b;
                int[] iArr = objectIntMap.f3342c;
                long[] jArr3 = objectIntMap.f3340a;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    iIdentityHashCode = 7;
                    int i9 = 0;
                    while (true) {
                        long j4 = jArr3[i9];
                        long j5 = -9187201950435737472L;
                        if ((((~j4) << i6) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i10 = 8;
                            int i11 = 8 - ((~(i9 - length)) >>> 31);
                            i4 = i6;
                            ?? r3 = z;
                            while (r3 < i11) {
                                if ((j4 & 255) < 128) {
                                    ?? r18 = (i9 << 3) + r3;
                                    j3 = j5;
                                    StateObject stateObject = (StateObject) objArr5[r18];
                                    int i12 = i10;
                                    if (iArr[r18] != 1) {
                                        jArr2 = jArr3;
                                        r25 = r3;
                                        objArr3 = objArr5;
                                        j2 = j4;
                                    } else {
                                        if (stateObject instanceof DerivedSnapshotState) {
                                            DerivedSnapshotState derivedSnapshotState = (DerivedSnapshotState) stateObject;
                                            H = derivedSnapshotState.K((ResultRecord) SnapshotKt.h(derivedSnapshotState.f7965e, snapshot), snapshot, z, derivedSnapshotState.f7964c);
                                            ObjectIntMap objectIntMap2 = H.f7969e;
                                            Object[] objArr6 = objectIntMap2.f3341b;
                                            long[] jArr4 = objectIntMap2.f3340a;
                                            int length2 = jArr4.length - 2;
                                            jArr2 = jArr3;
                                            r26 = r3;
                                            objArr3 = objArr5;
                                            if (length2 >= 0) {
                                                int i13 = 0;
                                                while (true) {
                                                    long j6 = jArr4[i13];
                                                    j2 = j4;
                                                    int iIdentityHashCode2 = iIdentityHashCode;
                                                    if ((((~j6) << i4) & j6 & j3) == j3) {
                                                        iIdentityHashCode = iIdentityHashCode2;
                                                        if (i13 != length2) {
                                                            break;
                                                            break;
                                                        }
                                                        i13++;
                                                        j4 = j2;
                                                        i12 = 8;
                                                    } else {
                                                        int i14 = 8 - ((~(i13 - length2)) >>> 31);
                                                        for (int i15 = 0; i15 < i14; i15++) {
                                                            if ((j6 & 255) < 128) {
                                                                iIdentityHashCode2 = (iIdentityHashCode2 * 31) + System.identityHashCode((StateObject) objArr6[(i13 << 3) + i15]);
                                                            }
                                                            j6 >>= i12;
                                                        }
                                                        if (i14 != i12) {
                                                            iIdentityHashCode = iIdentityHashCode2;
                                                            break;
                                                        }
                                                        iIdentityHashCode = iIdentityHashCode2;
                                                        if (i13 != length2) {
                                                            break;
                                                        }
                                                        i13++;
                                                        j4 = j2;
                                                        i12 = 8;
                                                    }
                                                }
                                            } else {
                                                j2 = j4;
                                            }
                                        } else {
                                            jArr2 = jArr3;
                                            r26 = r3;
                                            objArr3 = objArr5;
                                            j2 = j4;
                                            H = SnapshotKt.h(stateObject.s(), snapshot);
                                        }
                                        iIdentityHashCode = (((iIdentityHashCode * 31) + System.identityHashCode(H)) * 31) + Long.hashCode(H.f8533a);
                                        r25 = r26;
                                    }
                                    i5 = 8;
                                } else {
                                    jArr2 = jArr3;
                                    r25 = r3;
                                    objArr3 = objArr5;
                                    j2 = j4;
                                    j3 = j5;
                                    i5 = i10;
                                }
                                j4 = j2 >> i5;
                                i10 = i5;
                                j5 = j3;
                                objArr5 = objArr3;
                                z = false;
                                r3 = r25 + 1;
                                jArr3 = jArr2;
                            }
                            jArr = jArr3;
                            objArr2 = objArr5;
                            if (i11 != i10) {
                                break;
                            }
                        } else {
                            jArr = jArr3;
                            i4 = i6;
                            objArr2 = objArr5;
                        }
                        if (i9 != length) {
                            i9++;
                            i6 = i4;
                            jArr3 = jArr;
                            objArr5 = objArr2;
                            z = false;
                        } else {
                            i6 = iIdentityHashCode;
                        }
                    }
                    objArr = mutableVectorC.f8165b;
                    i2 = mutableVectorC.d;
                    for (i3 = 0; i3 < i2; i3++) {
                        ((DerivedStateObserver) objArr[i3]).done();
                    }
                    return iIdentityHashCode;
                }
                iIdentityHashCode = i6;
                objArr = mutableVectorC.f8165b;
                i2 = mutableVectorC.d;
                while (i3 < i2) {
                    ((DerivedStateObserver) objArr[i3]).done();
                }
                return iIdentityHashCode;
            } catch (Throwable th) {
                Object[] objArr7 = mutableVectorC.f8165b;
                int i16 = mutableVectorC.d;
                for (int i17 = 0; i17 < i16; i17++) {
                    ((DerivedStateObserver) objArr7[i17]).done();
                }
                throw th;
            }
        }
    }

    public DerivedSnapshotState(Function0<? extends T> function0, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.f7964c = function0;
        this.d = snapshotMutationPolicy;
    }

    @Override // androidx.compose.runtime.DerivedState
    public final ResultRecord I() {
        Snapshot.f8462e.getClass();
        Snapshot snapshotI = SnapshotKt.i();
        return K((ResultRecord) SnapshotKt.h(this.f7965e, snapshotI), snapshotI, false, this.f7964c);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x009f A[EDGE_INSN: B:101:0x009f->B:31:0x009f BREAK  A[LOOP:1: B:16:0x004a->B:30:0x009b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x009b A[Catch: all -> 0x0039, LOOP:1: B:16:0x004a->B:30:0x009b, LOOP_END, TryCatch #3 {all -> 0x0039, blocks: (B:8:0x0024, B:10:0x0030, B:13:0x003c, B:16:0x004a, B:18:0x005a, B:20:0x0066, B:22:0x0070, B:24:0x0088, B:26:0x008e, B:30:0x009b, B:31:0x009f), top: B:96:0x0024 }] */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.runtime.b] */
    public final ResultRecord K(ResultRecord resultRecord, Snapshot snapshot, boolean z, Function0 function0) {
        SnapshotMutationPolicy snapshotMutationPolicy;
        int i2;
        ResultRecord resultRecord2 = resultRecord;
        int i3 = 0;
        if (resultRecord2.d(this, snapshot)) {
            if (z) {
                MutableVector mutableVectorC = SnapshotStateKt.c();
                Object[] objArr = mutableVectorC.f8165b;
                int i4 = mutableVectorC.d;
                for (int i5 = 0; i5 < i4; i5++) {
                    ((DerivedStateObserver) objArr[i5]).start();
                }
                try {
                    ObjectIntMap objectIntMap = resultRecord2.f7969e;
                    SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.f8135a;
                    IntRef intRef = (IntRef) snapshotThreadLocal.a();
                    if (intRef == null) {
                        intRef = new IntRef(0);
                        snapshotThreadLocal.b(intRef);
                    }
                    int i6 = intRef.f8386a;
                    Object[] objArr2 = objectIntMap.f3341b;
                    int[] iArr = objectIntMap.f3342c;
                    long[] jArr = objectIntMap.f3340a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i7 = 0;
                        while (true) {
                            long j2 = jArr[i7];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i7 != length) {
                                    break;
                                    break;
                                }
                                i7++;
                                i3 = 0;
                            } else {
                                int i8 = 8;
                                int i9 = 8 - ((~(i7 - length)) >>> 31);
                                int i10 = i3;
                                while (i10 < i9) {
                                    if ((j2 & 255) < 128) {
                                        int i11 = (i7 << 3) + i10;
                                        StateObject stateObject = (StateObject) objArr2[i11];
                                        i2 = i8;
                                        intRef.f8386a = i6 + iArr[i11];
                                        Function1 function1E = snapshot.e();
                                        if (function1E != null) {
                                            function1E.invoke(stateObject);
                                        }
                                    } else {
                                        i2 = i8;
                                    }
                                    j2 >>= i2;
                                    i10++;
                                    i8 = i2;
                                }
                                if (i9 != i8) {
                                    break;
                                }
                                if (i7 != length) {
                                    break;
                                }
                                i7++;
                                i3 = 0;
                            }
                        }
                    }
                    intRef.f8386a = i6;
                } finally {
                    Object[] objArr3 = mutableVectorC.f8165b;
                    int i12 = mutableVectorC.d;
                    for (int i13 = 0; i13 < i12; i13++) {
                        ((DerivedStateObserver) objArr3[i13]).done();
                    }
                }
            }
            return resultRecord2;
        }
        final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
        SnapshotThreadLocal snapshotThreadLocal2 = SnapshotStateKt__DerivedStateKt.f8135a;
        final IntRef intRef2 = (IntRef) snapshotThreadLocal2.a();
        if (intRef2 == null) {
            intRef2 = new IntRef(0);
            snapshotThreadLocal2.b(intRef2);
        }
        final int i14 = intRef2.f8386a;
        MutableVector mutableVectorC2 = SnapshotStateKt.c();
        Object[] objArr4 = mutableVectorC2.f8165b;
        int i15 = mutableVectorC2.d;
        for (int i16 = 0; i16 < i15; i16++) {
            ((DerivedStateObserver) objArr4[i16]).start();
        }
        try {
            intRef2.f8386a = i14 + 1;
            Snapshot.Companion companion = Snapshot.f8462e;
            ?? r9 = new Function1() { // from class: androidx.compose.runtime.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    if (obj == this.f8160b) {
                        md.k("A derived state calculation cannot read itself");
                        return null;
                    }
                    if (obj instanceof StateObject) {
                        int i17 = intRef2.f8386a - i14;
                        MutableObjectIntMap mutableObjectIntMap2 = mutableObjectIntMap;
                        int iA = mutableObjectIntMap2.a(obj);
                        mutableObjectIntMap2.h(Math.min(i17, iA >= 0 ? mutableObjectIntMap2.f3342c[iA] : Integer.MAX_VALUE), obj);
                    }
                    return Unit.f71739a;
                }
            };
            companion.getClass();
            Object objC = Snapshot.Companion.c(r9, function0);
            intRef2.f8386a = i14;
            Object[] objArr5 = mutableVectorC2.f8165b;
            int i17 = mutableVectorC2.d;
            for (int i18 = 0; i18 < i17; i18++) {
                ((DerivedStateObserver) objArr5[i18]).done();
            }
            Object obj = SnapshotKt.f8483c;
            synchronized (obj) {
                try {
                    Snapshot.f8462e.getClass();
                    Snapshot snapshotI = SnapshotKt.i();
                    Object obj2 = resultRecord2.f7970f;
                    ResultRecord.f7966h.getClass();
                    if (obj2 == ResultRecord.f7967i || (snapshotMutationPolicy = this.d) == null || !snapshotMutationPolicy.a(objC, resultRecord2.f7970f)) {
                        ResultRecord resultRecord3 = this.f7965e;
                        synchronized (obj) {
                            StateRecord stateRecordL = SnapshotKt.l(resultRecord3, this);
                            stateRecordL.a(resultRecord3);
                            stateRecordL.f8533a = snapshotI.getF8464b();
                            resultRecord2 = (ResultRecord) stateRecordL;
                            resultRecord2.f7969e = mutableObjectIntMap;
                            resultRecord2.g = resultRecord2.e(this, snapshotI);
                            resultRecord2.f7970f = objC;
                        }
                        return resultRecord2;
                    }
                    resultRecord2.f7969e = mutableObjectIntMap;
                    resultRecord2.g = resultRecord2.e(this, snapshotI);
                } catch (Throwable th) {
                    throw th;
                }
            }
            IntRef intRef3 = (IntRef) SnapshotStateKt__DerivedStateKt.f8135a.a();
            if (intRef3 == null || intRef3.f8386a != 0) {
                return resultRecord2;
            }
            SnapshotKt.i().m();
            synchronized (obj) {
                Snapshot snapshotI2 = SnapshotKt.i();
                resultRecord2.f7968c = snapshotI2.getF8464b();
                resultRecord2.d = snapshotI2.h();
                return resultRecord2;
            }
        } catch (Throwable th2) {
            Object[] objArr6 = mutableVectorC2.f8165b;
            int i19 = mutableVectorC2.d;
            for (int i20 = 0; i20 < i19; i20++) {
                ((DerivedStateObserver) objArr6[i20]).done();
            }
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.DerivedState
    /* JADX INFO: renamed from: e, reason: from getter */
    public final SnapshotMutationPolicy getD() {
        return this.d;
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        Snapshot.f8462e.getClass();
        Function1 function1E = SnapshotKt.i().e();
        if (function1E != null) {
            function1E.invoke(this);
        }
        Snapshot snapshotI = SnapshotKt.i();
        return K((ResultRecord) SnapshotKt.h(this.f7965e, snapshotI), snapshotI, true, this.f7964c).f7970f;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.getClass();
        this.f7965e = (ResultRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f7965e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DerivedState(value=");
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.g(this.f7965e);
        Snapshot.f8462e.getClass();
        sb.append(resultRecord.d(this, SnapshotKt.i()) ? String.valueOf(resultRecord.f7970f) : "<Not calculated>");
        sb.append(")@");
        sb.append(hashCode());
        return sb.toString();
    }
}
