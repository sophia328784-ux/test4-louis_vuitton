package androidx.compose.runtime.snapshots;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.DerivedStateObserver;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.j00;
import defpackage.ll0;
import defpackage.os;
import defpackage.pq0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB0\u0012'\u0010\b\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Lkotlin/ParameterName;", "name", "callback", "onChangedExecutor", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ObservedScopeMap", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotStateObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f8498a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8500c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j00 f8503h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ObservedScopeMap f8504i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f8499b = new AtomicReference(null);
    public final ll0 d = new ll0(this, 17);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f8501e = new Function1() { // from class: androidx.compose.runtime.snapshots.a
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            SnapshotStateObserver snapshotStateObserver = this.f8549b;
            synchronized (snapshotStateObserver.g) {
                SnapshotStateObserver.ObservedScopeMap observedScopeMap = snapshotStateObserver.f8504i;
                observedScopeMap.getClass();
                Object obj2 = observedScopeMap.f8507b;
                obj2.getClass();
                int i2 = observedScopeMap.d;
                MutableObjectIntMap mutableObjectIntMap = observedScopeMap.f8508c;
                if (mutableObjectIntMap == null) {
                    mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
                    observedScopeMap.f8508c = mutableObjectIntMap;
                    observedScopeMap.f8510f.o(obj2, mutableObjectIntMap);
                }
                observedScopeMap.b(obj, i2, obj2, mutableObjectIntMap);
            }
            return Unit.f71739a;
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableVector f8502f = new MutableVector(new ObservedScopeMap[16], 0);
    public final Object g = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f8505j = -1;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;", "", "Lkotlin/Function1;", "", "onChanged", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ObservedScopeMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function1 f8506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f8507b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MutableObjectIntMap f8508c;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f8513j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f8514k;
        public int d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MutableScatterMap f8509e = ScatterMapKt.b();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final MutableScatterMap f8510f = new MutableScatterMap(0, 1, null);
        public final MutableScatterSet g = new MutableScatterSet(0, 1, null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MutableVector f8511h = new MutableVector(new DerivedState[16], 0);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 f8512i = new DerivedStateObserver() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void done() {
                this.f8515a.f8514k--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void start() {
                this.f8515a.f8514k++;
            }
        };
        public final MutableScatterMap l = ScatterMapKt.b();
        public final HashMap m = new HashMap();

        /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1] */
        public ObservedScopeMap(Function1<Object, Unit> function1) {
            this.f8506a = function1;
        }

        /* JADX WARN: Code duplicated, block: B:100:0x020b A[DONT_INVERT, PHI: r21
          0x020b: PHI (r21v19 boolean) = (r21v18 boolean), (r21v20 boolean) binds: [B:91:0x01e3, B:99:0x0209] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:101:0x020d A[Catch: all -> 0x00d5, LOOP:8: B:90:0x01d9->B:101:0x020d, LOOP_END, TryCatch #1 {all -> 0x00d5, blocks: (B:24:0x0074, B:26:0x007a, B:28:0x007e, B:31:0x0093, B:33:0x00a3, B:35:0x00ad, B:37:0x00b3, B:39:0x00ce, B:43:0x00d9, B:45:0x00e5, B:47:0x00eb, B:49:0x00ef, B:52:0x0101, B:54:0x0111, B:56:0x011b, B:58:0x0121, B:60:0x0131, B:70:0x0164, B:64:0x013c, B:65:0x0145, B:66:0x014f, B:76:0x0186, B:78:0x0199, B:80:0x01b1, B:81:0x01b5, B:83:0x01c1, B:85:0x01c7, B:87:0x01cb, B:90:0x01d9, B:92:0x01e5, B:94:0x01f1, B:96:0x01f7, B:97:0x0201, B:101:0x020d, B:102:0x0210, B:103:0x0216), top: B:313:0x0074 }] */
        /* JADX WARN: Code duplicated, block: B:128:0x0285 A[DONT_INVERT, PHI: r21
          0x0285: PHI (r21v12 boolean) = (r21v11 boolean), (r21v13 boolean) binds: [B:119:0x025d, B:127:0x0283] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:129:0x0287 A[LOOP:6: B:118:0x0253->B:129:0x0287, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:150:0x030c  */
        /* JADX WARN: Code duplicated, block: B:197:0x03e5 A[DONT_INVERT, PHI: r27
          0x03e5: PHI (r27v12 boolean) = (r27v11 boolean), (r27v13 boolean) binds: [B:184:0x03ae, B:196:0x03e3] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:198:0x03e7 A[Catch: all -> 0x03d2, LOOP:18: B:183:0x03a2->B:198:0x03e7, LOOP_END, TryCatch #0 {all -> 0x03d2, blocks: (B:157:0x031f, B:159:0x0323, B:162:0x0331, B:164:0x0340, B:166:0x034c, B:168:0x0352, B:174:0x037c, B:176:0x0388, B:178:0x038e, B:180:0x0392, B:183:0x03a2, B:185:0x03b0, B:187:0x03bc, B:189:0x03c2, B:194:0x03db, B:205:0x040d, B:198:0x03e7, B:200:0x03f1, B:201:0x03f8, B:211:0x042b, B:213:0x043c, B:215:0x044a, B:216:0x044e, B:218:0x045a, B:220:0x0460, B:222:0x0464, B:225:0x0472, B:227:0x047e, B:229:0x048a, B:231:0x0490, B:232:0x0499, B:236:0x04a5, B:237:0x04a8, B:238:0x04ad), top: B:311:0x031f }] */
        /* JADX WARN: Code duplicated, block: B:199:0x03ee  */
        /* JADX WARN: Code duplicated, block: B:235:0x04a3 A[DONT_INVERT, PHI: r2
          0x04a3: PHI (r2v15 boolean) = (r2v14 boolean), (r2v16 boolean) binds: [B:226:0x047c, B:234:0x04a1] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:236:0x04a5 A[Catch: all -> 0x03d2, LOOP:20: B:225:0x0472->B:236:0x04a5, LOOP_END, TryCatch #0 {all -> 0x03d2, blocks: (B:157:0x031f, B:159:0x0323, B:162:0x0331, B:164:0x0340, B:166:0x034c, B:168:0x0352, B:174:0x037c, B:176:0x0388, B:178:0x038e, B:180:0x0392, B:183:0x03a2, B:185:0x03b0, B:187:0x03bc, B:189:0x03c2, B:194:0x03db, B:205:0x040d, B:198:0x03e7, B:200:0x03f1, B:201:0x03f8, B:211:0x042b, B:213:0x043c, B:215:0x044a, B:216:0x044e, B:218:0x045a, B:220:0x0460, B:222:0x0464, B:225:0x0472, B:227:0x047e, B:229:0x048a, B:231:0x0490, B:232:0x0499, B:236:0x04a5, B:237:0x04a8, B:238:0x04ad), top: B:311:0x031f }] */
        /* JADX WARN: Code duplicated, block: B:240:0x04b1  */
        /* JADX WARN: Code duplicated, block: B:244:0x04ba  */
        /* JADX WARN: Code duplicated, block: B:247:0x04c2  */
        /* JADX WARN: Code duplicated, block: B:249:0x04c6  */
        /* JADX WARN: Code duplicated, block: B:251:0x04d3  */
        /* JADX WARN: Code duplicated, block: B:254:0x04e0  */
        /* JADX WARN: Code duplicated, block: B:256:0x04ec  */
        /* JADX WARN: Code duplicated, block: B:258:0x04f2  */
        /* JADX WARN: Code duplicated, block: B:262:0x0505 A[DONT_INVERT, PHI: r2
          0x0505: PHI (r2v6 boolean) = (r2v5 boolean), (r2v7 boolean) binds: [B:253:0x04de, B:261:0x0503] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:263:0x0507 A[LOOP:14: B:252:0x04d4->B:263:0x0507, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:264:0x050a  */
        /* JADX WARN: Code duplicated, block: B:324:0x0156 A[EDGE_INSN: B:324:0x0156->B:67:0x0156 BREAK  A[LOOP:4: B:52:0x0101->B:64:0x013c], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:328:0x028f A[EDGE_INSN: B:328:0x028f->B:131:0x028f BREAK  A[LOOP:6: B:118:0x0253->B:129:0x0287], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:334:0x0196 A[EDGE_INSN: B:334:0x0196->B:77:0x0196 BREAK  A[LOOP:8: B:90:0x01d9->B:101:0x020d], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:348:0x050e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:349:0x050e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:350:0x050e A[EDGE_INSN: B:350:0x050e->B:265:0x050e BREAK  A[LOOP:14: B:252:0x04d4->B:263:0x0507], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:351:0x050e A[EDGE_INSN: B:351:0x050e->B:265:0x050e BREAK  A[LOOP:14: B:252:0x04d4->B:263:0x0507], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:354:0x04fb A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:359:0x03fd A[EDGE_INSN: B:359:0x03fd->B:202:0x03fd BREAK  A[LOOP:18: B:183:0x03a2->B:198:0x03e7], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:362:0x0437 A[EDGE_INSN: B:362:0x0437->B:212:0x0437 BREAK  A[LOOP:20: B:225:0x0472->B:236:0x04a5], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:63:0x013a A[DONT_INVERT, PHI: r21
          0x013a: PHI (r21v29 boolean) = (r21v28 boolean), (r21v30 boolean) binds: [B:53:0x010f, B:62:0x0138] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:64:0x013c A[Catch: all -> 0x00d5, LOOP:4: B:52:0x0101->B:64:0x013c, LOOP_END, TryCatch #1 {all -> 0x00d5, blocks: (B:24:0x0074, B:26:0x007a, B:28:0x007e, B:31:0x0093, B:33:0x00a3, B:35:0x00ad, B:37:0x00b3, B:39:0x00ce, B:43:0x00d9, B:45:0x00e5, B:47:0x00eb, B:49:0x00ef, B:52:0x0101, B:54:0x0111, B:56:0x011b, B:58:0x0121, B:60:0x0131, B:70:0x0164, B:64:0x013c, B:65:0x0145, B:66:0x014f, B:76:0x0186, B:78:0x0199, B:80:0x01b1, B:81:0x01b5, B:83:0x01c1, B:85:0x01c7, B:87:0x01cb, B:90:0x01d9, B:92:0x01e5, B:94:0x01f1, B:96:0x01f7, B:97:0x0201, B:101:0x020d, B:102:0x0210, B:103:0x0216), top: B:313:0x0074 }] */
        public final boolean a(Set set) throws Throwable {
            char c2;
            long j2;
            boolean z;
            Iterator it;
            Object objE;
            Object[] objArr;
            long[] jArr;
            int length;
            int i2;
            long j3;
            int i3;
            int i4;
            boolean z2;
            Object[] objArr2;
            Iterator it2;
            int i5;
            long j4;
            Object[] objArr3;
            int i6;
            int i7;
            Object[] objArr4;
            MutableVector mutableVector;
            int i8;
            MutableScatterMap mutableScatterMap;
            long[] jArr2;
            MutableScatterMap mutableScatterMap2;
            MutableScatterMap mutableScatterMap3;
            MutableObjectIntMap mutableObjectIntMap;
            long[] jArr3;
            Object[] objArr5;
            int i9;
            long[] jArr4;
            Object[] objArr6;
            int i10;
            int i11;
            long j5;
            int i12;
            int i13;
            Object[] objArr7;
            int i14;
            long j6;
            Object[] objArr8;
            int i15;
            int i16;
            ObservedScopeMap observedScopeMap = this;
            boolean z3 = set instanceof ScatterSetWrapper;
            MutableVector mutableVector2 = observedScopeMap.f8511h;
            MutableScatterMap mutableScatterMap4 = observedScopeMap.l;
            HashMap map = observedScopeMap.m;
            MutableScatterMap mutableScatterMap5 = observedScopeMap.f8509e;
            MutableScatterSet mutableScatterSet = observedScopeMap.g;
            if (z3) {
                ScatterSet scatterSet = ((ScatterSetWrapper) set).f8172b;
                Object[] objArr9 = scatterSet.f3368b;
                long[] jArr5 = scatterSet.f3367a;
                int length2 = jArr5.length - 2;
                if (length2 >= 0) {
                    int i17 = 0;
                    c2 = 7;
                    z = false;
                    j2 = -9187201950435737472L;
                    while (true) {
                        long j7 = jArr5[i17];
                        int i18 = 8;
                        if ((((~j7) << 7) & j7 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i19 = 8 - ((~(i17 - length2)) >>> 31);
                            int i20 = 0;
                            while (i20 < i19) {
                                if ((j7 & 255) < 128) {
                                    Object obj = objArr9[(i17 << 3) + i20];
                                    if (obj instanceof StateObjectImpl) {
                                        int i21 = ReaderKind.f8460a;
                                        jArr4 = jArr5;
                                        if (!((StateObjectImpl) obj).j(2)) {
                                        }
                                        j7 = j5 >> 8;
                                        i20 = i13 + 1;
                                        jArr5 = jArr4;
                                        i18 = 8;
                                        objArr9 = objArr6;
                                        length2 = i10;
                                        i17 = i11;
                                        i19 = i12;
                                    } else {
                                        jArr4 = jArr5;
                                    }
                                    if (observedScopeMap.f8513j || !mutableScatterMap4.c(obj)) {
                                        objArr6 = objArr9;
                                        i10 = length2;
                                        i11 = i17;
                                        j5 = j7;
                                        i12 = i19;
                                        i13 = i20;
                                    } else {
                                        observedScopeMap.f8513j = true;
                                        try {
                                            Object objE2 = mutableScatterMap4.e(obj);
                                            if (objE2 != null) {
                                                if (objE2 instanceof MutableScatterSet) {
                                                    MutableScatterSet mutableScatterSet2 = (MutableScatterSet) objE2;
                                                    Object[] objArr10 = mutableScatterSet2.f3368b;
                                                    long[] jArr6 = mutableScatterSet2.f3367a;
                                                    objArr6 = objArr9;
                                                    int length3 = jArr6.length - 2;
                                                    if (length3 >= 0) {
                                                        j5 = j7;
                                                        int i22 = 0;
                                                        Object[] objArr11 = objArr10;
                                                        while (true) {
                                                            long j8 = jArr6[i22];
                                                            i10 = length2;
                                                            i11 = i17;
                                                            if ((((~j8) << 7) & j8 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                int i23 = 8 - ((~(i22 - length3)) >>> 31);
                                                                int i24 = 0;
                                                                while (i24 < i23) {
                                                                    if ((j8 & 255) < 128) {
                                                                        i14 = i24;
                                                                        DerivedState derivedState = (DerivedState) objArr11[(i22 << 3) + i24];
                                                                        derivedState.getClass();
                                                                        j6 = j8;
                                                                        Object obj2 = map.get(derivedState);
                                                                        SnapshotMutationPolicy d = derivedState.getD();
                                                                        if (d == null) {
                                                                            d = SnapshotStateKt.n();
                                                                        }
                                                                        objArr8 = objArr11;
                                                                        if (d.a(derivedState.I().f7970f, obj2)) {
                                                                            i15 = i19;
                                                                            i16 = i20;
                                                                            mutableVector2.b(derivedState);
                                                                        } else {
                                                                            Object objE3 = mutableScatterMap5.e(derivedState);
                                                                            if (objE3 != null) {
                                                                                if (objE3 instanceof MutableScatterSet) {
                                                                                    MutableScatterSet mutableScatterSet3 = (MutableScatterSet) objE3;
                                                                                    Object[] objArr12 = mutableScatterSet3.f3368b;
                                                                                    long[] jArr7 = mutableScatterSet3.f3367a;
                                                                                    int length4 = jArr7.length - 2;
                                                                                    if (length4 >= 0) {
                                                                                        int i25 = 0;
                                                                                        while (true) {
                                                                                            long j9 = jArr7[i25];
                                                                                            i15 = i19;
                                                                                            i16 = i20;
                                                                                            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                                                if (i25 != length4) {
                                                                                                    break;
                                                                                                    break;
                                                                                                }
                                                                                                i25++;
                                                                                                i19 = i15;
                                                                                                i20 = i16;
                                                                                                i18 = 8;
                                                                                            } else {
                                                                                                int i26 = 8 - ((~(i25 - length4)) >>> 31);
                                                                                                for (int i27 = 0; i27 < i26; i27++) {
                                                                                                    if ((j9 & 255) < 128) {
                                                                                                        mutableScatterSet.d(objArr12[(i25 << 3) + i27]);
                                                                                                        z = true;
                                                                                                    }
                                                                                                    j9 >>= i18;
                                                                                                }
                                                                                                if (i26 != i18) {
                                                                                                    break;
                                                                                                }
                                                                                                if (i25 != length4) {
                                                                                                    break;
                                                                                                }
                                                                                                i25++;
                                                                                                i19 = i15;
                                                                                                i20 = i16;
                                                                                                i18 = 8;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    i15 = i19;
                                                                                    i16 = i20;
                                                                                    mutableScatterSet.d(objE3);
                                                                                    z = true;
                                                                                }
                                                                            }
                                                                        }
                                                                        j8 = j6 >> 8;
                                                                        i18 = 8;
                                                                        i24 = i14 + 1;
                                                                        objArr11 = objArr8;
                                                                        i19 = i15;
                                                                        i20 = i16;
                                                                    } else {
                                                                        i14 = i24;
                                                                        j6 = j8;
                                                                        objArr8 = objArr11;
                                                                    }
                                                                    i15 = i19;
                                                                    i16 = i20;
                                                                    j8 = j6 >> 8;
                                                                    i18 = 8;
                                                                    i24 = i14 + 1;
                                                                    objArr11 = objArr8;
                                                                    i19 = i15;
                                                                    i20 = i16;
                                                                }
                                                                objArr7 = objArr11;
                                                                i12 = i19;
                                                                i13 = i20;
                                                                if (i23 != i18) {
                                                                    break;
                                                                }
                                                            } else {
                                                                objArr7 = objArr11;
                                                                i12 = i19;
                                                                i13 = i20;
                                                            }
                                                            if (i22 == length3) {
                                                                break;
                                                            }
                                                            i22++;
                                                            length2 = i10;
                                                            i17 = i11;
                                                            objArr11 = objArr7;
                                                            i19 = i12;
                                                            i20 = i13;
                                                            i18 = 8;
                                                        }
                                                    }
                                                } else {
                                                    objArr6 = objArr9;
                                                    i10 = length2;
                                                    i11 = i17;
                                                    j5 = j7;
                                                    i12 = i19;
                                                    i13 = i20;
                                                    DerivedState derivedState2 = (DerivedState) objE2;
                                                    Object obj3 = map.get(derivedState2);
                                                    SnapshotMutationPolicy d2 = derivedState2.getD();
                                                    if (d2 == null) {
                                                        d2 = SnapshotStateKt.n();
                                                    }
                                                    if (d2.a(derivedState2.I().f7970f, obj3)) {
                                                        mutableVector2.b(derivedState2);
                                                    } else {
                                                        Object objE4 = mutableScatterMap5.e(derivedState2);
                                                        if (objE4 != null) {
                                                            if (objE4 instanceof MutableScatterSet) {
                                                                MutableScatterSet mutableScatterSet4 = (MutableScatterSet) objE4;
                                                                Object[] objArr13 = mutableScatterSet4.f3368b;
                                                                long[] jArr8 = mutableScatterSet4.f3367a;
                                                                int length5 = jArr8.length - 2;
                                                                if (length5 >= 0) {
                                                                    int i28 = 0;
                                                                    while (true) {
                                                                        long j10 = jArr8[i28];
                                                                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                            if (i28 != length5) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            i28++;
                                                                        } else {
                                                                            int i29 = 8 - ((~(i28 - length5)) >>> 31);
                                                                            for (int i30 = 0; i30 < i29; i30++) {
                                                                                if ((j10 & 255) < 128) {
                                                                                    mutableScatterSet.d(objArr13[(i28 << 3) + i30]);
                                                                                    z = true;
                                                                                }
                                                                                j10 >>= 8;
                                                                            }
                                                                            if (i29 != 8) {
                                                                                break;
                                                                            }
                                                                            if (i28 != length5) {
                                                                                break;
                                                                            }
                                                                            i28++;
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                mutableScatterSet.d(objE4);
                                                                z = true;
                                                            }
                                                        }
                                                    }
                                                }
                                                observedScopeMap.f8513j = false;
                                            } else {
                                                objArr6 = objArr9;
                                            }
                                            i10 = length2;
                                            i11 = i17;
                                            j5 = j7;
                                            i12 = i19;
                                            i13 = i20;
                                            observedScopeMap.f8513j = false;
                                        } catch (Throwable th) {
                                            observedScopeMap.f8513j = false;
                                            throw th;
                                        }
                                    }
                                    Object objE5 = mutableScatterMap5.e(obj);
                                    if (objE5 != null) {
                                        if (objE5 instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet5 = (MutableScatterSet) objE5;
                                            Object[] objArr14 = mutableScatterSet5.f3368b;
                                            long[] jArr9 = mutableScatterSet5.f3367a;
                                            int length6 = jArr9.length - 2;
                                            if (length6 >= 0) {
                                                int i31 = 0;
                                                while (true) {
                                                    long j11 = jArr9[i31];
                                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                        if (i31 != length6) {
                                                            break;
                                                            break;
                                                        }
                                                        i31++;
                                                    } else {
                                                        int i32 = 8 - ((~(i31 - length6)) >>> 31);
                                                        for (int i33 = 0; i33 < i32; i33++) {
                                                            if ((j11 & 255) < 128) {
                                                                mutableScatterSet.d(objArr14[(i31 << 3) + i33]);
                                                                z = true;
                                                            }
                                                            j11 >>= 8;
                                                        }
                                                        if (i32 != 8) {
                                                            break;
                                                        }
                                                        if (i31 != length6) {
                                                            break;
                                                        }
                                                        i31++;
                                                    }
                                                }
                                            }
                                        } else {
                                            mutableScatterSet.d(objE5);
                                            z = true;
                                        }
                                    }
                                    j7 = j5 >> 8;
                                    i20 = i13 + 1;
                                    jArr5 = jArr4;
                                    i18 = 8;
                                    objArr9 = objArr6;
                                    length2 = i10;
                                    i17 = i11;
                                    i19 = i12;
                                } else {
                                    jArr4 = jArr5;
                                }
                                objArr6 = objArr9;
                                i10 = length2;
                                i11 = i17;
                                j5 = j7;
                                i12 = i19;
                                i13 = i20;
                                j7 = j5 >> 8;
                                i20 = i13 + 1;
                                jArr5 = jArr4;
                                i18 = 8;
                                objArr9 = objArr6;
                                length2 = i10;
                                i17 = i11;
                                i19 = i12;
                            }
                            jArr3 = jArr5;
                            objArr5 = objArr9;
                            int i34 = length2;
                            int i35 = i17;
                            if (i19 != i18) {
                                break;
                            }
                            length2 = i34;
                            i9 = i35;
                        } else {
                            jArr3 = jArr5;
                            objArr5 = objArr9;
                            i9 = i17;
                        }
                        if (i9 == length2) {
                            break;
                        }
                        i17 = i9 + 1;
                        jArr5 = jArr3;
                        objArr9 = objArr5;
                    }
                } else {
                    c2 = 7;
                    j2 = -9187201950435737472L;
                    z = false;
                }
            } else {
                c2 = 7;
                j2 = -9187201950435737472L;
                Iterator it3 = set.iterator();
                boolean z4 = false;
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if (next instanceof StateObjectImpl) {
                        int i36 = ReaderKind.f8460a;
                        if (((StateObjectImpl) next).j(2)) {
                            if (observedScopeMap.f8513j && mutableScatterMap4.c(next)) {
                                observedScopeMap.f8513j = true;
                                try {
                                    Object objE6 = mutableScatterMap4.e(next);
                                    if (objE6 != null) {
                                        try {
                                            if (objE6 instanceof MutableScatterSet) {
                                                MutableScatterSet mutableScatterSet6 = (MutableScatterSet) objE6;
                                                Object[] objArr15 = mutableScatterSet6.f3368b;
                                                long[] jArr10 = mutableScatterSet6.f3367a;
                                                int length7 = jArr10.length - 2;
                                                if (length7 >= 0) {
                                                    int i37 = 0;
                                                    while (true) {
                                                        long j12 = jArr10[i37];
                                                        long[] jArr11 = jArr10;
                                                        Object[] objArr16 = objArr15;
                                                        if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i38 = 8 - ((~(i37 - length7)) >>> 31);
                                                            int i39 = 0;
                                                            while (i39 < i38) {
                                                                if ((j12 & 255) < 128) {
                                                                    it2 = it3;
                                                                    DerivedState derivedState3 = (DerivedState) objArr16[(i37 << 3) + i39];
                                                                    derivedState3.getClass();
                                                                    boolean z5 = z4;
                                                                    Object obj4 = map.get(derivedState3);
                                                                    SnapshotMutationPolicy d3 = derivedState3.getD();
                                                                    if (d3 == null) {
                                                                        d3 = SnapshotStateKt.n();
                                                                    }
                                                                    i5 = i39;
                                                                    j4 = j12;
                                                                    if (d3.a(derivedState3.I().f7970f, obj4)) {
                                                                        objArr3 = objArr16;
                                                                        mutableVector2.b(derivedState3);
                                                                    } else {
                                                                        Object objE7 = mutableScatterMap5.e(derivedState3);
                                                                        if (objE7 == null) {
                                                                            objArr3 = objArr16;
                                                                        } else if (objE7 instanceof MutableScatterSet) {
                                                                            MutableScatterSet mutableScatterSet7 = (MutableScatterSet) objE7;
                                                                            Object[] objArr17 = mutableScatterSet7.f3368b;
                                                                            long[] jArr12 = mutableScatterSet7.f3367a;
                                                                            int length8 = jArr12.length - 2;
                                                                            if (length8 >= 0) {
                                                                                objArr3 = objArr16;
                                                                                int i40 = 0;
                                                                                while (true) {
                                                                                    long j13 = jArr12[i40];
                                                                                    long[] jArr13 = jArr12;
                                                                                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                                        if (i40 != length8) {
                                                                                            break;
                                                                                            break;
                                                                                        }
                                                                                        i40++;
                                                                                        jArr12 = jArr13;
                                                                                    } else {
                                                                                        int i41 = 8 - ((~(i40 - length8)) >>> 31);
                                                                                        for (int i42 = 0; i42 < i41; i42++) {
                                                                                            if ((j13 & 255) < 128) {
                                                                                                mutableScatterSet.d(objArr17[(i40 << 3) + i42]);
                                                                                                z5 = true;
                                                                                            }
                                                                                            j13 >>= 8;
                                                                                        }
                                                                                        if (i41 != 8) {
                                                                                            break;
                                                                                        }
                                                                                        if (i40 != length8) {
                                                                                            break;
                                                                                        }
                                                                                        i40++;
                                                                                        jArr12 = jArr13;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                objArr3 = objArr16;
                                                                            }
                                                                        } else {
                                                                            objArr3 = objArr16;
                                                                            mutableScatterSet.d(objE7);
                                                                            z4 = true;
                                                                        }
                                                                    }
                                                                    z4 = z5;
                                                                } else {
                                                                    it2 = it3;
                                                                    i5 = i39;
                                                                    j4 = j12;
                                                                    objArr3 = objArr16;
                                                                }
                                                                i39 = i5 + 1;
                                                                j12 = j4 >> 8;
                                                                objArr16 = objArr3;
                                                                observedScopeMap = this;
                                                                it3 = it2;
                                                            }
                                                            it = it3;
                                                            objArr2 = objArr16;
                                                            if (i38 != 8) {
                                                                break;
                                                            }
                                                        } else {
                                                            it = it3;
                                                            objArr2 = objArr16;
                                                        }
                                                        if (i37 == length7) {
                                                            break;
                                                        }
                                                        i37++;
                                                        observedScopeMap = this;
                                                        it3 = it;
                                                        jArr10 = jArr11;
                                                        objArr15 = objArr2;
                                                    }
                                                } else {
                                                    it = it3;
                                                }
                                            } else {
                                                it = it3;
                                                DerivedState derivedState4 = (DerivedState) objE6;
                                                Object obj5 = map.get(derivedState4);
                                                SnapshotMutationPolicy d4 = derivedState4.getD();
                                                if (d4 == null) {
                                                    d4 = SnapshotStateKt.n();
                                                }
                                                if (d4.a(derivedState4.I().f7970f, obj5)) {
                                                    mutableVector2.b(derivedState4);
                                                } else {
                                                    Object objE8 = mutableScatterMap5.e(derivedState4);
                                                    if (objE8 != null) {
                                                        if (objE8 instanceof MutableScatterSet) {
                                                            MutableScatterSet mutableScatterSet8 = (MutableScatterSet) objE8;
                                                            Object[] objArr18 = mutableScatterSet8.f3368b;
                                                            long[] jArr14 = mutableScatterSet8.f3367a;
                                                            int length9 = jArr14.length - 2;
                                                            if (length9 >= 0) {
                                                                int i43 = 0;
                                                                while (true) {
                                                                    long j14 = jArr14[i43];
                                                                    if ((((~j14) << 7) & j14 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                        if (i43 != length9) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i43++;
                                                                    } else {
                                                                        int i44 = 8 - ((~(i43 - length9)) >>> 31);
                                                                        for (int i45 = 0; i45 < i44; i45++) {
                                                                            if ((j14 & 255) < 128) {
                                                                                mutableScatterSet.d(objArr18[(i43 << 3) + i45]);
                                                                                z4 = true;
                                                                            }
                                                                            j14 >>= 8;
                                                                        }
                                                                        if (i44 != 8) {
                                                                            break;
                                                                        }
                                                                        if (i43 != length9) {
                                                                            break;
                                                                        }
                                                                        i43++;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            mutableScatterSet.d(objE8);
                                                            z4 = true;
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            z2 = false;
                                            observedScopeMap = this;
                                            observedScopeMap.f8513j = z2;
                                            throw th;
                                        }
                                    } else {
                                        it = it3;
                                    }
                                    observedScopeMap = this;
                                    observedScopeMap.f8513j = false;
                                } catch (Throwable th3) {
                                    th = th3;
                                    z2 = false;
                                }
                            } else {
                                it = it3;
                            }
                            objE = mutableScatterMap5.e(next);
                            if (objE == null) {
                                if (objE instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet9 = (MutableScatterSet) objE;
                                    objArr = mutableScatterSet9.f3368b;
                                    jArr = mutableScatterSet9.f3367a;
                                    length = jArr.length - 2;
                                    if (length >= 0) {
                                        i2 = 0;
                                        while (true) {
                                            j3 = jArr[i2];
                                            if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                if (i2 != length) {
                                                    break;
                                                    break;
                                                }
                                                i2++;
                                            } else {
                                                i3 = 8 - ((~(i2 - length)) >>> 31);
                                                for (i4 = 0; i4 < i3; i4++) {
                                                    if ((j3 & 255) < 128) {
                                                        mutableScatterSet.d(objArr[(i2 << 3) + i4]);
                                                        z4 = true;
                                                    }
                                                    j3 >>= 8;
                                                }
                                                if (i3 == 8) {
                                                    break;
                                                }
                                                if (i2 != length) {
                                                    break;
                                                }
                                                i2++;
                                            }
                                        }
                                    }
                                } else {
                                    mutableScatterSet.d(objE);
                                    z4 = true;
                                }
                            }
                        } else {
                            it = it3;
                        }
                    } else {
                        if (observedScopeMap.f8513j) {
                            it = it3;
                        } else {
                            it = it3;
                        }
                        objE = mutableScatterMap5.e(next);
                        if (objE == null) {
                            if (objE instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet10 = (MutableScatterSet) objE;
                                objArr = mutableScatterSet10.f3368b;
                                jArr = mutableScatterSet10.f3367a;
                                length = jArr.length - 2;
                                if (length >= 0) {
                                    i2 = 0;
                                    while (true) {
                                        j3 = jArr[i2];
                                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            if (i2 != length) {
                                                break;
                                                break;
                                            }
                                            i2++;
                                        } else {
                                            i3 = 8 - ((~(i2 - length)) >>> 31);
                                            while (i4 < i3) {
                                                if ((j3 & 255) < 128) {
                                                    mutableScatterSet.d(objArr[(i2 << 3) + i4]);
                                                    z4 = true;
                                                }
                                                j3 >>= 8;
                                            }
                                            if (i3 == 8) {
                                                break;
                                                break;
                                            }
                                            if (i2 != length) {
                                                break;
                                                break;
                                            }
                                            i2++;
                                        }
                                    }
                                }
                            } else {
                                mutableScatterSet.d(objE);
                                z4 = true;
                            }
                        }
                    }
                    it3 = it;
                }
                z = z4;
            }
            if (!observedScopeMap.f8513j && (i6 = mutableVector2.d) != 0) {
                Object[] objArr19 = mutableVector2.f8165b;
                int i46 = 0;
                while (i46 < i6) {
                    DerivedState derivedState5 = (DerivedState) objArr19[i46];
                    int iHashCode = Long.hashCode(SnapshotKt.i().getF8464b());
                    Object objE9 = mutableScatterMap5.e(derivedState5);
                    if (objE9 != null) {
                        boolean z6 = objE9 instanceof MutableScatterSet;
                        MutableScatterMap mutableScatterMap6 = observedScopeMap.f8510f;
                        if (z6) {
                            MutableScatterSet mutableScatterSet11 = (MutableScatterSet) objE9;
                            Object[] objArr20 = mutableScatterSet11.f3368b;
                            long[] jArr15 = mutableScatterSet11.f3367a;
                            int length10 = jArr15.length - 2;
                            if (length10 >= 0) {
                                int i47 = 0;
                                while (true) {
                                    long j15 = jArr15[i47];
                                    MutableScatterMap mutableScatterMap7 = mutableScatterMap6;
                                    if ((((~j15) << c2) & j15 & j2) != j2) {
                                        int i48 = 8 - ((~(i47 - length10)) >>> 31);
                                        int i49 = 0;
                                        while (i49 < i48) {
                                            if ((j15 & 255) < 128) {
                                                Object obj6 = objArr20[(i47 << 3) + i49];
                                                mutableScatterMap3 = mutableScatterMap7;
                                                MutableObjectIntMap mutableObjectIntMap2 = (MutableObjectIntMap) mutableScatterMap3.e(obj6);
                                                if (mutableObjectIntMap2 == null) {
                                                    mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
                                                    mutableScatterMap3.o(obj6, mutableObjectIntMap);
                                                } else {
                                                    mutableObjectIntMap = mutableObjectIntMap2;
                                                }
                                                observedScopeMap.b(derivedState5, iHashCode, obj6, mutableObjectIntMap);
                                            } else {
                                                i46 = i46;
                                                mutableScatterMap5 = mutableScatterMap5;
                                                jArr15 = jArr15;
                                                mutableScatterMap3 = mutableScatterMap7;
                                            }
                                            j15 >>= 8;
                                            i49++;
                                            mutableScatterMap7 = mutableScatterMap3;
                                            objArr19 = objArr19;
                                            i6 = i6;
                                            mutableVector2 = mutableVector2;
                                            i46 = i46;
                                            mutableScatterMap5 = mutableScatterMap5;
                                            jArr15 = jArr15;
                                        }
                                        i7 = i6;
                                        objArr4 = objArr19;
                                        mutableVector = mutableVector2;
                                        i8 = i46;
                                        mutableScatterMap = mutableScatterMap5;
                                        jArr2 = jArr15;
                                        mutableScatterMap2 = mutableScatterMap7;
                                        if (i48 != 8) {
                                            break;
                                        }
                                    } else {
                                        i7 = i6;
                                        objArr4 = objArr19;
                                        mutableVector = mutableVector2;
                                        i8 = i46;
                                        mutableScatterMap = mutableScatterMap5;
                                        jArr2 = jArr15;
                                        mutableScatterMap2 = mutableScatterMap7;
                                    }
                                    if (i47 == length10) {
                                        break;
                                    }
                                    i47++;
                                    mutableScatterMap6 = mutableScatterMap2;
                                    objArr19 = objArr4;
                                    i6 = i7;
                                    mutableVector2 = mutableVector;
                                    i46 = i8;
                                    mutableScatterMap5 = mutableScatterMap;
                                    jArr15 = jArr2;
                                }
                            } else {
                                i7 = i6;
                                objArr4 = objArr19;
                                mutableVector = mutableVector2;
                                i8 = i46;
                                mutableScatterMap = mutableScatterMap5;
                            }
                        } else {
                            i7 = i6;
                            objArr4 = objArr19;
                            mutableVector = mutableVector2;
                            i8 = i46;
                            mutableScatterMap = mutableScatterMap5;
                            MutableObjectIntMap mutableObjectIntMap3 = (MutableObjectIntMap) mutableScatterMap6.e(objE9);
                            if (mutableObjectIntMap3 == null) {
                                mutableObjectIntMap3 = new MutableObjectIntMap(0, 1, null);
                                mutableScatterMap6.o(objE9, mutableObjectIntMap3);
                            }
                            observedScopeMap.b(derivedState5, iHashCode, objE9, mutableObjectIntMap3);
                        }
                    } else {
                        i7 = i6;
                        objArr4 = objArr19;
                        mutableVector = mutableVector2;
                        i8 = i46;
                        mutableScatterMap = mutableScatterMap5;
                    }
                    i46 = i8 + 1;
                    objArr19 = objArr4;
                    i6 = i7;
                    mutableVector2 = mutableVector;
                    mutableScatterMap5 = mutableScatterMap;
                }
                mutableVector2.j();
            }
            return z;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x008d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:28:0x008f A[LOOP:0: B:15:0x0048->B:28:0x008f, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:37:0x0092 A[EDGE_INSN: B:37:0x0092->B:29:0x0092 BREAK  A[LOOP:0: B:15:0x0048->B:28:0x008f], SYNTHETIC] */
        public final void b(Object obj, int i2, Object obj2, MutableObjectIntMap mutableObjectIntMap) {
            int i3;
            if (this.f8514k > 0) {
                return;
            }
            int iE = mutableObjectIntMap.e(obj);
            if (iE < 0) {
                iE = ~iE;
                i3 = -1;
            } else {
                i3 = mutableObjectIntMap.f3342c[iE];
            }
            mutableObjectIntMap.f3341b[iE] = obj;
            mutableObjectIntMap.f3342c[iE] = i2;
            if ((obj instanceof DerivedState) && i3 != i2) {
                DerivedSnapshotState.ResultRecord resultRecordI = ((DerivedState) obj).I();
                this.m.put(obj, resultRecordI.f7970f);
                ObjectIntMap objectIntMap = resultRecordI.f7969e;
                MutableScatterMap mutableScatterMap = this.l;
                ScopeMap.c(mutableScatterMap, obj);
                Object[] objArr = objectIntMap.f3341b;
                long[] jArr = objectIntMap.f3340a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i4 = 0;
                    while (true) {
                        long j2 = jArr[i4];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i4 != length) {
                                break;
                                break;
                            }
                            i4++;
                        } else {
                            int i5 = 8 - ((~(i4 - length)) >>> 31);
                            for (int i6 = 0; i6 < i5; i6++) {
                                if ((j2 & 255) < 128) {
                                    StateObject stateObject = (StateObject) objArr[(i4 << 3) + i6];
                                    if (stateObject instanceof StateObjectImpl) {
                                        int i7 = ReaderKind.f8460a;
                                        ((StateObjectImpl) stateObject).J(2);
                                    }
                                    ScopeMap.a(mutableScatterMap, stateObject, obj);
                                }
                                j2 >>= 8;
                            }
                            if (i5 != 8) {
                                break;
                            } else if (i4 != length) {
                                break;
                            } else {
                                i4++;
                            }
                        }
                    }
                }
            }
            if (i3 == -1) {
                if (obj instanceof StateObjectImpl) {
                    int i8 = ReaderKind.f8460a;
                    ((StateObjectImpl) obj).J(2);
                }
                ScopeMap.a(this.f8509e, obj, obj2);
            }
        }

        public final void c(Object obj, Object obj2) {
            MutableScatterMap mutableScatterMap = this.f8509e;
            ScopeMap.b(mutableScatterMap, obj2, obj);
            if (!(obj2 instanceof DerivedState) || mutableScatterMap.c(obj2)) {
                return;
            }
            ScopeMap.c(this.l, obj2);
            this.m.remove(obj2);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x009d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:28:0x009f A[LOOP:2: B:16:0x0066->B:28:0x009f, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:29:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:49:0x00ac A[EDGE_INSN: B:49:0x00ac->B:30:0x00ac BREAK  A[LOOP:2: B:16:0x0066->B:28:0x009f], SYNTHETIC] */
        public final void d(Function1 function1) {
            long[] jArr;
            long[] jArr2;
            long j2;
            char c2;
            long j3;
            int i2;
            MutableScatterMap mutableScatterMap = this.f8510f;
            long[] jArr3 = mutableScatterMap.f3361a;
            int length = jArr3.length - 2;
            if (length < 0) {
                return;
            }
            int i3 = 0;
            while (true) {
                long j4 = jArr3[i3];
                char c3 = 7;
                long j5 = -9187201950435737472L;
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8;
                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j4 & 255) < 128) {
                            int i7 = (i3 << 3) + i6;
                            c2 = c3;
                            Object obj = mutableScatterMap.f3362b[i7];
                            j3 = j5;
                            MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) mutableScatterMap.f3363c[i7];
                            Boolean bool = (Boolean) function1.invoke(obj);
                            if (bool.booleanValue()) {
                                Object[] objArr = mutableObjectIntMap.f3341b;
                                int[] iArr = mutableObjectIntMap.f3342c;
                                long[] jArr4 = mutableObjectIntMap.f3340a;
                                int i8 = i4;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    jArr2 = jArr3;
                                    j2 = j4;
                                    int i9 = 0;
                                    while (true) {
                                        long j6 = jArr4[i9];
                                        long[] jArr5 = jArr4;
                                        if ((((~j6) << c2) & j6 & j3) != j3) {
                                            int i10 = 8 - ((~(i9 - length2)) >>> 31);
                                            for (int i11 = 0; i11 < i10; i11++) {
                                                if ((j6 & 255) < 128) {
                                                    int i12 = (i9 << 3) + i11;
                                                    Object obj2 = objArr[i12];
                                                    int i13 = iArr[i12];
                                                    c(obj, obj2);
                                                }
                                                j6 >>= i8;
                                            }
                                            if (i10 != i8) {
                                                break;
                                            }
                                            if (i9 != length2) {
                                                break;
                                            }
                                            i9++;
                                            jArr4 = jArr5;
                                            i8 = 8;
                                        } else if (i9 != length2) {
                                            break;
                                            break;
                                        } else {
                                            i9++;
                                            jArr4 = jArr5;
                                            i8 = 8;
                                        }
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    j2 = j4;
                                }
                            } else {
                                jArr2 = jArr3;
                                j2 = j4;
                            }
                            if (bool.booleanValue()) {
                                mutableScatterMap.n(i7);
                            }
                            i2 = 8;
                        } else {
                            jArr2 = jArr3;
                            j2 = j4;
                            c2 = c3;
                            j3 = j5;
                            i2 = i4;
                        }
                        i6++;
                        i4 = i2;
                        j4 = j2 >> i2;
                        c3 = c2;
                        j5 = j3;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i5 != i4) {
                        return;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i3 == length) {
                    return;
                }
                i3++;
                jArr3 = jArr;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.snapshots.a] */
    public SnapshotStateObserver(Function1<? super Function0<Unit>, Unit> function1) {
        this.f8498a = function1;
    }

    public final void a() {
        synchronized (this.g) {
            MutableVector mutableVector = this.f8502f;
            Object[] objArr = mutableVector.f8165b;
            int i2 = mutableVector.d;
            for (int i3 = 0; i3 < i2; i3++) {
                ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i3];
                observedScopeMap.f8509e.h();
                observedScopeMap.f8510f.h();
                observedScopeMap.l.h();
                observedScopeMap.m.clear();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0074 A[Catch: all -> 0x008e, LOOP:1: B:14:0x002d->B:26:0x0074, LOOP_END, TryCatch #0 {all -> 0x008e, blocks: (B:4:0x0007, B:8:0x0011, B:27:0x0078, B:29:0x0080, B:34:0x0090, B:31:0x0085, B:11:0x0021, B:14:0x002d, B:16:0x0041, B:18:0x004f, B:20:0x0059, B:22:0x0069, B:26:0x0074, B:35:0x0094), top: B:40:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0078 A[EDGE_INSN: B:47:0x0078->B:27:0x0078 BREAK  A[LOOP:1: B:14:0x002d->B:26:0x0074], SYNTHETIC] */
    public final void b(Object obj) {
        int i2;
        synchronized (this.g) {
            try {
                MutableVector mutableVector = this.f8502f;
                int i3 = mutableVector.d;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    Object[] objArr = mutableVector.f8165b;
                    if (i4 < i3) {
                        ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i4];
                        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) observedScopeMap.f8510f.m(obj);
                        if (mutableObjectIntMap == null) {
                            i2 = i4;
                        } else {
                            Object[] objArr2 = mutableObjectIntMap.f3341b;
                            int[] iArr = mutableObjectIntMap.f3342c;
                            long[] jArr = mutableObjectIntMap.f3340a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i6 = 0;
                                while (true) {
                                    long j2 = jArr[i6];
                                    i2 = i4;
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i7 = 8 - ((~(i6 - length)) >>> 31);
                                        for (int i8 = 0; i8 < i7; i8++) {
                                            if ((j2 & 255) < 128) {
                                                int i9 = (i6 << 3) + i8;
                                                Object obj2 = objArr2[i9];
                                                int i10 = iArr[i9];
                                                observedScopeMap.c(obj, obj2);
                                            }
                                            j2 >>= 8;
                                        }
                                        if (i7 != 8) {
                                            break;
                                        }
                                        if (i6 != length) {
                                            break;
                                        }
                                        i6++;
                                        i4 = i2;
                                    } else if (i6 != length) {
                                        break;
                                        break;
                                    } else {
                                        i6++;
                                        i4 = i2;
                                    }
                                }
                            } else {
                                i2 = i4;
                            }
                        }
                        if (!observedScopeMap.f8510f.g()) {
                            i5++;
                        } else if (i5 > 0) {
                            Object[] objArr3 = mutableVector.f8165b;
                            objArr3[i2 - i5] = objArr3[i2];
                        }
                        i4 = i2 + 1;
                    } else {
                        int i11 = i3 - i5;
                        ArraysKt.r(objArr, i11, i3, null);
                        mutableVector.d = i11;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Function1 function1) {
        synchronized (this.g) {
            try {
                MutableVector mutableVector = this.f8502f;
                int i2 = mutableVector.d;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    Object[] objArr = mutableVector.f8165b;
                    if (i3 < i2) {
                        ObservedScopeMap observedScopeMap = (ObservedScopeMap) objArr[i3];
                        observedScopeMap.d(function1);
                        if (!observedScopeMap.f8510f.g()) {
                            i4++;
                        } else if (i4 > 0) {
                            Object[] objArr2 = mutableVector.f8165b;
                            objArr2[i3 - i4] = objArr2[i3];
                        }
                        i3++;
                    } else {
                        int i5 = i2 - i4;
                        ArraysKt.r(objArr, i5, i2, null);
                        mutableVector.d = i5;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d() {
        boolean z;
        Set set;
        Set set2;
        synchronized (this.g) {
            z = this.f8500c;
        }
        if (z) {
            return false;
        }
        boolean z2 = false;
        while (true) {
            AtomicReference atomicReference = this.f8499b;
            while (true) {
                Object obj = atomicReference.get();
                set = null;
                Object obj2 = null;
                Object objSubList = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof Set) {
                    set2 = (Set) obj;
                } else {
                    if (!(obj instanceof List)) {
                        ComposerKt.b("Unexpected notification");
                        os.d();
                        return false;
                    }
                    List list = (List) obj;
                    Set set3 = (Set) list.get(0);
                    if (list.size() == 2) {
                        objSubList = list.get(1);
                    } else if (list.size() > 2) {
                        objSubList = list.subList(1, list.size());
                    }
                    set2 = set3;
                    obj2 = objSubList;
                }
                do {
                    if (atomicReference.compareAndSet(obj, obj2)) {
                        set = set2;
                        break;
                    }
                } while (atomicReference.get() == obj);
            }
            if (set == null) {
                return z2;
            }
            synchronized (this.g) {
                MutableVector mutableVector = this.f8502f;
                Object[] objArr = mutableVector.f8165b;
                int i2 = mutableVector.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    z2 = ((ObservedScopeMap) objArr[i3]).a(set) || z2;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:134:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x01da  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void e(Object obj, Function1 function1, Function0 function0) {
        MutableVector mutableVector;
        Object obj2;
        ObservedScopeMap observedScopeMap;
        boolean z;
        ObservedScopeMap observedScopeMap2;
        long j2;
        long j3;
        ObservedScopeMap observedScopeMap3;
        Snapshot transparentObserverMutableSnapshot;
        long j4;
        MutableObjectIntMap mutableObjectIntMap;
        int i2;
        long j5;
        MutableObjectIntMap mutableObjectIntMap2;
        long jA = Thread_jvmKt.a();
        synchronized (this.g) {
            mutableVector = this.f8502f;
            Object[] objArr = mutableVector.f8165b;
            int i3 = mutableVector.d;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    obj2 = null;
                    break;
                }
                obj2 = objArr[i4];
                if (((ObservedScopeMap) obj2).f8506a == function1) {
                    break;
                } else {
                    i4++;
                }
            }
            observedScopeMap = (ObservedScopeMap) obj2;
            z = true;
            if (observedScopeMap == null) {
                function1.getClass();
                TypeIntrinsics.e(1, function1);
                observedScopeMap = new ObservedScopeMap(function1);
                mutableVector.b(observedScopeMap);
            }
            observedScopeMap2 = this.f8504i;
            j2 = this.f8505j;
        }
        Object obj3 = mutableVector;
        if (j2 != -1 && j2 != jA) {
            obj3 = mutableVector;
            StringBuilder sbQ = pq0.q(j2, "Detected multithreaded access to SnapshotStateObserver: previousThreadId=", "), currentThread={id=");
            sbQ.append(jA);
            sbQ.append(", name=");
            sbQ.append(Thread.currentThread().getName());
            sbQ.append("}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
            PreconditionsKt.a(sbQ.toString());
            obj3 = "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.";
        }
        try {
            obj3 = mutableVector;
            synchronized (this.g) {
                try {
                    this.f8504i = observedScopeMap;
                    this.f8505j = jA;
                } catch (Throwable th) {
                    th = th;
                    j3 = obj3;
                }
            }
            a aVar = this.f8501e;
            Object obj4 = observedScopeMap.f8507b;
            MutableObjectIntMap mutableObjectIntMap3 = observedScopeMap.f8508c;
            int i5 = observedScopeMap.d;
            observedScopeMap.f8507b = obj;
            observedScopeMap.f8508c = (MutableObjectIntMap) observedScopeMap.f8510f.e(obj);
            if (observedScopeMap.d == -1) {
                observedScopeMap.d = Long.hashCode(SnapshotKt.i().getF8464b());
            }
            SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 snapshotStateObserver$ObservedScopeMap$derivedStateObserver$1 = observedScopeMap.f8512i;
            MutableVector mutableVectorC = SnapshotStateKt.c();
            try {
                mutableVectorC.b(snapshotStateObserver$ObservedScopeMap$derivedStateObserver$1);
                Snapshot.Companion companion = Snapshot.f8462e;
                if (aVar == null) {
                    function0.mo47invoke();
                    observedScopeMap3 = observedScopeMap;
                } else {
                    Snapshot snapshot = (Snapshot) SnapshotKt.f8482b.a();
                    if (snapshot instanceof TransparentObserverMutableSnapshot) {
                        observedScopeMap3 = observedScopeMap;
                        if (((TransparentObserverMutableSnapshot) snapshot).u == Thread_jvmKt.a()) {
                            Function1 function2 = ((TransparentObserverMutableSnapshot) snapshot).s;
                            Function1 function3 = ((TransparentObserverMutableSnapshot) snapshot).t;
                            try {
                                ((TransparentObserverMutableSnapshot) snapshot).s = SnapshotKt.j(aVar, true, function2);
                                ((TransparentObserverMutableSnapshot) snapshot).t = function3;
                                function0.mo47invoke();
                                ((TransparentObserverMutableSnapshot) snapshot).s = function2;
                                ((TransparentObserverMutableSnapshot) snapshot).t = function3;
                            } catch (Throwable th2) {
                                ((TransparentObserverMutableSnapshot) snapshot).s = function2;
                                ((TransparentObserverMutableSnapshot) snapshot).t = function3;
                                throw th2;
                            }
                        }
                    } else {
                        observedScopeMap3 = observedScopeMap;
                    }
                    if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                        transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, aVar, null, true, false);
                    } else {
                        transparentObserverMutableSnapshot = snapshot.u(aVar);
                    }
                    try {
                        Snapshot snapshotJ = transparentObserverMutableSnapshot.j();
                        try {
                            function0.mo47invoke();
                            Snapshot.q(snapshotJ);
                            transparentObserverMutableSnapshot.c();
                        } catch (Throwable th3) {
                            try {
                                Snapshot.q(snapshotJ);
                                throw th3;
                            } catch (Throwable th4) {
                                th = th4;
                                try {
                                    transparentObserverMutableSnapshot.c();
                                    throw th;
                                } catch (Throwable th5) {
                                    th = th5;
                                    mutableVectorC.o(mutableVectorC.d - 1);
                                    throw th;
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                mutableVectorC.o(mutableVectorC.d - 1);
                ObservedScopeMap observedScopeMap4 = observedScopeMap3;
                Object obj5 = observedScopeMap4.f8507b;
                obj5.getClass();
                int i6 = observedScopeMap4.d;
                MutableObjectIntMap mutableObjectIntMap4 = observedScopeMap4.f8508c;
                if (mutableObjectIntMap4 != null) {
                    try {
                        long[] jArr = mutableObjectIntMap4.f3340a;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i7 = 0;
                            while (true) {
                                long j6 = jArr[i7];
                                boolean z2 = z;
                                MutableObjectIntMap mutableObjectIntMap5 = mutableObjectIntMap4;
                                if ((((~j6) << 7) & j6 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i8 = 8 - ((~(i7 - length)) >>> 31);
                                    int i9 = 0;
                                    while (i9 < i8) {
                                        if ((j6 & 255) < 128) {
                                            i2 = i9;
                                            int i10 = (i7 << 3) + i2;
                                            j5 = j6;
                                            mutableObjectIntMap2 = mutableObjectIntMap5;
                                            Object obj6 = mutableObjectIntMap2.f3341b[i10];
                                            j4 = j2;
                                            try {
                                                boolean z3 = mutableObjectIntMap2.f3342c[i10] != i6 ? z2 : false;
                                                if (z3) {
                                                    observedScopeMap4.c(obj5, obj6);
                                                }
                                                if (z3) {
                                                    mutableObjectIntMap2.g(i10);
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                j3 = j4;
                                                synchronized (this.g) {
                                                    this.f8504i = observedScopeMap2;
                                                    this.f8505j = j3;
                                                }
                                                throw th;
                                            }
                                        } else {
                                            i2 = i9;
                                            j5 = j6;
                                            mutableObjectIntMap2 = mutableObjectIntMap5;
                                            j4 = j2;
                                        }
                                        i9 = i2 + 1;
                                        long j7 = j4;
                                        mutableObjectIntMap5 = mutableObjectIntMap2;
                                        j6 = j5 >> 8;
                                        j2 = j7;
                                    }
                                    mutableObjectIntMap = mutableObjectIntMap5;
                                    j4 = j2;
                                    if (i8 != 8) {
                                        break;
                                    }
                                } else {
                                    mutableObjectIntMap = mutableObjectIntMap5;
                                    j4 = j2;
                                }
                                if (i7 == length) {
                                    break;
                                }
                                i7++;
                                mutableObjectIntMap4 = mutableObjectIntMap;
                                z = z2;
                                j2 = j4;
                            }
                        } else {
                            j4 = j2;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        j4 = j2;
                        j3 = j4;
                        synchronized (this.g) {
                            this.f8504i = observedScopeMap2;
                            this.f8505j = j3;
                            throw th;
                        }
                    }
                } else {
                    j4 = j2;
                }
                observedScopeMap4.f8507b = obj4;
                observedScopeMap4.f8508c = mutableObjectIntMap3;
                observedScopeMap4.d = i5;
                synchronized (this.g) {
                    this.f8504i = observedScopeMap2;
                    this.f8505j = j4;
                }
            } catch (Throwable th9) {
                th = th9;
            }
        } catch (Throwable th10) {
            th = th10;
            j3 = j2;
        }
    }
}
