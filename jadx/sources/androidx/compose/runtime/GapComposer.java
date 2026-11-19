package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.GroupInfo;
import androidx.compose.runtime.composer.GroupKind;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.FixupList;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ObjectLocation;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import defpackage.cj;
import defpackage.dt;
import defpackage.os;
import defpackage.pq0;
import defpackage.r0;
import defpackage.rs;
import defpackage.t00;
import defpackage.zd;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0014\u0015BQ\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Landroidx/compose/runtime/GapComposer;", "Landroidx/compose/runtime/InternalComposer;", "Landroidx/compose/runtime/Applier;", "applier", "Landroidx/compose/runtime/CompositionContext;", "parentContext", "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "slotTable", "", "Landroidx/compose/runtime/RememberObserver;", "abandonSet", "Landroidx/compose/runtime/Changes;", "changes", "lateChanges", "Landroidx/compose/runtime/CompositionObserverHolder;", "observerHolder", "Landroidx/compose/runtime/CompositionImpl;", "composition", "<init>", "(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/Set;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/Changes;Landroidx/compose/runtime/CompositionObserverHolder;Landroidx/compose/runtime/CompositionImpl;)V", "CompositionContextHolder", "CompositionContextImpl", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GapComposer extends InternalComposer {
    public int A;
    public int B;
    public boolean C;
    public final GapComposer$derivedStateObserver$1 D;
    public final ArrayList E;
    public boolean F;
    public SlotReader G;
    public SlotTable H;
    public SlotWriter I;
    public boolean J;
    public PersistentCompositionLocalMap K;
    public ChangeList L;
    public final ComposerChangeListWriter M;
    public GapAnchor N;
    public FixupList O;
    public ShouldPauseCallback P;
    public final CompositionErrorContextImpl Q;
    public final CoroutineContext R;
    public boolean S;
    public long T;
    public GapCompositionDataImpl U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Applier f7976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositionContext f7977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SlotTable f7978c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Changes f7979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Changes f7980f;
    public final CompositionObserverHolder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CompositionImpl f7981h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public GapPending f7983j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7984k;
    public int l;
    public int m;
    public int[] o;
    public MutableIntIntMap p;
    public boolean q;
    public boolean r;
    public MutableIntObjectMap v;
    public boolean w;
    public boolean y;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f7982i = new ArrayList();
    public final IntStack n = new IntStack();
    public final ArrayList s = new ArrayList();
    public final IntStack t = new IntStack();
    public PersistentCompositionLocalMap u = PersistentCompositionLocalMapKt.a();
    public final IntStack x = new IntStack();
    public int z = -1;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/GapComposer$CompositionContextHolder;", "Landroidx/compose/runtime/RememberObserver;", "Landroidx/compose/runtime/GapComposer$CompositionContextImpl;", "Landroidx/compose/runtime/GapComposer;", "ref", "<init>", "(Landroidx/compose/runtime/GapComposer$CompositionContextImpl;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CompositionContextHolder implements RememberObserver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CompositionContextImpl f7985b;

        public CompositionContextHolder(CompositionContextImpl compositionContextImpl) {
            this.f7985b = compositionContextImpl;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void d() {
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void f() {
            this.f7985b.A();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void i() {
            this.f7985b.A();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001B-\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/GapComposer$CompositionContextImpl;", "Landroidx/compose/runtime/CompositionContext;", "", "Landroidx/compose/runtime/CompositeKeyHashCode;", "compositeKeyHashCode", "", "collectingParameterInformation", "collectingSourceInformation", "Landroidx/compose/runtime/CompositionObserverHolder;", "observerHolder", "<init>", "(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class CompositionContextImpl extends CompositionContext {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f7986a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f7987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f7988c;
        public final CompositionObserverHolder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public HashSet f7989e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final MutableScatterSet f7990f = ScatterSetKt.a();
        public final MutableState g = new ParcelableSnapshotMutableState(PersistentCompositionLocalMapKt.a(), ReferentialEqualityPolicy.f8110a);

        public CompositionContextImpl(long j2, boolean z, boolean z2, CompositionObserverHolder compositionObserverHolder) {
            this.f7986a = j2;
            this.f7987b = z;
            this.f7988c = z2;
            this.d = compositionObserverHolder;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0061 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:22:0x0063 A[LOOP:0: B:9:0x0017->B:22:0x0063, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:26:0x0066 A[EDGE_INSN: B:26:0x0066->B:23:0x0066 BREAK  A[LOOP:0: B:9:0x0017->B:22:0x0063], SYNTHETIC] */
        public final void A() {
            MutableScatterSet mutableScatterSet = this.f7990f;
            if (mutableScatterSet.c()) {
                HashSet hashSet = this.f7989e;
                if (hashSet != null) {
                    Object[] objArr = mutableScatterSet.f3368b;
                    long[] jArr = mutableScatterSet.f3367a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j2 = jArr[i2];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i2 != length) {
                                    break;
                                    break;
                                }
                                i2++;
                            } else {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((255 & j2) < 128) {
                                        GapComposer gapComposer = (GapComposer) objArr[(i2 << 3) + i4];
                                        Iterator it = hashSet.iterator();
                                        while (it.hasNext()) {
                                            ((Set) it.next()).remove(gapComposer.f0());
                                        }
                                    }
                                    j2 >>= 8;
                                }
                                if (i3 != 8) {
                                    break;
                                } else if (i2 != length) {
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        }
                    }
                }
                mutableScatterSet.f();
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void a(ControlledComposition controlledComposition, Function2 function2) {
            GapComposer.this.f7977b.a(controlledComposition, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
            return GapComposer.this.f7977b.b(controlledComposition, shouldPauseCallback, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void c(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.f7977b.c(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void d() {
            GapComposer.this.A--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean e() {
            return GapComposer.this.f7977b.e();
        }

        @Override // androidx.compose.runtime.CompositionContext
        /* JADX INFO: renamed from: f, reason: from getter */
        public final boolean getF7987b() {
            return this.f7987b;
        }

        @Override // androidx.compose.runtime.CompositionContext
        /* JADX INFO: renamed from: g, reason: from getter */
        public final boolean getF7988c() {
            return this.f7988c;
        }

        @Override // androidx.compose.runtime.CompositionContext
        /* JADX INFO: renamed from: h, reason: from getter */
        public final long getF7986a() {
            return this.f7986a;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final Composition i() {
            return GapComposer.this.f7981h;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final PersistentCompositionLocalMap j() {
            return (PersistentCompositionLocalMap) ((SnapshotMutableStateImpl) this.g).getF10755b();
        }

        @Override // androidx.compose.runtime.CompositionContext
        /* JADX INFO: renamed from: k */
        public final CoroutineContext getX() {
            return GapComposer.this.f7977b.getX();
        }

        @Override // androidx.compose.runtime.CompositionContext
        /* JADX INFO: renamed from: l, reason: from getter */
        public final CompositionObserverHolder getD() {
            return this.d;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean m() {
            return GapComposer.this.f7977b.m();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void n(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.f7977b.n(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void o(ControlledComposition controlledComposition) {
            GapComposer gapComposer = GapComposer.this;
            gapComposer.f7977b.o(gapComposer.f7981h);
            gapComposer.f7977b.o(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void p(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier) {
            GapComposer.this.f7977b.p(movableContentStateReference, movableContentState, applier);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final MovableContentState q(MovableContentStateReference movableContentStateReference) {
            return GapComposer.this.f7977b.q(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final ScatterSet r(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet) {
            return GapComposer.this.f7977b.r(controlledComposition, shouldPauseCallback, scatterSet);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void s(Set set) {
            HashSet hashSet = this.f7989e;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.f7989e = hashSet;
            }
            hashSet.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void t(GapComposer gapComposer) {
            this.f7990f.d(gapComposer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void u(RecomposeScopeImpl recomposeScopeImpl) {
            GapComposer.this.f7977b.u(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void v(ControlledComposition controlledComposition) {
            GapComposer.this.f7977b.v(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final CancellationHandle w(Function0 function0) {
            return GapComposer.this.f7977b.w(function0);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void x() {
            GapComposer.this.A++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void y(GapComposer gapComposer) {
            HashSet<Set> hashSet = this.f7989e;
            if (hashSet != null) {
                for (Set set : hashSet) {
                    gapComposer.getClass();
                    set.remove(gapComposer.f0());
                }
            }
            if (gapComposer != null) {
                this.f7990f.m(gapComposer);
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void z(CompositionImpl compositionImpl) {
            GapComposer.this.f7977b.z(compositionImpl);
        }
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.runtime.GapComposer$derivedStateObserver$1] */
    public GapComposer(Applier<?> applier, CompositionContext compositionContext, SlotTable slotTable, Set<RememberObserver> set, Changes changes, Changes changes2, CompositionObserverHolder compositionObserverHolder, CompositionImpl compositionImpl) {
        this.f7976a = applier;
        this.f7977b = compositionContext;
        this.f7978c = slotTable;
        this.d = set;
        this.f7979e = changes;
        this.f7980f = changes2;
        this.g = compositionObserverHolder;
        this.f7981h = compositionImpl;
        this.C = compositionContext.getF7988c() || compositionContext.e();
        this.D = new DerivedStateObserver() { // from class: androidx.compose.runtime.GapComposer$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void done() {
                this.f7992a.A--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void start() {
                this.f7992a.A++;
            }
        };
        this.E = new ArrayList();
        SlotReader slotReaderN = slotTable.n();
        slotReaderN.c();
        this.G = slotReaderN;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.getF7988c()) {
            slotTable2.i();
        }
        if (compositionContext.e()) {
            slotTable2.l = new MutableIntObjectMap(0, 1, null);
        }
        this.H = slotTable2;
        SlotWriter slotWriterO = slotTable2.o();
        slotWriterO.e(true);
        this.I = slotWriterO;
        ChangeList changeList = changes instanceof ChangeList ? (ChangeList) changes : null;
        if (changeList == null) {
            ComposerKt.b("Inconsistent composition");
            os.d();
            throw null;
        }
        this.M = new ComposerChangeListWriter(this, changeList);
        SlotReader slotReaderN2 = this.H.n();
        try {
            GapAnchor gapAnchorA = slotReaderN2.a(0);
            slotReaderN2.c();
            this.N = gapAnchorA;
            this.O = new FixupList();
            this.Q = new CompositionErrorContextImpl(this);
            CoroutineContext coroutineContextK = compositionContext.getX();
            CoroutineContext coroutineContextN = N();
            this.R = coroutineContextK.plus(coroutineContextN == null ? EmptyCoroutineContext.f71840b : coroutineContextN);
        } catch (Throwable th) {
            slotReaderN2.c();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    public static final MovableContentStateReference s0(GapComposer gapComposer, int i2) {
        ArrayList arrayList;
        int i3 = gapComposer.G.i(i2);
        SlotReader slotReader = gapComposer.G;
        Object objP = slotReader.p(i2, slotReader.f8200b);
        if (i3 != 126665345 || !(objP instanceof MovableContent)) {
            return null;
        }
        if (gapComposer.G.d(i2)) {
            ArrayList arrayList2 = new ArrayList();
            t0(gapComposer, arrayList2, i2);
            if (arrayList2.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = arrayList2;
            }
        } else {
            arrayList = null;
        }
        SlotReader slotReader2 = gapComposer.G;
        Object objP2 = slotReader2.p(i2, slotReader2.f8200b);
        objP2.getClass();
        MovableContent movableContent = (MovableContent) objP2;
        Object objH = gapComposer.G.h(i2, 0);
        GapAnchor gapAnchorA = gapComposer.G.a(i2);
        int iA = SlotTableKt.a(i2, gapComposer.G.f8200b) + i2;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = gapComposer.s;
        int iC = GapComposerKt.c(i2, arrayList4);
        if (iC < 0) {
            iC = -(iC + 1);
        }
        while (iC < arrayList4.size()) {
            Invalidation invalidation = (Invalidation) arrayList4.get(iC);
            if (invalidation.f8007b >= iA) {
                break;
            }
            arrayList3.add(new Pair(invalidation.f8006a, invalidation.f8008c));
            iC++;
        }
        return new MovableContentStateReference(movableContent, objH, gapComposer.f7981h, gapComposer.f7978c, gapAnchorA, arrayList3, gapComposer.V(i2), arrayList);
    }

    public static final void t0(GapComposer gapComposer, ArrayList arrayList, int i2) {
        int iA = SlotTableKt.a(i2, gapComposer.G.f8200b) + i2;
        int iA2 = i2 + 1;
        while (iA2 < iA) {
            if (gapComposer.G.j(iA2)) {
                MovableContentStateReference movableContentStateReferenceS0 = s0(gapComposer, iA2);
                if (movableContentStateReferenceS0 != null) {
                    arrayList.add(movableContentStateReferenceS0);
                }
            } else if (gapComposer.G.d(iA2)) {
                t0(gapComposer, arrayList, iA2);
            }
            iA2 += SlotTableKt.a(iA2, gapComposer.G.f8200b);
        }
    }

    public static final int u0(GapComposer gapComposer, int i2, int i3, boolean z, int i4) {
        int i5;
        long[] jArr;
        Object[] objArr;
        int i6;
        Object[] objArr2;
        int i7;
        SlotReader slotReader = gapComposer.G;
        int i8 = 0;
        if (slotReader.j(i3)) {
            int i9 = slotReader.i(i3);
            Object objP = slotReader.p(i3, slotReader.f8200b);
            if (i9 == 126665345 && (objP instanceof MovableContent)) {
                MovableContentStateReference movableContentStateReferenceS0 = s0(gapComposer, i3);
                if (movableContentStateReferenceS0 != null) {
                    gapComposer.f7977b.c(movableContentStateReferenceS0);
                    gapComposer.M.e();
                    ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
                    CompositionImpl compositionImpl = gapComposer.f7981h;
                    CompositionContext compositionContext = gapComposer.f7977b;
                    Operations operations = composerChangeListWriter.f8237b.f8235a;
                    operations.d(Operation.ReleaseMovableGroupAtCurrent.f8269c);
                    Operations.WriteScope.c(operations, compositionImpl, compositionContext, movableContentStateReferenceS0);
                }
                if (!z || i3 == i2) {
                    return slotReader.o(i3);
                }
                ComposerChangeListWriter composerChangeListWriter2 = gapComposer.M;
                composerChangeListWriter2.c();
                composerChangeListWriter2.b();
                GapComposer gapComposer2 = composerChangeListWriter2.f8236a;
                int iO = gapComposer2.G.l(i3) ? 1 : gapComposer2.G.o(i3);
                if (iO > 0) {
                    composerChangeListWriter2.f(i4, iO);
                }
                return 0;
            }
            if (i9 == 206 && Intrinsics.c(objP, ComposerKt.f7943e)) {
                Object objH = slotReader.h(i3, 0);
                RememberObserverHolder rememberObserverHolder = objH instanceof RememberObserverHolder ? (RememberObserverHolder) objH : null;
                RememberObserver f8001a = rememberObserverHolder != null ? rememberObserverHolder.getF8001a() : null;
                CompositionContextHolder compositionContextHolder = f8001a instanceof CompositionContextHolder ? (CompositionContextHolder) f8001a : null;
                if (compositionContextHolder != null) {
                    MutableScatterSet mutableScatterSet = compositionContextHolder.f7985b.f7990f;
                    Object[] objArr3 = mutableScatterSet.f3368b;
                    long[] jArr2 = mutableScatterSet.f3367a;
                    int length = jArr2.length - 2;
                    if (length >= 0) {
                        int i10 = 0;
                        while (true) {
                            long j2 = jArr2[i10];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i11 = 8;
                                int i12 = 8 - ((~(i10 - length)) >>> 31);
                                int i13 = i8;
                                while (i13 < i12) {
                                    if ((255 & j2) < 128) {
                                        GapComposer gapComposer3 = (GapComposer) objArr3[(i10 << 3) + i13];
                                        SlotTable slotTable = gapComposer3.f7978c;
                                        if (slotTable.f8209c <= 0 || (slotTable.f8208b[1] & 67108864) == 0) {
                                            objArr2 = objArr3;
                                            i7 = i8;
                                        } else {
                                            CompositionImpl compositionImpl2 = gapComposer3.f7981h;
                                            synchronized (compositionImpl2.f7949e) {
                                                compositionImpl2.G();
                                                MutableScatterMap mutableScatterMap = compositionImpl2.o;
                                                compositionImpl2.o = ScatterMapKt.b();
                                                try {
                                                    compositionImpl2.w.D0(mutableScatterMap);
                                                } catch (Throwable th) {
                                                    compositionImpl2.o = mutableScatterMap;
                                                    throw th;
                                                }
                                            }
                                            ChangeList changeList = new ChangeList();
                                            gapComposer3.L = changeList;
                                            SlotReader slotReaderN = gapComposer3.f7978c.n();
                                            try {
                                                gapComposer3.G = slotReaderN;
                                                ComposerChangeListWriter composerChangeListWriter3 = gapComposer3.M;
                                                ChangeList changeList2 = composerChangeListWriter3.f8237b;
                                                try {
                                                    composerChangeListWriter3.f8237b = changeList;
                                                    gapComposer3.r0(0);
                                                    ComposerChangeListWriter composerChangeListWriter4 = gapComposer3.M;
                                                    composerChangeListWriter4.b();
                                                    if (composerChangeListWriter4.f8238c) {
                                                        objArr2 = objArr3;
                                                        composerChangeListWriter4.f8237b.f8235a.d(Operation.SkipToEndOfCurrentGroup.f8276c);
                                                        if (composerChangeListWriter4.f8238c) {
                                                            composerChangeListWriter4.d(false);
                                                            composerChangeListWriter4.d(false);
                                                            composerChangeListWriter4.f8237b.f8235a.d(Operation.EndCurrentGroup.f8258c);
                                                            i7 = 0;
                                                            composerChangeListWriter4.f8238c = false;
                                                        }
                                                        composerChangeListWriter3.f8237b = changeList2;
                                                        slotReaderN.c();
                                                    } else {
                                                        objArr2 = objArr3;
                                                    }
                                                    i7 = 0;
                                                    composerChangeListWriter3.f8237b = changeList2;
                                                    slotReaderN.c();
                                                } catch (Throwable th2) {
                                                    composerChangeListWriter3.f8237b = changeList2;
                                                    throw th2;
                                                }
                                            } catch (Throwable th3) {
                                                slotReaderN.c();
                                                throw th3;
                                            }
                                        }
                                        gapComposer.f7977b.v(gapComposer3.f7981h);
                                    } else {
                                        jArr2 = jArr2;
                                        objArr2 = objArr3;
                                        i7 = i8;
                                        i11 = i11;
                                    }
                                    j2 >>= i11;
                                    i13++;
                                    i11 = i11;
                                    objArr3 = objArr2;
                                    i8 = i7;
                                    jArr2 = jArr2;
                                }
                                jArr = jArr2;
                                objArr = objArr3;
                                i6 = i8;
                                if (i12 != i11) {
                                    break;
                                }
                            } else {
                                jArr = jArr2;
                                objArr = objArr3;
                                i6 = i8;
                            }
                            if (i10 == length) {
                                break;
                            }
                            i10++;
                            objArr3 = objArr;
                            i8 = i6;
                            jArr2 = jArr;
                        }
                    }
                }
                return slotReader.o(i3);
            }
            i5 = 1;
            if (!slotReader.l(i3)) {
                return slotReader.o(i3);
            }
        } else {
            i5 = 1;
            if (slotReader.d(i3)) {
                int iA = SlotTableKt.a(i3, slotReader.f8200b) + i3;
                int iU0 = 0;
                for (int iA2 = i3 + 1; iA2 < iA; iA2 += SlotTableKt.a(iA2, slotReader.f8200b)) {
                    boolean zL = slotReader.l(iA2);
                    if (zL) {
                        gapComposer.M.c();
                        ComposerChangeListWriter composerChangeListWriter5 = gapComposer.M;
                        Object objN = slotReader.n(iA2);
                        composerChangeListWriter5.c();
                        composerChangeListWriter5.f8241h.add(objN);
                    }
                    iU0 += u0(gapComposer, i2, iA2, zL || z, zL ? 0 : i4 + iU0);
                    if (zL) {
                        gapComposer.M.c();
                        gapComposer.M.a();
                    }
                }
                if (!slotReader.l(i3)) {
                    return iU0;
                }
            } else if (!slotReader.l(i3)) {
                return slotReader.o(i3);
            }
        }
        return i5;
    }

    @Override // androidx.compose.runtime.Composer
    public final void A(int i2, Object obj) {
        GroupKind.f8183a.getClass();
        x0(obj, i2, null, 0);
    }

    public final void A0(Object obj, boolean z) {
        if (z) {
            SlotReader slotReader = this.G;
            if (slotReader.f8207k <= 0) {
                if ((slotReader.f8200b[(slotReader.g * 5) + 1] & 1073741824) == 0) {
                    PreconditionsKt.a("Expected a node group");
                }
                slotReader.u();
                return;
            }
            return;
        }
        if (obj != null && this.G.f() != obj) {
            ComposerChangeListWriter composerChangeListWriter = this.M;
            composerChangeListWriter.getClass();
            composerChangeListWriter.d(false);
            Operations operations = composerChangeListWriter.f8237b.f8235a;
            operations.d(Operation.UpdateAuxData.f8280c);
            Operations.WriteScope.a(operations, 0, obj);
        }
        this.G.u();
    }

    @Override // androidx.compose.runtime.Composer
    public final void B() {
        GroupKind.f8183a.getClass();
        x0(null, 125, null, GroupKind.f8185c);
        this.r = true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void B0() {
        this.m = 0;
        this.G = this.f7978c.n();
        GroupKind.Companion companion = GroupKind.f8183a;
        companion.getClass();
        x0(null, 100, null, 0);
        CompositionContext compositionContext = this.f7977b;
        compositionContext.x();
        PersistentCompositionLocalMap persistentCompositionLocalMapJ = compositionContext.j();
        this.x.c(this.w ? 1 : 0);
        this.w = K(persistentCompositionLocalMapJ);
        this.K = null;
        if (!this.q) {
            this.q = compositionContext.getF7987b();
        }
        if (!this.C) {
            this.C = compositionContext.getF7988c();
        }
        if (this.C) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.f8561a;
            staticProvidableCompositionLocal.getClass();
            persistentCompositionLocalMapJ = persistentCompositionLocalMapJ.l(staticProvidableCompositionLocal, new StaticValueHolder(N()));
        }
        this.u = persistentCompositionLocalMapJ;
        Set set = (Set) CompositionLocalMapKt.a(persistentCompositionLocalMapJ, InspectionTablesKt.f8563a);
        if (set != null) {
            set.add(f0());
            compositionContext.s(set);
        }
        int iHashCode = Long.hashCode(compositionContext.getF7986a());
        companion.getClass();
        x0(null, iHashCode, null, 0);
    }

    @Override // androidx.compose.runtime.Composer
    public final void C(Function0 function0) {
        if (!this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (!this.S) {
            ComposerKt.a("createNode() can only be called when inserting");
        }
        IntStack intStack = this.n;
        int i2 = intStack.f8004a[intStack.f8005b - 1];
        SlotWriter slotWriter = this.I;
        GapAnchor gapAnchorB = slotWriter.b(slotWriter.v);
        this.l++;
        FixupList fixupList = this.O;
        Operations operations = fixupList.f8245a;
        operations.d(Operation.InsertNodeFixup.f8263c);
        Operations.WriteScope.a(operations, 0, function0);
        operations.f8289c[operations.d - operations.f8287a[operations.f8288b - 1].f8247a] = i2;
        Operations.WriteScope.a(operations, 1, gapAnchorB);
        Operations operations2 = fixupList.f8246b;
        operations2.d(Operation.PostInsertNodeFixup.f8268c);
        operations2.f8289c[operations2.d - operations2.f8287a[operations2.f8288b - 1].f8247a] = i2;
        Operations.WriteScope.a(operations2, 0, gapAnchorB);
    }

    public final boolean C0(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        GapAnchor gapAnchor = recomposeScopeImpl.f8078c;
        if (gapAnchor == null) {
            return false;
        }
        int iH = this.G.f8199a.h(GapAnchorKt.a(gapAnchor));
        if (!this.F || iH < this.G.g) {
            return false;
        }
        ArrayList arrayList = this.s;
        int iC = GapComposerKt.c(iH, arrayList);
        if (iC < 0) {
            int i2 = -(iC + 1);
            if (!(obj instanceof DerivedState)) {
                obj = null;
            }
            arrayList.add(i2, new Invalidation(recomposeScopeImpl, iH, obj));
            return true;
        }
        Invalidation invalidation = (Invalidation) arrayList.get(iC);
        if (!(obj instanceof DerivedState)) {
            invalidation.f8008c = null;
            return true;
        }
        Object obj2 = invalidation.f8008c;
        if (obj2 == null) {
            invalidation.f8008c = obj;
            return true;
        }
        if (obj2 instanceof MutableScatterSet) {
            ((MutableScatterSet) obj2).d(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = ScatterSetKt.f3371a;
        MutableScatterSet mutableScatterSet2 = new MutableScatterSet(2);
        mutableScatterSet2.l(obj2);
        mutableScatterSet2.l(obj);
        invalidation.f8008c = mutableScatterSet2;
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public final void D() {
        if (this.l != 0) {
            ComposerKt.a("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (this.S) {
            return;
        }
        RecomposeScopeImpl recomposeScopeImplG0 = g0();
        if (recomposeScopeImplG0 != null) {
            int i2 = recomposeScopeImplG0.f8077b;
            if ((i2 & 128) == 0) {
                recomposeScopeImplG0.f8077b = i2 | 16;
            }
        }
        if (this.s.isEmpty()) {
            w0();
        } else {
            n0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0093 A[LOOP:1: B:20:0x0043->B:35:0x0093, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x0096 A[EDGE_INSN: B:43:0x0096->B:36:0x0096 BREAK  A[LOOP:1: B:20:0x0043->B:35:0x0093], SYNTHETIC] */
    public final void D0(MutableScatterMap mutableScatterMap) {
        ArrayList arrayList = this.s;
        for (int iF = CollectionsKt.F(arrayList); -1 < iF; iF--) {
            Invalidation invalidation = (Invalidation) arrayList.get(iF);
            GapAnchor gapAnchor = invalidation.f8006a.f8078c;
            GapAnchor gapAnchorA = gapAnchor != null ? GapAnchorKt.a(gapAnchor) : null;
            if (gapAnchorA == null || !gapAnchorA.a()) {
                arrayList.remove(iF);
            } else {
                int i2 = invalidation.f8007b;
                int i3 = gapAnchorA.f8187a;
                if (i2 != i3) {
                    invalidation.f8007b = i3;
                }
            }
        }
        Object[] objArr = mutableScatterMap.f3362b;
        Object[] objArr2 = mutableScatterMap.f3363c;
        long[] jArr = mutableScatterMap.f3361a;
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
                        if ((255 & j2) < 128) {
                            int i7 = (i4 << 3) + i6;
                            Object obj = objArr[i7];
                            Object obj2 = objArr2[i7];
                            obj.getClass();
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            GapAnchor gapAnchor2 = recomposeScopeImpl.f8078c;
                            if (gapAnchor2 != null) {
                                int i8 = GapAnchorKt.a(gapAnchor2).f8187a;
                                if (obj2 == ScopeInvalidated.f8117a) {
                                    obj2 = null;
                                }
                                arrayList.add(new Invalidation(recomposeScopeImpl, i8, obj2));
                            }
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
        CollectionsKt.m0(GapComposerKt.f7993a, arrayList);
    }

    @Override // androidx.compose.runtime.Composer
    public final void E(RecomposeScope recomposeScope) {
        RecomposeScopeImpl recomposeScopeImpl = recomposeScope instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) recomposeScope : null;
        if (recomposeScopeImpl != null) {
            recomposeScopeImpl.f8077b |= 1;
        }
    }

    public final void E0(int i2, int i3) {
        if (H0(i2) != i3) {
            if (i2 < 0) {
                MutableIntIntMap mutableIntIntMap = this.p;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap(0, 1, null);
                    this.p = mutableIntIntMap;
                }
                mutableIntIntMap.f(i2, i3);
                return;
            }
            int[] iArr = this.o;
            if (iArr == null) {
                iArr = new int[this.G.f8201c];
                ArraysKt.s(-1, 0, 6, iArr);
                this.o = iArr;
            }
            iArr[i2] = i3;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final void F() {
        Z(false);
    }

    public final void F0(int i2, int i3) {
        int iH0 = H0(i2);
        if (iH0 != i3) {
            int i4 = i3 - iH0;
            ArrayList arrayList = this.f7982i;
            int size = arrayList.size() - 1;
            while (i2 != -1) {
                int iH1 = H0(i2) + i4;
                E0(i2, iH1);
                for (int i5 = size; -1 < i5; i5--) {
                    GapPending gapPending = (GapPending) arrayList.get(i5);
                    if (gapPending != null && gapPending.a(i2, iH1)) {
                        size = i5 - 1;
                        break;
                    }
                }
                SlotReader slotReader = this.G;
                if (i2 < 0) {
                    i2 = slotReader.f8205i;
                } else if (slotReader.l(i2)) {
                    return;
                } else {
                    i2 = this.G.q(i2);
                }
            }
        }
    }

    public final void G0(Object obj) {
        if (this.S) {
            this.I.U(obj);
            return;
        }
        SlotReader slotReader = this.G;
        boolean z = slotReader.n;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (!z) {
            GapAnchor gapAnchorA = slotReader.a(slotReader.f8205i);
            Operations operations = composerChangeListWriter.f8237b.f8235a;
            operations.d(Operation.AppendValue.f8250c);
            Operations.WriteScope.b(operations, 0, gapAnchorA, 1, obj);
            return;
        }
        int iC = (slotReader.l - SlotTableKt.c(slotReader.f8205i, slotReader.f8200b)) - 1;
        if (composerChangeListWriter.f8236a.G.f8205i - composerChangeListWriter.f8240f >= 0) {
            composerChangeListWriter.d(true);
            Operations operations2 = composerChangeListWriter.f8237b.f8235a;
            operations2.d(Operation.UpdateValue.f8282c);
            Operations.WriteScope.a(operations2, 0, obj);
            operations2.f8289c[operations2.d - operations2.f8287a[operations2.f8288b - 1].f8247a] = iC;
            return;
        }
        SlotReader slotReader2 = this.G;
        GapAnchor gapAnchorA2 = slotReader2.a(slotReader2.f8205i);
        Operations operations3 = composerChangeListWriter.f8237b.f8235a;
        operations3.d(Operation.UpdateAnchoredValue.f8279c);
        Operations.WriteScope.b(operations3, 0, obj, 1, gapAnchorA2);
        operations3.f8289c[operations3.d - operations3.f8287a[operations3.f8288b - 1].f8247a] = iC;
    }

    @Override // androidx.compose.runtime.Composer
    public final CompositionContextImpl H() {
        GapComposer gapComposer;
        z0(206, ComposerKt.f7943e);
        if (this.S) {
            SlotWriter.z(this.I);
        }
        Object objK0 = k0();
        RememberObserverHolder reusableGapRememberObserverHolder = objK0 instanceof RememberObserverHolder ? (RememberObserverHolder) objK0 : null;
        if (reusableGapRememberObserverHolder == null) {
            gapComposer = this;
            reusableGapRememberObserverHolder = new ReusableGapRememberObserverHolder(new CompositionContextHolder(gapComposer.new CompositionContextImpl(this.T, this.q, this.C, this.f7981h.u)), -1);
            gapComposer.G0(reusableGapRememberObserverHolder);
        } else {
            gapComposer = this;
        }
        RememberObserver f8001a = reusableGapRememberObserverHolder.getF8001a();
        f8001a.getClass();
        CompositionContextImpl compositionContextImpl = ((CompositionContextHolder) f8001a).f7985b;
        ((SnapshotMutableStateImpl) compositionContextImpl.g).setValue(gapComposer.U());
        gapComposer.Z(false);
        return compositionContextImpl;
    }

    public final int H0(int i2) {
        int i3;
        if (i2 >= 0) {
            int[] iArr = this.o;
            return (iArr == null || (i3 = iArr[i2]) < 0) ? this.G.o(i2) : i3;
        }
        MutableIntIntMap mutableIntIntMap = this.p;
        if (mutableIntIntMap != null && mutableIntIntMap.a(i2) >= 0) {
            int iA = mutableIntIntMap.a(i2);
            if (iA >= 0) {
                return mutableIntIntMap.f3251c[iA];
            }
            zy0.c(pq0.k(i2, "Cannot find value for key "));
        }
        return 0;
    }

    @Override // androidx.compose.runtime.Composer
    public final void I() {
        Z(false);
    }

    @Override // androidx.compose.runtime.Composer
    public final void J() {
        Z(false);
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean K(Object obj) {
        if (Intrinsics.c(k0(), obj)) {
            return false;
        }
        G0(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public final void L(int i2) {
        int i3;
        int i4;
        if (this.f7983j != null) {
            GroupKind.f8183a.getClass();
            x0(null, i2, null, 0);
            return;
        }
        if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
        }
        this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) i2), 3) ^ ((long) this.m);
        this.m++;
        SlotReader slotReader = this.G;
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (z) {
            slotReader.f8207k++;
            this.I.S(composer$Companion$Empty$1, composer$Companion$Empty$1, false, i2);
            d0(false, null);
            return;
        }
        if (slotReader.g() == i2 && ((i4 = slotReader.g) >= slotReader.f8204h || (slotReader.f8200b[(i4 * 5) + 1] & PKIFailureInfo.duplicateCertReq) == 0)) {
            slotReader.u();
            d0(false, null);
            return;
        }
        if (slotReader.f8207k <= 0 && (i3 = slotReader.g) != slotReader.f8204h) {
            int i5 = this.f7984k;
            o0();
            this.M.f(i5, slotReader.s());
            GapComposerKt.a(this.s, i3, slotReader.g);
        }
        slotReader.f8207k++;
        this.S = true;
        this.K = null;
        if (this.I.w) {
            SlotWriter slotWriterO = this.H.o();
            this.I = slotWriterO;
            slotWriterO.O();
            this.J = false;
            this.K = null;
        }
        SlotWriter slotWriter = this.I;
        slotWriter.d();
        int i6 = slotWriter.t;
        slotWriter.S(composer$Companion$Empty$1, composer$Companion$Empty$1, false, i2);
        this.N = slotWriter.b(i6);
        d0(false, null);
    }

    @Override // androidx.compose.runtime.InternalComposer
    public final void M() {
        if (this.F || this.z != 0) {
            PreconditionsKt.a("Cannot disable reuse from root if it was caused by other groups");
        }
        this.z = -1;
        this.y = false;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public final CompositionErrorContextImpl N() {
        if (this.f7977b.m()) {
            return this.Q;
        }
        return null;
    }

    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: O, reason: from getter */
    public final boolean getC() {
        return this.C;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public final List P() {
        CompositionContext compositionContext = this.f7977b;
        Composition compositionI = compositionContext.i();
        CompositionImpl compositionImpl = compositionI != null ? (CompositionImpl) compositionI : null;
        if (compositionImpl == null) {
            return EmptyList.f71768b;
        }
        SlotTable slotTable = compositionImpl.g;
        SlotReader slotReaderN = SlotTableKt.e(slotTable).n();
        try {
            Integer numB = ComposeStackTraceBuilderKt.b(slotReaderN, compositionContext, 0, slotReaderN.f8201c);
            slotReaderN.c();
            if (numB == null) {
                return EmptyList.f71768b;
            }
            SlotReader slotReaderN2 = SlotTableKt.e(slotTable).n();
            try {
                return CollectionsKt.Y(ComposeStackTraceBuilderKt.c(slotReaderN2, numB.intValue(), 0), compositionImpl.w.P());
            } finally {
                slotReaderN2.c();
            }
        } catch (Throwable th) {
            slotReaderN.c();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x009d  */
    @Override // androidx.compose.runtime.InternalComposer
    public final ComposeStackTrace Q(Object obj) {
        List listY;
        SlotReader slotReaderN;
        SlotTable slotTable = this.f7978c;
        SlotReader slotReaderN2 = slotTable.n();
        int i2 = 0;
        while (true) {
            try {
                ObjectLocation objectLocation = null;
                if (i2 < slotTable.f8209c) {
                    if (slotReaderN2.l(i2)) {
                        Object objN = slotReaderN2.n(i2);
                        if (objN != obj) {
                            RememberObserverHolder rememberObserverHolder = objN instanceof RememberObserverHolder ? (RememberObserverHolder) objN : null;
                            if ((rememberObserverHolder != null ? rememberObserverHolder.getF8001a() : null) == obj) {
                            }
                        }
                        ObjectLocation objectLocation2 = new ObjectLocation(i2, null);
                        slotReaderN2.c();
                        objectLocation = objectLocation2;
                        if (objectLocation != null) {
                            int i3 = objectLocation.f8565a;
                            Integer num = objectLocation.f8566b;
                            slotReaderN = slotTable.n();
                            try {
                                ArrayList arrayListC = ComposeStackTraceBuilderKt.c(slotReaderN, i3, num);
                                slotReaderN.c();
                                listY = CollectionsKt.Y(arrayListC, P());
                            } catch (Throwable th) {
                                slotReaderN.c();
                                throw th;
                            }
                        } else {
                            listY = EmptyList.f71768b;
                        }
                        return new ComposeStackTrace(listY, this.C);
                    }
                    int[] iArr = slotReaderN2.f8200b;
                    int i4 = i2 + 1;
                    int iC = (i4 < slotReaderN2.f8201c ? iArr[(i4 * 5) + 4] : slotReaderN2.f8202e) - SlotTableKt.c(i2, iArr);
                    int i5 = 0;
                    while (true) {
                        if (i5 >= iC) {
                            i2 = i4;
                        } else {
                            Object objH = slotReaderN2.h(i2, i5);
                            if (objH != obj) {
                                RememberObserverHolder rememberObserverHolder2 = objH instanceof RememberObserverHolder ? (RememberObserverHolder) objH : null;
                                if ((rememberObserverHolder2 != null ? rememberObserverHolder2.getF8001a() : null) != obj) {
                                    i5++;
                                }
                            }
                            objectLocation = new ObjectLocation(i2, Integer.valueOf(i5));
                        }
                    }
                }
                slotReaderN2.c();
                if (objectLocation != null) {
                    int i6 = objectLocation.f8565a;
                    Integer num2 = objectLocation.f8566b;
                    slotReaderN = slotTable.n();
                    ArrayList arrayListC2 = ComposeStackTraceBuilderKt.c(slotReaderN, i6, num2);
                    slotReaderN.c();
                    listY = CollectionsKt.Y(arrayListC2, P());
                } else {
                    listY = EmptyList.f71768b;
                }
                return new ComposeStackTrace(listY, this.C);
            } catch (Throwable th2) {
                slotReaderN2.c();
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public final void R() {
        this.z = 0;
        this.y = true;
    }

    public final void S() {
        T();
        this.f7982i.clear();
        this.n.f8005b = 0;
        this.t.f8005b = 0;
        this.x.f8005b = 0;
        this.v = null;
        FixupList fixupList = this.O;
        fixupList.f8246b.a();
        fixupList.f8245a.a();
        this.T = 0L;
        this.A = 0;
        this.r = false;
        this.S = false;
        this.y = false;
        this.F = false;
        this.z = -1;
        SlotReader slotReader = this.G;
        if (!slotReader.f8203f) {
            slotReader.c();
        }
        if (this.I.w) {
            return;
        }
        e0();
    }

    public final void T() {
        this.f7983j = null;
        this.f7984k = 0;
        this.l = 0;
        this.T = 0L;
        this.r = false;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.f8238c = false;
        composerChangeListWriter.d.f8005b = 0;
        composerChangeListWriter.f8240f = 0;
        composerChangeListWriter.f8239e = true;
        composerChangeListWriter.g = 0;
        composerChangeListWriter.f8241h.clear();
        composerChangeListWriter.f8242i = -1;
        composerChangeListWriter.f8243j = -1;
        composerChangeListWriter.f8244k = -1;
        composerChangeListWriter.l = 0;
        this.E.clear();
        this.o = null;
        this.p = null;
    }

    public final PersistentCompositionLocalMap U() {
        PersistentCompositionLocalMap persistentCompositionLocalMap = this.K;
        return persistentCompositionLocalMap != null ? persistentCompositionLocalMap : V(this.G.f8205i);
    }

    public final PersistentCompositionLocalMap V(int i2) {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        if (this.S && this.J) {
            int iG = this.I.v;
            while (iG > 0) {
                if (this.I.s(iG) == 202 && Intrinsics.c(this.I.t(iG), ComposerKt.f7942c)) {
                    Object objQ = this.I.q(iG);
                    objQ.getClass();
                    PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) objQ;
                    this.K = persistentCompositionLocalMap2;
                    return persistentCompositionLocalMap2;
                }
                SlotWriter slotWriter = this.I;
                iG = slotWriter.G(iG, slotWriter.f8219b);
            }
        }
        if (this.G.f8201c > 0) {
            while (i2 > 0) {
                if (this.G.i(i2) == 202) {
                    SlotReader slotReader = this.G;
                    if (Intrinsics.c(slotReader.p(i2, slotReader.f8200b), ComposerKt.f7942c)) {
                        MutableIntObjectMap mutableIntObjectMap = this.v;
                        if (mutableIntObjectMap == null || (persistentCompositionLocalMap = (PersistentCompositionLocalMap) mutableIntObjectMap.b(i2)) == null) {
                            SlotReader slotReader2 = this.G;
                            Object objB = slotReader2.b(i2, slotReader2.f8200b);
                            objB.getClass();
                            persistentCompositionLocalMap = (PersistentCompositionLocalMap) objB;
                        }
                        this.K = persistentCompositionLocalMap;
                        return persistentCompositionLocalMap;
                    }
                }
                i2 = this.G.q(i2);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap3 = this.u;
        this.K = persistentCompositionLocalMap3;
        return persistentCompositionLocalMap3;
    }

    public final ComposeStackTrace W() {
        Collection collection;
        if (!this.f7977b.m()) {
            return null;
        }
        ListBuilder listBuilderV = CollectionsKt.v();
        SlotWriter slotWriter = this.I;
        listBuilderV.addAll(ComposeStackTraceBuilderKt.a(slotWriter, null, slotWriter.t, null));
        SlotReader slotReader = this.G;
        boolean z = slotReader.f8203f;
        int[] iArr = slotReader.f8200b;
        if (z || slotReader.f8201c == 0) {
            collection = EmptyList.f71768b;
        } else {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int iQ = slotReader.f8205i;
            Object objValueOf = Integer.valueOf(slotReader.l - SlotTableKt.c(iQ, iArr));
            while (iQ >= 0) {
                readerTraceBuilder.d(slotReader.i(iQ), slotReader.k(iQ) ? slotReader.p(iQ, iArr) : Composer.Companion.f7939a, slotReader.f8199a.q(iQ), objValueOf);
                objValueOf = slotReader.a(iQ);
                iQ = slotReader.q(iQ);
            }
            collection = readerTraceBuilder.f8553a;
        }
        listBuilderV.addAll(collection);
        listBuilderV.addAll(P());
        return new ComposeStackTrace(CollectionsKt.r(listBuilderV), this.C);
    }

    public final void X(MutableScatterMap mutableScatterMap, Function2 function2) {
        ArrayList arrayList = this.s;
        if (this.F) {
            ComposerKt.a("Reentrant composition is not supported");
        }
        CompositionObserver compositionObserverA = this.g.a();
        Trace.beginSection("Compose:recompose");
        try {
            this.B = Long.hashCode(SnapshotKt.i().getF8464b());
            this.v = null;
            D0(mutableScatterMap);
            this.f7984k = 0;
            this.F = true;
            if (compositionObserverA != null) {
                compositionObserverA.f();
            }
            try {
                B0();
                Object objK0 = k0();
                if (objK0 != function2 && function2 != null) {
                    G0(function2);
                }
                GapComposer$derivedStateObserver$1 gapComposer$derivedStateObserver$1 = this.D;
                MutableVector mutableVectorC = SnapshotStateKt.c();
                try {
                    mutableVectorC.b(gapComposer$derivedStateObserver$1);
                    if (function2 != null) {
                        z0(200, ComposerKt.f7940a);
                        Expect_jvmKt.a(this, function2);
                        Z(false);
                    } else if (!this.w || objK0 == null || objK0.equals(Composer.Companion.f7939a)) {
                        v0();
                    } else {
                        z0(200, ComposerKt.f7940a);
                        TypeIntrinsics.e(2, objK0);
                        Expect_jvmKt.a(this, (Function2) objK0);
                        Z(false);
                    }
                    mutableVectorC.o(mutableVectorC.d - 1);
                    c0();
                    if (compositionObserverA != null) {
                        compositionObserverA.a();
                    }
                    this.F = false;
                    arrayList.clear();
                    if (!this.I.w) {
                        ComposerKt.a("Check failed");
                    }
                    e0();
                    Trace.endSection();
                } catch (Throwable th) {
                    mutableVectorC.o(mutableVectorC.d - 1);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    ComposeStackTraceKt.a(th2, new t00(this, 0));
                    throw th2;
                } catch (Throwable th3) {
                    if (compositionObserverA != null) {
                        compositionObserverA.a();
                    }
                    this.F = false;
                    arrayList.clear();
                    S();
                    if (!this.I.w) {
                        ComposerKt.a("Check failed");
                    }
                    e0();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Trace.endSection();
            throw th4;
        }
    }

    public final void Y(int i2, int i3) {
        if (i2 <= 0 || i2 == i3) {
            return;
        }
        Y(this.G.q(i2), i3);
        if (this.G.l(i2)) {
            Object objN = this.G.n(i2);
            ComposerChangeListWriter composerChangeListWriter = this.M;
            composerChangeListWriter.c();
            composerChangeListWriter.f8241h.add(objN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0397  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void Z(boolean z) {
        long jRotateRight;
        IntStack intStack;
        int i2;
        ArrayList arrayList;
        int i3;
        ?? r5;
        int i4;
        IntStack intStack2;
        int i5;
        MutableScatterSet mutableScatterSet;
        int i6;
        List list;
        ArrayList arrayList2;
        HashSet hashSet;
        int i7;
        int i8;
        int i9;
        Object[] objArr;
        long[] jArr;
        int i10;
        Object[] objArr2;
        long[] jArr2;
        int i11;
        Object[] objArr3;
        long[] jArr3;
        int i12;
        Object[] objArr4;
        long[] jArr4;
        long jRotateRight2;
        IntStack intStack3 = this.n;
        int i13 = intStack3.f8004a[intStack3.f8005b - 2] - 1;
        boolean z2 = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (z2) {
            SlotWriter slotWriter = this.I;
            int i14 = slotWriter.v;
            int iS = slotWriter.s(i14);
            Object objT = this.I.t(i14);
            Object objQ = this.I.q(i14);
            if (objT != null) {
                jRotateRight2 = Long.rotateRight(this.T, 3) ^ ((long) (objT instanceof Enum ? ((Enum) objT).ordinal() : objT.hashCode()));
            } else if (objQ == null || iS != 207 || objQ.equals(composer$Companion$Empty$1)) {
                jRotateRight2 = Long.rotateRight(this.T ^ ((long) i13), 3) ^ ((long) iS);
            } else {
                this.T = Long.rotateRight(Long.rotateRight(this.T ^ ((long) i13), 3) ^ ((long) objQ.hashCode()), 3);
            }
            this.T = Long.rotateRight(jRotateRight2, 3);
        } else {
            SlotReader slotReader = this.G;
            int i15 = slotReader.f8205i;
            int i16 = slotReader.i(i15);
            SlotReader slotReader2 = this.G;
            Object objP = slotReader2.p(i15, slotReader2.f8200b);
            SlotReader slotReader3 = this.G;
            Object objB = slotReader3.b(i15, slotReader3.f8200b);
            if (objP != null) {
                jRotateRight = Long.rotateRight(this.T, 3) ^ ((long) (objP instanceof Enum ? ((Enum) objP).ordinal() : objP.hashCode()));
            } else if (objB == null || i16 != 207 || objB.equals(composer$Companion$Empty$1)) {
                jRotateRight = Long.rotateRight(this.T ^ ((long) i13), 3) ^ ((long) i16);
            } else {
                this.T = Long.rotateRight(Long.rotateRight(this.T ^ ((long) i13), 3) ^ ((long) objB.hashCode()), 3);
            }
            this.T = Long.rotateRight(jRotateRight, 3);
        }
        int i17 = this.l;
        GapPending gapPending = this.f7983j;
        ArrayList arrayList3 = this.s;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (gapPending != null) {
            MutableIntObjectMap mutableIntObjectMap = gapPending.f7998e;
            int i18 = gapPending.f7996b;
            List list2 = gapPending.f7995a;
            if (list2.size() > 0) {
                ArrayList arrayList4 = gapPending.d;
                HashSet hashSet2 = new HashSet(arrayList4.size());
                int size = arrayList4.size();
                for (int i19 = 0; i19 < size; i19++) {
                    hashSet2.add(arrayList4.get(i19));
                }
                i3 = -1;
                MutableScatterSet mutableScatterSetA = ScatterSetKt.a();
                int size2 = arrayList4.size();
                int size3 = list2.size();
                i2 = 1;
                int i20 = 0;
                int i21 = 0;
                int i22 = 0;
                while (i20 < size3) {
                    KeyInfo keyInfo = (KeyInfo) list2.get(i20);
                    if (hashSet2.contains(keyInfo)) {
                        intStack2 = intStack3;
                        i5 = i20;
                        if (!mutableScatterSetA.a(keyInfo)) {
                            int i23 = i21;
                            if (i23 < size2) {
                                KeyInfo keyInfo2 = (KeyInfo) arrayList4.get(i23);
                                if (keyInfo2 != keyInfo) {
                                    GroupInfo groupInfo = (GroupInfo) mutableIntObjectMap.b(keyInfo2.f8196c);
                                    int i24 = groupInfo != null ? groupInfo.f8181b : -1;
                                    mutableScatterSetA.d(keyInfo2);
                                    i8 = i22;
                                    if (i24 != i8) {
                                        GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(keyInfo2.f8196c);
                                        int i25 = groupInfo2 != null ? groupInfo2.f8182c : keyInfo2.d;
                                        mutableScatterSet = mutableScatterSetA;
                                        int i26 = i24 + i18;
                                        i6 = i18;
                                        int i27 = i8 + i6;
                                        if (i25 > 0) {
                                            list = list2;
                                            int i28 = composerChangeListWriter.l;
                                            if (i28 > 0) {
                                                arrayList2 = arrayList4;
                                                if (composerChangeListWriter.f8243j == i26 - i28 && composerChangeListWriter.f8244k == i27 - i28) {
                                                    composerChangeListWriter.l = i28 + i25;
                                                }
                                            } else {
                                                arrayList2 = arrayList4;
                                            }
                                            composerChangeListWriter.c();
                                            composerChangeListWriter.f8243j = i26;
                                            composerChangeListWriter.f8244k = i27;
                                            composerChangeListWriter.l = i25;
                                        } else {
                                            list = list2;
                                            arrayList2 = arrayList4;
                                            composerChangeListWriter.getClass();
                                        }
                                        if (i24 <= i8) {
                                            int i29 = i25;
                                            arrayList3 = arrayList3;
                                            hashSet = hashSet2;
                                            i7 = size2;
                                            if (i8 > i24) {
                                                Object[] objArr5 = mutableIntObjectMap.f3260c;
                                                long[] jArr5 = mutableIntObjectMap.f3258a;
                                                int length = jArr5.length - 2;
                                                if (length >= 0) {
                                                    int i30 = 0;
                                                    while (true) {
                                                        long j2 = jArr5[i30];
                                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i31 = 8 - ((~(i30 - length)) >>> 31);
                                                            int i32 = 0;
                                                            while (i32 < i31) {
                                                                if ((j2 & 255) < 128) {
                                                                    objArr2 = objArr5;
                                                                    GroupInfo groupInfo3 = (GroupInfo) objArr5[(i30 << 3) + i32];
                                                                    jArr2 = jArr5;
                                                                    int i33 = groupInfo3.f8181b;
                                                                    i11 = i24;
                                                                    if (i24 <= i33 && i33 < i11 + i29) {
                                                                        groupInfo3.f8181b = (i33 - i11) + i8;
                                                                    } else if (i11 + 1 <= i33 && i33 < i8) {
                                                                        groupInfo3.f8181b = i33 - i29;
                                                                    }
                                                                } else {
                                                                    objArr2 = objArr5;
                                                                    jArr2 = jArr5;
                                                                    i11 = i24;
                                                                }
                                                                j2 >>= 8;
                                                                i32++;
                                                                jArr5 = jArr2;
                                                                objArr5 = objArr2;
                                                                i24 = i11;
                                                            }
                                                            objArr = objArr5;
                                                            jArr = jArr5;
                                                            i10 = i24;
                                                            if (i31 != 8) {
                                                                break;
                                                            }
                                                        } else {
                                                            objArr = objArr5;
                                                            jArr = jArr5;
                                                            i10 = i24;
                                                        }
                                                        if (i30 == length) {
                                                            break;
                                                        }
                                                        i30++;
                                                        jArr5 = jArr;
                                                        objArr5 = objArr;
                                                        i24 = i10;
                                                    }
                                                }
                                            }
                                        } else {
                                            Object[] objArr6 = mutableIntObjectMap.f3260c;
                                            long[] jArr6 = mutableIntObjectMap.f3258a;
                                            int length2 = jArr6.length - 2;
                                            if (length2 >= 0) {
                                                hashSet = hashSet2;
                                                i7 = size2;
                                                int i34 = 0;
                                                while (true) {
                                                    long j3 = jArr6[i34];
                                                    int i35 = i25;
                                                    arrayList3 = arrayList3;
                                                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i36 = 8 - ((~(i34 - length2)) >>> 31);
                                                        int i37 = 0;
                                                        while (i37 < i36) {
                                                            if ((j3 & 255) < 128) {
                                                                i12 = i37;
                                                                GroupInfo groupInfo4 = (GroupInfo) objArr6[(i34 << 3) + i37];
                                                                objArr4 = objArr6;
                                                                int i38 = groupInfo4.f8181b;
                                                                jArr4 = jArr6;
                                                                if (i24 <= i38 && i38 < i24 + i35) {
                                                                    groupInfo4.f8181b = (i38 - i24) + i8;
                                                                } else if (i8 <= i38 && i38 < i24) {
                                                                    groupInfo4.f8181b = i38 + i35;
                                                                }
                                                            } else {
                                                                i12 = i37;
                                                                objArr4 = objArr6;
                                                                jArr4 = jArr6;
                                                            }
                                                            j3 >>= 8;
                                                            i37 = i12 + 1;
                                                            objArr6 = objArr4;
                                                            jArr6 = jArr4;
                                                        }
                                                        objArr3 = objArr6;
                                                        jArr3 = jArr6;
                                                        if (i36 != 8) {
                                                            break;
                                                        }
                                                    } else {
                                                        objArr3 = objArr6;
                                                        jArr3 = jArr6;
                                                    }
                                                    if (i34 == length2) {
                                                        break;
                                                    }
                                                    i34++;
                                                    arrayList3 = arrayList3;
                                                    i25 = i35;
                                                    objArr6 = objArr3;
                                                    jArr6 = jArr3;
                                                }
                                            }
                                        }
                                        i9 = i5;
                                    } else {
                                        mutableScatterSet = mutableScatterSetA;
                                        i6 = i18;
                                        list = list2;
                                        arrayList2 = arrayList4;
                                    }
                                    hashSet = hashSet2;
                                    i7 = size2;
                                    i9 = i5;
                                } else {
                                    arrayList3 = arrayList3;
                                    mutableScatterSet = mutableScatterSetA;
                                    i6 = i18;
                                    list = list2;
                                    arrayList2 = arrayList4;
                                    hashSet = hashSet2;
                                    i7 = size2;
                                    i8 = i22;
                                    i9 = i5 + 1;
                                }
                                i21 = i23 + 1;
                                GroupInfo groupInfo5 = (GroupInfo) mutableIntObjectMap.b(keyInfo2.f8196c);
                                int i39 = i8 + (groupInfo5 != null ? groupInfo5.f8182c : keyInfo2.d);
                                i20 = i9;
                                gapPending = gapPending;
                                mutableScatterSetA = mutableScatterSet;
                                i18 = i6;
                                list2 = list;
                                arrayList4 = arrayList2;
                                hashSet2 = hashSet;
                                size2 = i7;
                                arrayList3 = arrayList3;
                                i22 = i39;
                                intStack3 = intStack2;
                            } else {
                                i21 = i23;
                                intStack3 = intStack2;
                                i20 = i5;
                            }
                        }
                    } else {
                        intStack2 = intStack3;
                        GroupInfo groupInfo6 = (GroupInfo) mutableIntObjectMap.b(keyInfo.f8196c);
                        int i40 = groupInfo6 != null ? groupInfo6.f8181b : -1;
                        int i41 = keyInfo.f8196c;
                        i5 = i20;
                        composerChangeListWriter.f(i40 + i18, keyInfo.d);
                        gapPending.a(i41, 0);
                        composerChangeListWriter.f8240f = (i41 - composerChangeListWriter.f8236a.G.g) + composerChangeListWriter.f8240f;
                        this.G.r(i41);
                        o0();
                        this.G.s();
                        GapComposerKt.a(arrayList3, i41, SlotTableKt.a(i41, this.G.f8200b) + i41);
                    }
                    i20 = i5 + 1;
                    intStack3 = intStack2;
                }
                intStack = intStack3;
                arrayList = arrayList3;
                composerChangeListWriter.c();
                if (list2.size() > 0) {
                    SlotReader slotReader4 = this.G;
                    composerChangeListWriter.f8240f = (slotReader4.f8204h - composerChangeListWriter.f8236a.G.g) + composerChangeListWriter.f8240f;
                    slotReader4.t();
                }
            } else {
                intStack = intStack3;
                i2 = 1;
                arrayList = arrayList3;
                i3 = -1;
            }
        } else {
            intStack = intStack3;
            i2 = 1;
            arrayList = arrayList3;
            i3 = -1;
        }
        boolean z3 = this.S;
        if (!z3) {
            SlotReader slotReader5 = this.G;
            int i42 = slotReader5.m - slotReader5.l;
            if (i42 > 0) {
                if (i42 > 0) {
                    composerChangeListWriter.d(false);
                    composerChangeListWriter.e();
                    Operations operations = composerChangeListWriter.f8237b.f8235a;
                    operations.d(Operation.TrimParentValues.f8278c);
                    operations.f8289c[operations.d - operations.f8287a[operations.f8288b - 1].f8247a] = i42;
                } else {
                    composerChangeListWriter.getClass();
                }
            }
        }
        int i43 = this.f7984k;
        while (true) {
            SlotReader slotReader6 = this.G;
            if (slotReader6.f8207k > 0 || (i4 = slotReader6.g) == slotReader6.f8204h) {
                break;
            }
            o0();
            composerChangeListWriter.f(i43, this.G.s());
            GapComposerKt.a(arrayList, i4, this.G.g);
        }
        if (z3) {
            if (z) {
                FixupList fixupList = this.O;
                Operations operations2 = fixupList.f8246b;
                if (operations2.f8288b == 0) {
                    ComposerKt.a("Cannot end node insertion, there are no pending operations that can be realized.");
                }
                Operations operations3 = fixupList.f8245a;
                Operation[] operationArr = operations2.f8287a;
                int i44 = operations2.f8288b - 1;
                operations2.f8288b = i44;
                Operation operation = operationArr[i44];
                operationArr[i44] = null;
                operations3.d(operation);
                Object[] objArr7 = operations2.f8290e;
                Object[] objArr8 = operations3.f8290e;
                int i45 = operations3.f8291f;
                int i46 = operation.f8248b;
                int i47 = operations2.f8291f;
                int i48 = i47 - i46;
                System.arraycopy(objArr7, i48, objArr8, i45 - i46, i47 - i48);
                Object[] objArr9 = operations2.f8290e;
                int i49 = operations2.f8291f;
                ArraysKt.r(objArr9, i49 - i46, i49, null);
                int[] iArr = operations2.f8289c;
                int[] iArr2 = operations3.f8289c;
                int i50 = operations3.d;
                int i51 = operation.f8247a;
                int i52 = operations2.d;
                ArraysKt.i(i50 - i51, i52 - i51, i52, iArr, iArr2);
                operations2.f8291f -= i46;
                operations2.d -= i51;
                i17 = i2;
            }
            SlotReader slotReader7 = this.G;
            if (slotReader7.f8207k <= 0) {
                PreconditionsKt.a("Unbalanced begin/end empty");
            }
            slotReader7.f8207k--;
            SlotWriter slotWriter2 = this.I;
            int i53 = slotWriter2.v;
            slotWriter2.j();
            if (this.G.f8207k <= 0) {
                int i54 = (-2) - i53;
                this.I.k();
                this.I.e(i2);
                GapAnchor gapAnchor = this.N;
                boolean zC = this.O.f8245a.c();
                SlotTable slotTable = this.H;
                if (zC) {
                    composerChangeListWriter.b();
                    r5 = 0;
                    composerChangeListWriter.d(false);
                    composerChangeListWriter.e();
                    composerChangeListWriter.c();
                    Operations operations4 = composerChangeListWriter.f8237b.f8235a;
                    operations4.d(Operation.InsertSlots.f8264c);
                    Operations.WriteScope.b(operations4, 0, gapAnchor, 1, slotTable);
                } else {
                    FixupList fixupList2 = this.O;
                    composerChangeListWriter.b();
                    composerChangeListWriter.d(false);
                    composerChangeListWriter.e();
                    composerChangeListWriter.c();
                    Operations operations5 = composerChangeListWriter.f8237b.f8235a;
                    operations5.d(Operation.InsertSlotsWithFixups.f8265c);
                    Operations.WriteScope.c(operations5, gapAnchor, slotTable, fixupList2);
                    this.O = new FixupList();
                    r5 = 0;
                }
                this.S = r5;
                if (this.f7978c.f8209c != 0) {
                    E0(i54, r5);
                    F0(i54, i17);
                }
            }
        } else {
            if (z) {
                composerChangeListWriter.a();
            }
            int i55 = composerChangeListWriter.f8236a.G.f8205i;
            IntStack intStack4 = composerChangeListWriter.d;
            int i56 = i3;
            if (intStack4.a(i56) > i55) {
                ComposerKt.a("Missed recording an endGroup");
            }
            if (intStack4.a(i56) == i55) {
                composerChangeListWriter.d(false);
                intStack4.b();
                composerChangeListWriter.f8237b.f8235a.d(Operation.EndCurrentGroup.f8258c);
            }
            int i57 = this.G.f8205i;
            if (i17 != H0(i57)) {
                F0(i57, i17);
            }
            if (z) {
                i17 = 1;
            }
            this.G.e();
            composerChangeListWriter.c();
        }
        ArrayList arrayList5 = this.f7982i;
        GapPending gapPending2 = (GapPending) arrayList5.remove(arrayList5.size() - 1);
        if (gapPending2 != null && !z3) {
            gapPending2.f7997c++;
        }
        this.f7983j = gapPending2;
        this.f7984k = intStack.b() + i17;
        this.m = intStack.b();
        this.l = intStack.b() + i17;
    }

    @Override // androidx.compose.runtime.Composer
    public final void a(Object obj, Function2 function2) {
        if (this.S) {
            Operations operations = this.O.f8245a;
            operations.d(Operation.UpdateNode.f8281c);
            Operations.WriteScope.a(operations, 0, obj);
            function2.getClass();
            TypeIntrinsics.e(2, function2);
            Operations.WriteScope.a(operations, 1, function2);
            return;
        }
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.b();
        Operations operations2 = composerChangeListWriter.f8237b.f8235a;
        operations2.d(Operation.UpdateNode.f8281c);
        function2.getClass();
        TypeIntrinsics.e(2, function2);
        Operations.WriteScope.b(operations2, 0, obj, 1, function2);
    }

    public final void a0() {
        Z(false);
        RecomposeScopeImpl recomposeScopeImplG0 = g0();
        if (recomposeScopeImplG0 != null) {
            int i2 = recomposeScopeImplG0.f8077b;
            if ((i2 & 1) != 0) {
                recomposeScopeImplG0.f8077b = i2 | 2;
            }
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean b(boolean z) {
        Object objK0 = k0();
        if ((objK0 instanceof Boolean) && z == ((Boolean) objK0).booleanValue()) {
            return false;
        }
        G0(Boolean.valueOf(z));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0087 A[LOOP:0: B:18:0x0044->B:30:0x0087, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x008a A[EDGE_INSN: B:31:0x008a->B:32:0x008b BREAK  A[LOOP:0: B:18:0x0044->B:30:0x0087]] */
    /* JADX WARN: Code duplicated, block: B:60:0x0106  */
    /* JADX WARN: Code duplicated, block: B:65:0x008a A[SYNTHETIC] */
    public final RecomposeScopeImpl b0() {
        RecomposeScopeImpl recomposeScopeImpl;
        GapAnchor gapAnchorA;
        zd zdVar;
        ArrayList arrayList = this.E;
        RecomposeScopeImpl recomposeScopeImpl2 = !arrayList.isEmpty() ? (RecomposeScopeImpl) arrayList.remove(arrayList.size() - 1) : null;
        if (recomposeScopeImpl2 != null) {
            recomposeScopeImpl2.f8077b &= -9;
            CompositionObserver compositionObserverA = this.g.a();
            if (compositionObserverA != null) {
                compositionObserverA.c();
            }
            int i2 = this.B;
            MutableObjectIntMap mutableObjectIntMap = recomposeScopeImpl2.f8080f;
            if (mutableObjectIntMap == null || (recomposeScopeImpl2.f8077b & 16) != 0) {
                zdVar = null;
                break;
            }
            Object[] objArr = mutableObjectIntMap.f3341b;
            int[] iArr = mutableObjectIntMap.f3342c;
            long[] jArr = mutableObjectIntMap.f3340a;
            int length = jArr.length - 2;
            if (length < 0) {
                zdVar = null;
                break;
            }
            int i3 = 0;
            loop0: while (true) {
                long j2 = jArr[i3];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((j2 & 255) < 128) {
                            int i6 = (i3 << 3) + i5;
                            Object obj = objArr[i6];
                            if (iArr[i6] != i2) {
                                zdVar = new zd(recomposeScopeImpl2, i2, mutableObjectIntMap, 9);
                                break loop0;
                            }
                        }
                        j2 >>= 8;
                    }
                    if (i4 == 8) {
                        if (i3 == length) {
                            i3++;
                        }
                    }
                    zdVar = null;
                    break;
                }
                if (i3 == length) {
                    zdVar = null;
                    break;
                }
                i3++;
            }
            ComposerChangeListWriter composerChangeListWriter = this.M;
            if (zdVar != null) {
                Operations operations = composerChangeListWriter.f8237b.f8235a;
                operations.d(Operation.EndCompositionScope.f8257c);
                Operations.WriteScope.b(operations, 0, zdVar, 1, this.f7981h);
            }
            int i7 = recomposeScopeImpl2.f8077b;
            if ((i7 & 512) != 0) {
                recomposeScopeImpl2.f8077b = i7 & (-513);
                Operations operations2 = composerChangeListWriter.f8237b.f8235a;
                operations2.d(Operation.EndResumingScope.f8260c);
                Operations.WriteScope.a(operations2, 0, recomposeScopeImpl2);
                int i8 = recomposeScopeImpl2.f8077b;
                recomposeScopeImpl2.f8077b = i8 & (-129);
                if ((i8 & 1024) != 0) {
                    recomposeScopeImpl2.f8077b = i8 & (-1153);
                    if (this.z == this.G.f8205i) {
                        this.y = false;
                        this.z = -1;
                    }
                }
            }
        }
        if (recomposeScopeImpl2 != null) {
            int i9 = recomposeScopeImpl2.f8077b;
            if ((i9 & 16) == 0 && ((i9 & 1) != 0 || this.q)) {
                if (recomposeScopeImpl2.f8078c == null) {
                    if (this.S) {
                        SlotWriter slotWriter = this.I;
                        gapAnchorA = slotWriter.b(slotWriter.v);
                    } else {
                        SlotReader slotReader = this.G;
                        gapAnchorA = slotReader.a(slotReader.f8205i);
                    }
                    recomposeScopeImpl2.f8078c = gapAnchorA;
                }
                recomposeScopeImpl2.f8077b &= -5;
                recomposeScopeImpl = recomposeScopeImpl2;
            } else {
                recomposeScopeImpl = null;
            }
        } else {
            recomposeScopeImpl = null;
        }
        Z(false);
        return recomposeScopeImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean c(float f2) {
        Object objK0 = k0();
        if ((objK0 instanceof Float) && f2 == ((Number) objK0).floatValue()) {
            return false;
        }
        G0(Float.valueOf(f2));
        return true;
    }

    public final void c0() {
        Z(false);
        this.f7977b.d();
        Z(false);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (composerChangeListWriter.f8238c) {
            composerChangeListWriter.d(false);
            composerChangeListWriter.d(false);
            composerChangeListWriter.f8237b.f8235a.d(Operation.EndCurrentGroup.f8258c);
            composerChangeListWriter.f8238c = false;
        }
        composerChangeListWriter.b();
        if (composerChangeListWriter.d.f8005b != 0) {
            ComposerKt.a("Missed recording an endGroup()");
        }
        if (!this.f7982i.isEmpty()) {
            ComposerKt.a("Start/end imbalance");
        }
        T();
        this.G.c();
        this.w = this.x.b() != 0;
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean d(int i2) {
        Object objK0 = k0();
        if ((objK0 instanceof Integer) && i2 == ((Number) objK0).intValue()) {
            return false;
        }
        G0(Integer.valueOf(i2));
        return true;
    }

    public final void d0(boolean z, GapPending gapPending) {
        this.f7982i.add(this.f7983j);
        this.f7983j = gapPending;
        int i2 = this.l;
        IntStack intStack = this.n;
        intStack.c(i2);
        intStack.c(this.m);
        intStack.c(this.f7984k);
        if (z) {
            this.f7984k = 0;
        }
        this.l = 0;
        this.m = 0;
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean e(long j2) {
        Object objK0 = k0();
        if ((objK0 instanceof Long) && j2 == ((Number) objK0).longValue()) {
            return false;
        }
        G0(Long.valueOf(j2));
        return true;
    }

    public final void e0() {
        SlotTable slotTable = new SlotTable();
        if (this.C) {
            slotTable.i();
        }
        if (this.f7977b.e()) {
            slotTable.l = new MutableIntObjectMap(0, 1, null);
        }
        this.H = slotTable;
        SlotWriter slotWriterO = slotTable.o();
        slotWriterO.e(true);
        this.I = slotWriterO;
    }

    @Override // androidx.compose.runtime.Composer
    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getS() {
        return this.S;
    }

    public final CompositionData f0() {
        GapCompositionDataImpl gapCompositionDataImpl = this.U;
        if (gapCompositionDataImpl != null) {
            return gapCompositionDataImpl;
        }
        GapCompositionDataImpl gapCompositionDataImpl2 = new GapCompositionDataImpl(this.f7981h);
        this.U = gapCompositionDataImpl2;
        return gapCompositionDataImpl2;
    }

    @Override // androidx.compose.runtime.Composer
    public final void g(boolean z) {
        if (this.l != 0) {
            ComposerKt.a("No nodes can be emitted before calling deactivateToEndGroup");
        }
        if (this.S) {
            return;
        }
        if (!z) {
            w0();
            return;
        }
        SlotReader slotReader = this.G;
        int i2 = slotReader.g;
        int i3 = slotReader.f8204h;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.getClass();
        composerChangeListWriter.d(false);
        composerChangeListWriter.f8237b.f8235a.d(Operation.DeactivateCurrentGroup.f8254c);
        GapComposerKt.a(this.s, i2, i3);
        this.G.t();
    }

    public final RecomposeScopeImpl g0() {
        if (this.A != 0) {
            return null;
        }
        ArrayList arrayList = this.E;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (RecomposeScopeImpl) cj.c(1, arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    @Override // androidx.compose.runtime.Composer
    public final GapComposer h(int i2) {
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z;
        L(i2);
        boolean z2 = this.S;
        CompositionObserverHolder compositionObserverHolder = this.g;
        ArrayList arrayList = this.E;
        CompositionImpl compositionImpl = this.f7981h;
        if (z2) {
            compositionImpl.getClass();
            RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl(compositionImpl);
            arrayList.add(recomposeScopeImpl2);
            G0(recomposeScopeImpl2);
            recomposeScopeImpl2.f8079e = this.B;
            recomposeScopeImpl2.f8077b &= -17;
            CompositionObserver compositionObserverA = compositionObserverHolder.a();
            if (compositionObserverA != null) {
                compositionObserverA.e();
                return this;
            }
        } else {
            int i3 = this.G.f8205i;
            ArrayList arrayList2 = this.s;
            int iC = GapComposerKt.c(i3, arrayList2);
            Invalidation invalidation = iC >= 0 ? (Invalidation) arrayList2.remove(iC) : null;
            Object objM = this.G.m();
            if (Intrinsics.c(objM, Composer.Companion.f7939a)) {
                compositionImpl.getClass();
                recomposeScopeImpl = new RecomposeScopeImpl(compositionImpl);
                G0(recomposeScopeImpl);
            } else {
                objM.getClass();
                recomposeScopeImpl = (RecomposeScopeImpl) objM;
            }
            if (invalidation == null) {
                int i4 = recomposeScopeImpl.f8077b;
                boolean z3 = (i4 & 64) != 0;
                if (z3) {
                    recomposeScopeImpl.f8077b = i4 & (-65);
                }
                if (z3) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = true;
            }
            int i5 = recomposeScopeImpl.f8077b;
            recomposeScopeImpl.f8077b = z ? i5 | 8 : i5 & (-9);
            arrayList.add(recomposeScopeImpl);
            recomposeScopeImpl.f8079e = this.B;
            recomposeScopeImpl.f8077b &= -17;
            CompositionObserver compositionObserverA2 = compositionObserverHolder.a();
            if (compositionObserverA2 != null) {
                compositionObserverA2.e();
            }
            int i6 = recomposeScopeImpl.f8077b;
            if ((i6 & 256) != 0) {
                recomposeScopeImpl.f8077b = (i6 & (-257)) | 512;
                Operations operations = this.M.f8237b.f8235a;
                operations.d(Operation.StartResumingScope.f8277c);
                Operations.WriteScope.a(operations, 0, recomposeScopeImpl);
                if (!this.y) {
                    int i7 = recomposeScopeImpl.f8077b;
                    if ((i7 & 128) != 0) {
                        this.y = true;
                        this.z = this.G.f8205i;
                        recomposeScopeImpl.f8077b = i7 | 1024;
                    }
                }
            }
        }
        return this;
    }

    public final boolean h0() {
        if (!i() || this.w) {
            return true;
        }
        RecomposeScopeImpl recomposeScopeImplG0 = g0();
        return (recomposeScopeImplG0 == null || (recomposeScopeImplG0.f8077b & 4) == 0) ? false : true;
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean i() {
        RecomposeScopeImpl recomposeScopeImplG0;
        return (this.S || this.y || this.w || (recomposeScopeImplG0 = g0()) == null || (recomposeScopeImplG0.f8077b & 8) != 0) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0146 A[Catch: all -> 0x00be, TryCatch #15 {all -> 0x00be, blocks: (B:8:0x0015, B:10:0x0026, B:12:0x005f, B:19:0x0072, B:30:0x00b2, B:97:0x0220, B:37:0x00c8, B:38:0x00cb, B:15:0x0064, B:17:0x006a, B:18:0x006f, B:39:0x00cc, B:41:0x00d3, B:43:0x00d7, B:46:0x00df, B:49:0x00e9, B:51:0x00ed, B:52:0x00f2, B:56:0x00fc, B:58:0x0109, B:64:0x0129, B:66:0x013d, B:68:0x0146, B:70:0x0151, B:72:0x0162, B:77:0x017a, B:96:0x021d, B:128:0x0273, B:129:0x0276, B:75:0x0167, B:131:0x0278, B:132:0x027b, B:63:0x0127, B:59:0x0117, B:55:0x00f7, B:133:0x027c, B:65:0x0136), top: B:170:0x0015, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0151 A[Catch: all -> 0x00be, TryCatch #15 {all -> 0x00be, blocks: (B:8:0x0015, B:10:0x0026, B:12:0x005f, B:19:0x0072, B:30:0x00b2, B:97:0x0220, B:37:0x00c8, B:38:0x00cb, B:15:0x0064, B:17:0x006a, B:18:0x006f, B:39:0x00cc, B:41:0x00d3, B:43:0x00d7, B:46:0x00df, B:49:0x00e9, B:51:0x00ed, B:52:0x00f2, B:56:0x00fc, B:58:0x0109, B:64:0x0129, B:66:0x013d, B:68:0x0146, B:70:0x0151, B:72:0x0162, B:77:0x017a, B:96:0x021d, B:128:0x0273, B:129:0x0276, B:75:0x0167, B:131:0x0278, B:132:0x027b, B:63:0x0127, B:59:0x0117, B:55:0x00f7, B:133:0x027c, B:65:0x0136), top: B:170:0x0015, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0160  */
    /* JADX WARN: Code duplicated, block: B:74:0x0166  */
    /* JADX WARN: Code duplicated, block: B:75:0x0167 A[Catch: all -> 0x00be, TryCatch #15 {all -> 0x00be, blocks: (B:8:0x0015, B:10:0x0026, B:12:0x005f, B:19:0x0072, B:30:0x00b2, B:97:0x0220, B:37:0x00c8, B:38:0x00cb, B:15:0x0064, B:17:0x006a, B:18:0x006f, B:39:0x00cc, B:41:0x00d3, B:43:0x00d7, B:46:0x00df, B:49:0x00e9, B:51:0x00ed, B:52:0x00f2, B:56:0x00fc, B:58:0x0109, B:64:0x0129, B:66:0x013d, B:68:0x0146, B:70:0x0151, B:72:0x0162, B:77:0x017a, B:96:0x021d, B:128:0x0273, B:129:0x0276, B:75:0x0167, B:131:0x0278, B:132:0x027b, B:63:0x0127, B:59:0x0117, B:55:0x00f7, B:133:0x027c, B:65:0x0136), top: B:170:0x0015, inners: #10 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0178  */
    /* JADX WARN: Code duplicated, block: B:94:0x020b A[Catch: all -> 0x0236, TRY_LEAVE, TryCatch #9 {all -> 0x0236, blocks: (B:92:0x0200, B:94:0x020b, B:120:0x0261, B:121:0x0263), top: B:158:0x0200 }] */
    public final void i0(ArrayList arrayList) {
        MovableContentState movableContentState;
        Anchor gapAnchor;
        GapAnchor gapAnchorA;
        ArrayList arrayList2;
        SlotReader slotReaderN;
        SlotReader slotReaderN2;
        SlotReader slotReader;
        int[] iArr;
        MutableIntObjectMap mutableIntObjectMap;
        MutableIntObjectMap mutableIntObjectMap2;
        int[] iArr2;
        ChangeList changeList;
        ChangeList changeList2;
        ChangeList changeList3;
        boolean z;
        DefaultConstructorMarker defaultConstructorMarker;
        ChangeList changeList4;
        SlotTable slotTable;
        SlotStorage slotStorage;
        SlotReader slotReader2;
        GapComposer gapComposer = this;
        CompositionContext compositionContext = gapComposer.f7977b;
        Changes changes = gapComposer.f7980f;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        ChangeList changeList5 = changes instanceof ChangeList ? (ChangeList) changes : null;
        if (changeList5 == null) {
            ComposerKt.b("Inconsistent composition");
            os.d();
            return;
        }
        ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
        ChangeList changeList6 = composerChangeListWriter.f8237b;
        try {
            composerChangeListWriter.f8237b = changeList5;
            changeList5.f8235a.d(Operation.ResetSlots.f8274c);
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                Pair pair = (Pair) arrayList.get(i3);
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) pair.f71705b;
                MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) pair.f71706c;
                GapAnchor gapAnchorA2 = GapAnchorKt.a(movableContentStateReference.f8027e);
                SlotTable slotTableE = SlotTableKt.e(movableContentStateReference.d);
                int iH = slotTableE.h(gapAnchorA2);
                IntRef intRef = new IntRef(i2, 1, defaultConstructorMarker2);
                composerChangeListWriter.b();
                Operations operations = composerChangeListWriter.f8237b.f8235a;
                operations.d(Operation.DetermineMovableContentNodeIndex.f8255c);
                Operations.WriteScope.b(operations, i2, intRef, 1, gapAnchorA2);
                if (movableContentStateReference2 == null) {
                    if (slotTableE == gapComposer.H) {
                        if (!gapComposer.I.w) {
                            ComposerKt.a("Check failed");
                        }
                        gapComposer.e0();
                    }
                    SlotReader slotReaderN3 = slotTableE.n();
                    try {
                        slotReaderN3.r(iH);
                        composerChangeListWriter.f8240f = iH;
                        ChangeList changeList7 = new ChangeList();
                        r0 r0Var = new r0(gapComposer, changeList7, slotReaderN3, movableContentStateReference, 11);
                        try {
                            gapComposer = this;
                            slotReader2 = slotReaderN3;
                            try {
                                gapComposer.m0(null, null, null, EmptyList.f71768b, r0Var);
                                ChangeList changeList8 = composerChangeListWriter.f8237b;
                                changeList8.getClass();
                                if (!changeList7.b()) {
                                    Operations operations2 = changeList8.f8235a;
                                    operations2.d(Operation.ApplyChangeList.f8251c);
                                    Operations.WriteScope.b(operations2, i2, changeList7, 1, intRef);
                                }
                                slotReader2.c();
                                compositionContext = compositionContext;
                                defaultConstructorMarker = null;
                            } catch (Throwable th) {
                                th = th;
                                slotReader2.c();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            slotReader2 = slotReaderN3;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        slotReader2 = slotReaderN3;
                    }
                } else {
                    MovableContentState movableContentStateQ = compositionContext.q(movableContentStateReference2);
                    SlotTable slotTableE2 = (movableContentStateQ == null || (slotStorage = movableContentStateQ.f8023a) == null) ? null : SlotTableKt.e(slotStorage);
                    SlotTable slotTableE3 = slotTableE2 == null ? SlotTableKt.e(movableContentStateReference2.d) : slotTableE2;
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            try {
                                                try {
                                                    try {
                                                        try {
                                                            try {
                                                                try {
                                                                    if (slotTableE2 != null) {
                                                                        if (slotTableE2.f8212h) {
                                                                            ComposerKt.a("use active SlotWriter to create an anchor location instead");
                                                                        }
                                                                        if (slotTableE2.f8209c <= 0) {
                                                                            PreconditionsKt.a("Parameter index is out of range");
                                                                        }
                                                                        ArrayList arrayList3 = slotTableE2.f8214j;
                                                                        movableContentState = movableContentStateQ;
                                                                        int iF = SlotTableKt.f(arrayList3, 0, slotTableE2.f8209c);
                                                                        if (iF < 0) {
                                                                            gapAnchor = new GapAnchor(0);
                                                                            arrayList3.add(-(iF + 1), gapAnchor);
                                                                        } else {
                                                                            gapAnchor = (GapAnchor) arrayList3.get(iF);
                                                                        }
                                                                        if (gapAnchor != null) {
                                                                        }
                                                                        gapAnchorA = GapAnchorKt.a(gapAnchor);
                                                                        arrayList2 = new ArrayList();
                                                                        slotReaderN = slotTableE3.n();
                                                                        GapComposerKt.b(slotReaderN, arrayList2, slotTableE3.h(gapAnchorA));
                                                                        slotReaderN.c();
                                                                        if (arrayList2.isEmpty()) {
                                                                            gapAnchorA = gapAnchorA;
                                                                        } else {
                                                                            changeList4 = composerChangeListWriter.f8237b;
                                                                            changeList4.getClass();
                                                                            if (!arrayList2.isEmpty()) {
                                                                                Operations operations3 = changeList4.f8235a;
                                                                                operations3.d(Operation.CopyNodesToNewAnchorLocation.f8252c);
                                                                                Operations.WriteScope.b(operations3, 1, arrayList2, 0, intRef);
                                                                            }
                                                                            slotTable = gapComposer.f7978c;
                                                                            if (slotTableE != slotTable) {
                                                                                int iH2 = slotTable.h(gapAnchorA2);
                                                                                gapComposer.E0(iH2, gapComposer.H0(iH2) + arrayList2.size());
                                                                            }
                                                                        }
                                                                        Operations operations4 = composerChangeListWriter.f8237b.f8235a;
                                                                        operations4.d(Operation.CopySlotTableToAnchorLocation.f8253c);
                                                                        int i4 = operations4.f8291f - operations4.f8287a[operations4.f8288b - 1].f8248b;
                                                                        Object[] objArr = operations4.f8290e;
                                                                        objArr[i4] = movableContentState;
                                                                        objArr[i4 + 1] = compositionContext;
                                                                        objArr[i4 + 3] = movableContentStateReference;
                                                                        objArr[i4 + 2] = movableContentStateReference2;
                                                                        slotReaderN2 = slotTableE3.n();
                                                                        slotReader = gapComposer.G;
                                                                        iArr = gapComposer.o;
                                                                        mutableIntObjectMap = gapComposer.v;
                                                                        gapComposer.o = null;
                                                                        gapComposer.v = null;
                                                                        gapComposer.G = slotReaderN2;
                                                                        int iH3 = slotTableE3.h(GapAnchorKt.a(gapAnchorA));
                                                                        slotReaderN2.r(iH3);
                                                                        composerChangeListWriter.f8240f = iH3;
                                                                        changeList = new ChangeList();
                                                                        changeList2 = composerChangeListWriter.f8237b;
                                                                        composerChangeListWriter.f8237b = changeList;
                                                                        z = composerChangeListWriter.f8239e;
                                                                        composerChangeListWriter.f8239e = false;
                                                                        ControlledComposition controlledComposition = movableContentStateReference2.f8026c;
                                                                        ControlledComposition controlledComposition2 = movableContentStateReference.f8026c;
                                                                        Integer numValueOf = Integer.valueOf(slotReaderN2.g);
                                                                        slotReaderN2 = slotReaderN2;
                                                                        mutableIntObjectMap2 = mutableIntObjectMap;
                                                                        changeList3 = changeList2;
                                                                        defaultConstructorMarker = null;
                                                                        iArr2 = iArr;
                                                                        gapComposer.m0(controlledComposition, controlledComposition2, numValueOf, movableContentStateReference2.f8028f, new dt(gapComposer, movableContentStateReference, 20));
                                                                        composerChangeListWriter.f8239e = z;
                                                                        composerChangeListWriter.f8237b = changeList3;
                                                                        changeList3.getClass();
                                                                        if (!changeList.b()) {
                                                                            Operations operations5 = changeList3.f8235a;
                                                                            operations5.d(Operation.ApplyChangeList.f8251c);
                                                                            Operations.WriteScope.b(operations5, 0, changeList, 1, intRef);
                                                                        }
                                                                        gapComposer.G = slotReader;
                                                                        gapComposer.o = iArr2;
                                                                        gapComposer.v = mutableIntObjectMap2;
                                                                        slotReaderN2.c();
                                                                    } else {
                                                                        movableContentState = movableContentStateQ;
                                                                        compositionContext = compositionContext;
                                                                    }
                                                                    gapComposer.G = slotReader;
                                                                    gapComposer.o = iArr2;
                                                                    gapComposer.v = mutableIntObjectMap2;
                                                                    slotReaderN2.c();
                                                                } catch (Throwable th4) {
                                                                    th = th4;
                                                                    slotReaderN2.c();
                                                                    throw th;
                                                                }
                                                                composerChangeListWriter.f8237b = changeList3;
                                                                changeList3.getClass();
                                                                if (!changeList.b()) {
                                                                    Operations operations6 = changeList3.f8235a;
                                                                    operations6.d(Operation.ApplyChangeList.f8251c);
                                                                    Operations.WriteScope.b(operations6, 0, changeList, 1, intRef);
                                                                }
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                gapComposer.G = slotReader;
                                                                gapComposer.o = iArr2;
                                                                gapComposer.v = mutableIntObjectMap2;
                                                                throw th;
                                                            }
                                                            composerChangeListWriter.f8239e = z;
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            composerChangeListWriter.f8237b = changeList3;
                                                            throw th;
                                                        }
                                                        gapComposer.m0(controlledComposition, controlledComposition2, numValueOf, movableContentStateReference2.f8028f, new dt(gapComposer, movableContentStateReference, 20));
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        composerChangeListWriter.f8239e = z;
                                                        throw th;
                                                    }
                                                    slotReaderN2 = slotReaderN2;
                                                    mutableIntObjectMap2 = mutableIntObjectMap;
                                                    changeList3 = changeList2;
                                                    defaultConstructorMarker = null;
                                                    iArr2 = iArr;
                                                } catch (Throwable th8) {
                                                    th = th8;
                                                    mutableIntObjectMap2 = mutableIntObjectMap;
                                                    changeList3 = changeList2;
                                                    iArr2 = iArr;
                                                    composerChangeListWriter.f8239e = z;
                                                    throw th;
                                                }
                                                ControlledComposition controlledComposition3 = movableContentStateReference.f8026c;
                                                Integer numValueOf2 = Integer.valueOf(slotReaderN2.g);
                                            } catch (Throwable th9) {
                                                th = th9;
                                                changeList3 = changeList2;
                                                mutableIntObjectMap2 = mutableIntObjectMap;
                                            }
                                            ControlledComposition controlledComposition4 = movableContentStateReference2.f8026c;
                                        } catch (Throwable th10) {
                                            th = th10;
                                            mutableIntObjectMap2 = mutableIntObjectMap;
                                            changeList3 = changeList2;
                                        }
                                        composerChangeListWriter.f8239e = false;
                                    } catch (Throwable th11) {
                                        th = th11;
                                        mutableIntObjectMap2 = mutableIntObjectMap;
                                        changeList3 = changeList2;
                                        slotReaderN2 = slotReaderN2;
                                        iArr2 = iArr;
                                    }
                                    composerChangeListWriter.f8237b = changeList;
                                    z = composerChangeListWriter.f8239e;
                                } catch (Throwable th12) {
                                    th = th12;
                                    mutableIntObjectMap2 = mutableIntObjectMap;
                                    changeList3 = changeList2;
                                    slotReaderN2 = slotReaderN2;
                                    iArr2 = iArr;
                                }
                                gapComposer.G = slotReaderN2;
                                int iH4 = slotTableE3.h(GapAnchorKt.a(gapAnchorA));
                                slotReaderN2.r(iH4);
                                composerChangeListWriter.f8240f = iH4;
                                changeList = new ChangeList();
                                changeList2 = composerChangeListWriter.f8237b;
                            } catch (Throwable th13) {
                                th = th13;
                                mutableIntObjectMap2 = mutableIntObjectMap;
                                slotReaderN2 = slotReaderN2;
                                iArr2 = iArr;
                            }
                            slotReader = gapComposer.G;
                            iArr = gapComposer.o;
                            mutableIntObjectMap = gapComposer.v;
                            gapComposer.o = null;
                            gapComposer.v = null;
                        } catch (Throwable th14) {
                            th = th14;
                            slotReaderN2 = slotReaderN2;
                        }
                        GapComposerKt.b(slotReaderN, arrayList2, slotTableE3.h(gapAnchorA));
                        slotReaderN.c();
                        if (arrayList2.isEmpty()) {
                            changeList4 = composerChangeListWriter.f8237b;
                            changeList4.getClass();
                            if (!arrayList2.isEmpty()) {
                                Operations operations7 = changeList4.f8235a;
                                operations7.d(Operation.CopyNodesToNewAnchorLocation.f8252c);
                                Operations.WriteScope.b(operations7, 1, arrayList2, 0, intRef);
                            }
                            slotTable = gapComposer.f7978c;
                            if (slotTableE != slotTable) {
                                int iH5 = slotTable.h(gapAnchorA2);
                                gapComposer.E0(iH5, gapComposer.H0(iH5) + arrayList2.size());
                            }
                        } else {
                            gapAnchorA = gapAnchorA;
                        }
                        Operations operations8 = composerChangeListWriter.f8237b.f8235a;
                        operations8.d(Operation.CopySlotTableToAnchorLocation.f8253c);
                        int i5 = operations8.f8291f - operations8.f8287a[operations8.f8288b - 1].f8248b;
                        Object[] objArr2 = operations8.f8290e;
                        objArr2[i5] = movableContentState;
                        objArr2[i5 + 1] = compositionContext;
                        objArr2[i5 + 3] = movableContentStateReference;
                        objArr2[i5 + 2] = movableContentStateReference2;
                        slotReaderN2 = slotTableE3.n();
                    } catch (Throwable th15) {
                        slotReaderN.c();
                        throw th15;
                    }
                    gapAnchor = movableContentStateReference2.f8027e;
                    gapAnchorA = GapAnchorKt.a(gapAnchor);
                    arrayList2 = new ArrayList();
                    slotReaderN = slotTableE3.n();
                }
                composerChangeListWriter.f8237b.f8235a.d(Operation.SkipToEndOfCurrentGroup.f8276c);
                i3++;
                size = size;
                defaultConstructorMarker2 = defaultConstructorMarker;
                compositionContext = compositionContext;
                i2 = 0;
            }
            composerChangeListWriter.b();
            composerChangeListWriter.f8237b.f8235a.d(Operation.EndMovableContentPlacement.f8259c);
            composerChangeListWriter.f8240f = 0;
            composerChangeListWriter.f8237b = changeList6;
        } catch (Throwable th16) {
            composerChangeListWriter.f8237b = changeList6;
            throw th16;
        }
    }

    @Override // androidx.compose.runtime.Composer
    /* JADX INFO: renamed from: j, reason: from getter */
    public final Applier getF7976a() {
        return this.f7976a;
    }

    public final void j0(MovableContent movableContent, PersistentCompositionLocalMap persistentCompositionLocalMap, Object obj, boolean z) {
        A(126665345, movableContent);
        k0();
        G0(obj);
        long j2 = this.T;
        try {
            this.T = 126665345L;
            if (this.S) {
                SlotWriter.z(this.I);
            }
            boolean z2 = (this.S || Intrinsics.c(this.G.f(), persistentCompositionLocalMap)) ? false : true;
            if (z2) {
                p0(persistentCompositionLocalMap);
            }
            OpaqueKey opaqueKey = ComposerKt.f7942c;
            GroupKind.f8183a.getClass();
            x0(opaqueKey, 202, persistentCompositionLocalMap, 0);
            this.K = null;
            if (!this.S || z) {
                boolean z3 = this.w;
                this.w = z2;
                Expect_jvmKt.a(this, new ComposableLambdaImpl(-59194059, true, new rs(movableContent, obj, 16)));
                this.w = z3;
            } else {
                this.J = true;
                SlotWriter slotWriter = this.I;
                this.f7977b.n(new MovableContentStateReference(movableContent, obj, this.f7981h, this.H, slotWriter.b(slotWriter.G(slotWriter.v, slotWriter.f8219b)), EmptyList.f71768b, U(), null));
            }
            Z(false);
            this.K = null;
            this.T = j2;
            Z(false);
        } catch (Throwable th) {
            try {
                ComposeStackTraceKt.a(th, new t00(this, 1));
                throw th;
            } catch (Throwable th2) {
                Z(false);
                this.K = null;
                this.T = j2;
                Z(false);
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final Object k(CompositionLocal compositionLocal) {
        return CompositionLocalMapKt.a(U(), compositionLocal);
    }

    public final Object k0() {
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (!z) {
            Object objM = this.G.m();
            if (!this.y || (objM instanceof ReusableRememberObserverHolder)) {
                return objM;
            }
        } else if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
            return composer$Companion$Empty$1;
        }
        return composer$Companion$Empty$1;
    }

    @Override // androidx.compose.runtime.Composer
    /* JADX INFO: renamed from: l, reason: from getter */
    public final long getT() {
        return this.T;
    }

    public final int l0(int i2) {
        int iQ = this.G.q(i2) + 1;
        int i3 = 0;
        while (iQ < i2) {
            if (!this.G.k(iQ)) {
                i3++;
            }
            iQ += SlotTableKt.a(iQ, this.G.f8200b);
        }
        return i3;
    }

    @Override // androidx.compose.runtime.Composer
    /* JADX INFO: renamed from: m, reason: from getter */
    public final CoroutineContext getR() {
        return this.R;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e A[Catch: all -> 0x0025, TRY_LEAVE, TryCatch #0 {all -> 0x0025, blocks: (B:3:0x0005, B:5:0x0013, B:7:0x0021, B:11:0x002b, B:10:0x0027, B:14:0x0032, B:16:0x0038, B:18:0x003e), top: B:23:0x0005 }] */
    public final Object m0(ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, Function0 function0) {
        Object objMo47invoke;
        boolean z = this.F;
        int i2 = this.f7984k;
        try {
            this.F = true;
            this.f7984k = 0;
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Pair pair = (Pair) list.get(i3);
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) pair.f71705b;
                Object obj = pair.f71706c;
                if (obj != null) {
                    C0(recomposeScopeImpl, obj);
                } else {
                    C0(recomposeScopeImpl, null);
                }
            }
            if (controlledComposition == null) {
                objMo47invoke = function0.mo47invoke();
            } else {
                objMo47invoke = controlledComposition.k(controlledComposition2, num != null ? num.intValue() : -1, function0);
                if (objMo47invoke == null) {
                    objMo47invoke = function0.mo47invoke();
                }
            }
            return objMo47invoke;
        } finally {
            this.F = z;
            this.f7984k = i2;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final PersistentCompositionLocalMap n() {
        return U();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003a  */
    /* JADX WARN: Code duplicated, block: B:145:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:175:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0123 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0125 A[LOOP:5: B:37:0x00bd->B:56:0x0125, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x012c  */
    /* JADX WARN: Code duplicated, block: B:61:0x013c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0167  */
    /* JADX WARN: Code duplicated, block: B:69:0x0169  */
    /* JADX WARN: Code duplicated, block: B:72:0x016e  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:73:0x017a
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void n0() {
        /*
            Method dump skipped, instruction units count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.n0():void");
    }

    @Override // androidx.compose.runtime.Composer
    public final void o() {
        if (!this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (this.S) {
            ComposerKt.a("useNode() called while inserting");
        }
        SlotReader slotReader = this.G;
        Object objN = slotReader.n(slotReader.f8205i);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.c();
        composerChangeListWriter.f8241h.add(objN);
        if (this.y && (objN instanceof ComposeNodeLifecycleCallback)) {
            composerChangeListWriter.b();
            composerChangeListWriter.f8237b.f8235a.d(Operation.UseCurrentNode.f8284c);
        }
    }

    public final void o0() {
        r0(this.G.g);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.d(false);
        composerChangeListWriter.e();
        composerChangeListWriter.f8237b.f8235a.d(Operation.RemoveCurrentGroup.f8272c);
        int i2 = composerChangeListWriter.f8240f;
        SlotReader slotReader = composerChangeListWriter.f8236a.G;
        composerChangeListWriter.f8240f = SlotTableKt.a(slotReader.g, slotReader.f8200b) + i2;
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean p(int i2, boolean z) {
        RecomposeScopeImpl recomposeScopeImplG0;
        if ((i2 & 1) == 0 && (this.S || this.y)) {
            ShouldPauseCallback shouldPauseCallback = this.P;
            if (shouldPauseCallback != null && (recomposeScopeImplG0 = g0()) != null && shouldPauseCallback.e()) {
                int i3 = recomposeScopeImplG0.f8077b;
                if ((i3 & 512) != 0) {
                    return true;
                }
                int i4 = i3 | 1;
                recomposeScopeImplG0.f8077b = i4;
                recomposeScopeImplG0.f8077b = (this.y ? i3 | 129 : i4 & (-129)) | 256;
                Operations operations = this.M.f8237b.f8235a;
                operations.d(Operation.RememberPausingScope.f8271c);
                Operations.WriteScope.a(operations, 0, recomposeScopeImplG0);
                this.f7977b.u(recomposeScopeImplG0);
                return false;
            }
        } else if (!z && i()) {
            return false;
        }
        return true;
    }

    public final void p0(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        MutableIntObjectMap mutableIntObjectMap = this.v;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
            this.v = mutableIntObjectMap;
        }
        mutableIntObjectMap.i(this.G.g, persistentCompositionLocalMap);
    }

    @Override // androidx.compose.runtime.Composer
    public final void q(Object obj) {
        if (obj instanceof RememberObserver) {
            GapRememberObserverHolder gapRememberObserverHolder = new GapRememberObserverHolder((RememberObserver) obj, this.m - 1);
            if (this.S) {
                Operations operations = this.M.f8237b.f8235a;
                operations.d(Operation.Remember.f8270c);
                Operations.WriteScope.a(operations, 0, gapRememberObserverHolder);
            }
            this.d.add(obj);
            obj = gapRememberObserverHolder;
        }
        G0(obj);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a  */
    public final void q0(int i2, int i3, int i4) {
        SlotReader slotReader = this.G;
        if (i2 == i3) {
            i4 = i2;
        } else if (i2 != i4 && i3 != i4) {
            if (slotReader.q(i2) == i3) {
                i4 = i3;
            } else if (slotReader.q(i3) == i2) {
                i4 = i2;
            } else if (slotReader.q(i2) == slotReader.q(i3)) {
                i4 = slotReader.q(i2);
            } else {
                int iQ = i2;
                int i5 = 0;
                while (iQ > 0 && iQ != i4) {
                    iQ = slotReader.q(iQ);
                    i5++;
                }
                int iQ2 = i3;
                int i6 = 0;
                while (iQ2 > 0 && iQ2 != i4) {
                    iQ2 = slotReader.q(iQ2);
                    i6++;
                }
                int i7 = i5 - i6;
                int iQ3 = i2;
                for (int i8 = 0; i8 < i7; i8++) {
                    iQ3 = slotReader.q(iQ3);
                }
                int i9 = i6 - i5;
                int iQ4 = i3;
                for (int i10 = 0; i10 < i9; i10++) {
                    iQ4 = slotReader.q(iQ4);
                }
                i4 = iQ3;
                for (int iQ5 = iQ4; i4 != iQ5; iQ5 = slotReader.q(iQ5)) {
                    i4 = slotReader.q(i4);
                }
            }
        }
        while (i2 > 0 && i2 != i4) {
            if (slotReader.l(i2)) {
                this.M.a();
            }
            i2 = slotReader.q(i2);
        }
        Y(i3, i4);
    }

    @Override // androidx.compose.runtime.Composer
    public final void r() {
        Z(true);
    }

    public final void r0(int i2) {
        boolean zL = this.G.l(i2);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (zL) {
            composerChangeListWriter.c();
            Object objN = this.G.n(i2);
            composerChangeListWriter.c();
            composerChangeListWriter.f8241h.add(objN);
        }
        u0(this, i2, i2, zL, 0);
        composerChangeListWriter.c();
        if (zL) {
            composerChangeListWriter.a();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final void s(MovableContent movableContent, Object obj) {
        j0(movableContent, U(), obj, false);
    }

    @Override // androidx.compose.runtime.Composer
    public final void t(Function0 function0) {
        Operations operations = this.M.f8237b.f8235a;
        operations.d(Operation.SideEffect.f8275c);
        Operations.WriteScope.a(operations, 0, function0);
    }

    @Override // androidx.compose.runtime.Composer
    public final RecomposeScopeImpl u() {
        return g0();
    }

    @Override // androidx.compose.runtime.Composer
    public final void v() {
        if (this.y && this.G.f8205i == this.z) {
            this.z = -1;
            this.y = false;
        }
        Z(false);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ea  */
    public final void v0() {
        long jRotateLeft;
        if (this.s.isEmpty()) {
            this.l = this.G.s() + this.l;
            return;
        }
        SlotReader slotReader = this.G;
        int iG = slotReader.g();
        int[] iArr = slotReader.f8200b;
        int i2 = slotReader.g;
        Object objP = i2 < slotReader.f8204h ? slotReader.p(i2, iArr) : null;
        Object objF = slotReader.f();
        int i3 = this.m;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objP == null) {
            if (objF == null || iG != 207 || objF.equals(composer$Companion$Empty$1)) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) iG), 3) ^ ((long) i3);
            } else {
                this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) objF.hashCode()), 3) ^ ((long) i3);
            }
            A0(null, (iArr[(slotReader.g * 5) + 1] & 1073741824) != 0);
            n0();
            slotReader.e();
            if (objP != null) {
                if (objP instanceof Enum) {
                    this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ ((long) ((Enum) objP).ordinal()), 3);
                } else {
                    this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ ((long) objP.hashCode()), 3);
                }
            }
            if (objF == null && iG == 207 && !objF.equals(composer$Companion$Empty$1)) {
                this.T = Long.rotateRight(Long.rotateRight(this.T ^ ((long) i3), 3) ^ ((long) objF.hashCode()), 3);
                return;
            } else {
                this.T = Long.rotateRight(((long) iG) ^ Long.rotateRight(this.T ^ ((long) i3), 3), 3);
            }
        }
        jRotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) (objP instanceof Enum ? ((Enum) objP).ordinal() : objP.hashCode())), 3);
        this.T = jRotateLeft;
        A0(null, (iArr[(slotReader.g * 5) + 1] & 1073741824) != 0);
        n0();
        slotReader.e();
        if (objP != null) {
            if (objF == null) {
            }
            this.T = Long.rotateRight(((long) iG) ^ Long.rotateRight(this.T ^ ((long) i3), 3), 3);
        } else if (objP instanceof Enum) {
            this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ ((long) ((Enum) objP).ordinal()), 3);
        } else {
            this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ ((long) objP.hashCode()), 3);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public final void w(int i2) {
        GroupKind.f8183a.getClass();
        x0(null, i2, null, 0);
    }

    public final void w0() {
        SlotReader slotReader = this.G;
        int i2 = slotReader.f8205i;
        this.l = i2 >= 0 ? slotReader.f8200b[(i2 * 5) + 1] & 67108863 : 0;
        slotReader.t();
    }

    @Override // androidx.compose.runtime.Composer
    public final Object x() {
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (!z) {
            Object objM = this.G.m();
            if (!this.y || (objM instanceof ReusableRememberObserverHolder)) {
                return objM instanceof RememberObserverHolder ? ((RememberObserverHolder) objM).getF8001a() : objM;
            }
        } else if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
            return composer$Companion$Empty$1;
        }
        return composer$Companion$Empty$1;
    }

    /* JADX WARN: Code duplicated, block: B:162:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:165:0x0309  */
    /* JADX WARN: Code duplicated, block: B:168:0x0324  */
    /* JADX WARN: Code duplicated, block: B:169:0x0329 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:170:0x032b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x032f  */
    /* JADX WARN: Code duplicated, block: B:174:0x0336  */
    /* JADX WARN: Code duplicated, block: B:176:0x0339  */
    /* JADX WARN: Code duplicated, block: B:177:0x033b  */
    /* JADX WARN: Code duplicated, block: B:182:0x036e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:25:0x007f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Code duplicated, block: B:29:0x0087  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:32:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:50:0x00da  */
    /* JADX WARN: Code duplicated, block: B:53:0x00df  */
    /* JADX WARN: Code duplicated, block: B:63:0x0103  */
    /* JADX WARN: Code duplicated, block: B:66:0x0113  */
    /* JADX WARN: Code duplicated, block: B:69:0x011b  */
    /* JADX WARN: Code duplicated, block: B:71:0x012f  */
    /* JADX WARN: Code duplicated, block: B:72:0x0132  */
    /* JADX WARN: Code duplicated, block: B:77:0x0159  */
    /* JADX WARN: Code duplicated, block: B:79:0x0161  */
    /* JADX WARN: Code duplicated, block: B:80:0x016b  */
    /* JADX WARN: Code duplicated, block: B:83:0x017f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0181  */
    /* JADX WARN: Code duplicated, block: B:86:0x0185  */
    /* JADX WARN: Code duplicated, block: B:88:0x0192  */
    /* JADX WARN: Code duplicated, block: B:91:0x019a  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a4  */
    public final void x0(Object obj, int i2, Object obj2, int i3) {
        long jRotateLeft;
        boolean z;
        boolean z2;
        GapPending gapPending;
        GapPending gapPending2;
        ArrayList arrayList;
        MutableIntObjectMap mutableIntObjectMap;
        int i4;
        Object objValueOf;
        MutableScatterMap mutableScatterMap;
        Object objE;
        MutableObjectList mutableObjectList;
        SlotWriter slotWriter;
        Object obj3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        SlotReader slotReader;
        int[] iArr;
        ArrayList arrayList2;
        int i10;
        int i11;
        int i12;
        int i13;
        SlotWriter slotWriter2;
        int i14;
        GapPending gapPending3;
        Object obj4 = obj;
        if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
        }
        int i15 = this.m;
        Object obj5 = Composer.Companion.f7939a;
        if (obj4 == null) {
            if (obj2 == null || i2 != 207 || obj2.equals(obj5)) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) i2), 3) ^ ((long) i15);
            } else {
                this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) obj2.hashCode()), 3) ^ ((long) i15);
            }
            if (obj4 == null) {
                this.m++;
            }
            GroupKind.f8183a.getClass();
            if (i3 != 0) {
                z = true;
            } else {
                z = false;
            }
            if (this.S) {
                this.G.f8207k++;
                slotWriter2 = this.I;
                i14 = slotWriter2.t;
                if (z) {
                    slotWriter2.S(obj5, obj5, true, i2);
                } else if (obj2 != null) {
                    if (obj4 == null) {
                        obj4 = obj5;
                    }
                    slotWriter2.S(obj4, obj2, false, i2);
                } else {
                    if (obj4 == null) {
                        obj4 = obj5;
                    }
                    slotWriter2.S(obj4, obj5, false, i2);
                }
                gapPending3 = this.f7983j;
                if (gapPending3 != null) {
                    KeyInfo keyInfo = new KeyInfo(i2, -1, (-2) - i14, -1, 0);
                    gapPending3.f7998e.i(keyInfo.f8196c, new GroupInfo(-1, this.f7984k - gapPending3.f7996b, 0));
                    gapPending3.d.add(keyInfo);
                }
                d0(z, null);
                return;
            }
            if (i3 != GroupKind.f8184b && this.y) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.f7983j == null) {
                int iG = this.G.g();
                if (z2 && iG == i2) {
                    SlotReader slotReader2 = this.G;
                    int i16 = slotReader2.g;
                    if (Intrinsics.c(obj4, i16 < slotReader2.f8204h ? slotReader2.p(i16, slotReader2.f8200b) : null)) {
                        A0(obj2, z);
                    } else {
                        slotReader = this.G;
                        iArr = slotReader.f8200b;
                        arrayList2 = new ArrayList();
                        if (slotReader.f8207k <= 0) {
                            i10 = slotReader.g;
                            i11 = 0;
                            while (i10 < slotReader.f8204h) {
                                int i17 = i10 * 5;
                                int i18 = iArr[i17];
                                Object objP = slotReader.p(i10, iArr);
                                i12 = iArr[i17 + 1];
                                if ((i12 & 1073741824) != 0) {
                                    i13 = 1;
                                } else {
                                    i13 = i12 & 67108863;
                                }
                                int i19 = i10;
                                arrayList2.add(new KeyInfo(i18, objP, i19, i13, i11));
                                i10 = iArr[i17 + 3] + i19;
                                i11++;
                            }
                        }
                        this.f7983j = new GapPending(arrayList2, this.f7984k);
                    }
                } else {
                    slotReader = this.G;
                    iArr = slotReader.f8200b;
                    arrayList2 = new ArrayList();
                    if (slotReader.f8207k <= 0) {
                        i10 = slotReader.g;
                        i11 = 0;
                        while (i10 < slotReader.f8204h) {
                            int i110 = i10 * 5;
                            int i111 = iArr[i110];
                            Object objP2 = slotReader.p(i10, iArr);
                            i12 = iArr[i110 + 1];
                            if ((i12 & 1073741824) != 0) {
                                i13 = 1;
                            } else {
                                i13 = i12 & 67108863;
                            }
                            int i112 = i10;
                            arrayList2.add(new KeyInfo(i111, objP2, i112, i13, i11));
                            i10 = iArr[i110 + 3] + i112;
                            i11++;
                        }
                    }
                    this.f7983j = new GapPending(arrayList2, this.f7984k);
                }
            }
            gapPending = this.f7983j;
            if (gapPending != null) {
                arrayList = gapPending.d;
                mutableIntObjectMap = gapPending.f7998e;
                i4 = gapPending.f7996b;
                if (obj4 != null) {
                    objValueOf = new JoinedKey(Integer.valueOf(i2), obj4);
                } else {
                    objValueOf = Integer.valueOf(i2);
                }
                mutableScatterMap = ((MultiValueMap) gapPending.f7999f.getF71699b()).f8164a;
                objE = mutableScatterMap.e(objValueOf);
                if (objE == null) {
                    objE = null;
                } else if (objE instanceof MutableObjectList) {
                    mutableObjectList = (MutableObjectList) objE;
                    Object objM = mutableObjectList.m(0);
                    if (mutableObjectList.d()) {
                        mutableScatterMap.m(objValueOf);
                    }
                    if (mutableObjectList.f3346b == 1) {
                        mutableScatterMap.o(objValueOf, mutableObjectList.a());
                    }
                    objE = objM;
                } else {
                    mutableScatterMap.m(objValueOf);
                }
                KeyInfo keyInfo2 = (KeyInfo) objE;
                if (!z2 || keyInfo2 == null) {
                    this.G.f8207k++;
                    this.S = true;
                    this.K = null;
                    if (this.I.w) {
                        SlotWriter slotWriterO = this.H.o();
                        this.I = slotWriterO;
                        slotWriterO.O();
                        this.J = false;
                        this.K = null;
                    }
                    this.I.d();
                    slotWriter = this.I;
                    int i20 = slotWriter.t;
                    if (z) {
                        slotWriter.S(obj5, obj5, true, i2);
                    } else if (obj2 != null) {
                        if (obj != null) {
                            obj5 = obj;
                        }
                        slotWriter.S(obj5, obj2, false, i2);
                    } else {
                        if (obj == null) {
                            obj3 = obj5;
                        } else {
                            obj3 = obj;
                        }
                        slotWriter.S(obj3, obj5, false, i2);
                    }
                    this.N = this.I.b(i20);
                    KeyInfo keyInfo3 = new KeyInfo(i2, -1, (-2) - i20, -1, 0);
                    mutableIntObjectMap.i(keyInfo3.f8196c, new GroupInfo(-1, this.f7984k - i4, 0));
                    arrayList.add(keyInfo3);
                    gapPending2 = new GapPending(new ArrayList(), z ? 0 : this.f7984k);
                } else {
                    int i21 = keyInfo2.f8196c;
                    arrayList.add(keyInfo2);
                    GroupInfo groupInfo = (GroupInfo) mutableIntObjectMap.b(i21);
                    this.f7984k = (groupInfo != null ? groupInfo.f8181b : -1) + i4;
                    GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(i21);
                    int i22 = groupInfo2 != null ? groupInfo2.f8180a : -1;
                    int i23 = gapPending.f7997c;
                    int i24 = i22 - i23;
                    int i25 = 8;
                    if (i22 <= i23) {
                        i5 = i24;
                        if (i23 > i22) {
                            Object[] objArr = mutableIntObjectMap.f3260c;
                            long[] jArr = mutableIntObjectMap.f3258a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i26 = 0;
                                while (true) {
                                    long j2 = jArr[i26];
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i27 = 8 - ((~(i26 - length)) >>> 31);
                                        int i28 = 0;
                                        while (i28 < i27) {
                                            if ((j2 & 255) >= 128) {
                                                i7 = i22;
                                            } else {
                                                GroupInfo groupInfo3 = (GroupInfo) objArr[(i26 << 3) + i28];
                                                int i29 = groupInfo3.f8180a;
                                                if (i29 == i22) {
                                                    groupInfo3.f8180a = i23;
                                                    i7 = i22;
                                                } else {
                                                    i7 = i22;
                                                    if (i7 + 1 <= i29 && i29 < i23) {
                                                        groupInfo3.f8180a = i29 - 1;
                                                    }
                                                }
                                            }
                                            j2 >>= 8;
                                            i28++;
                                            i22 = i7;
                                        }
                                        i6 = i22;
                                        if (i27 != 8) {
                                            break;
                                        }
                                    } else {
                                        i6 = i22;
                                    }
                                    if (i26 == length) {
                                        break;
                                    }
                                    i26++;
                                    i22 = i6;
                                }
                            }
                        }
                    } else {
                        Object[] objArr2 = mutableIntObjectMap.f3260c;
                        long[] jArr2 = mutableIntObjectMap.f3258a;
                        int length2 = jArr2.length - 2;
                        if (length2 >= 0) {
                            int i30 = 0;
                            while (true) {
                                long j3 = jArr2[i30];
                                int i31 = length2;
                                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i32 = 8 - ((~(i30 - i31)) >>> 31);
                                    int i33 = 0;
                                    while (i33 < i32) {
                                        if ((j3 & 255) < 128) {
                                            i9 = i25;
                                            GroupInfo groupInfo4 = (GroupInfo) objArr2[(i30 << 3) + i33];
                                            i8 = i24;
                                            int i34 = groupInfo4.f8180a;
                                            if (i34 == i22) {
                                                groupInfo4.f8180a = i23;
                                            } else if (i23 <= i34 && i34 < i22) {
                                                groupInfo4.f8180a = i34 + 1;
                                            }
                                        } else {
                                            i8 = i24;
                                            i9 = i25;
                                        }
                                        j3 >>= i9;
                                        i33++;
                                        i24 = i8;
                                        i25 = i9;
                                    }
                                    i5 = i24;
                                    if (i32 != i25) {
                                        break;
                                    }
                                } else {
                                    i5 = i24;
                                }
                                if (i30 == i31) {
                                    break;
                                }
                                i30++;
                                length2 = i31;
                                i24 = i5;
                                i25 = 8;
                            }
                        } else {
                            i5 = i24;
                        }
                    }
                    ComposerChangeListWriter composerChangeListWriter = this.M;
                    composerChangeListWriter.f8240f = (i21 - composerChangeListWriter.f8236a.G.g) + composerChangeListWriter.f8240f;
                    this.G.r(i21);
                    if (i5 > 0) {
                        composerChangeListWriter.d(false);
                        composerChangeListWriter.e();
                        Operations operations = composerChangeListWriter.f8237b.f8235a;
                        operations.d(Operation.MoveCurrentGroup.f8266c);
                        operations.f8289c[operations.d - operations.f8287a[operations.f8288b - 1].f8247a] = i5;
                    }
                    A0(obj2, z);
                    gapPending2 = null;
                }
            } else {
                gapPending2 = null;
            }
            d0(z, gapPending2);
        }
        jRotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ ((long) (obj4 instanceof Enum ? ((Enum) obj4).ordinal() : obj4.hashCode())), 3);
        this.T = jRotateLeft;
        if (obj4 == null) {
            this.m++;
        }
        GroupKind.f8183a.getClass();
        if (i3 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.S) {
            this.G.f8207k++;
            slotWriter2 = this.I;
            i14 = slotWriter2.t;
            if (z) {
                slotWriter2.S(obj5, obj5, true, i2);
            } else if (obj2 != null) {
                if (obj4 == null) {
                    obj4 = obj5;
                }
                slotWriter2.S(obj4, obj2, false, i2);
            } else {
                if (obj4 == null) {
                    obj4 = obj5;
                }
                slotWriter2.S(obj4, obj5, false, i2);
            }
            gapPending3 = this.f7983j;
            if (gapPending3 != null) {
                KeyInfo keyInfo4 = new KeyInfo(i2, -1, (-2) - i14, -1, 0);
                gapPending3.f7998e.i(keyInfo4.f8196c, new GroupInfo(-1, this.f7984k - gapPending3.f7996b, 0));
                gapPending3.d.add(keyInfo4);
            }
            d0(z, null);
            return;
        }
        if (i3 != GroupKind.f8184b) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (this.f7983j == null) {
            int iG2 = this.G.g();
            if (z2) {
                slotReader = this.G;
                iArr = slotReader.f8200b;
                arrayList2 = new ArrayList();
                if (slotReader.f8207k <= 0) {
                    i10 = slotReader.g;
                    i11 = 0;
                    while (i10 < slotReader.f8204h) {
                        int i113 = i10 * 5;
                        int i114 = iArr[i113];
                        Object objP3 = slotReader.p(i10, iArr);
                        i12 = iArr[i113 + 1];
                        if ((i12 & 1073741824) != 0) {
                            i13 = 1;
                        } else {
                            i13 = i12 & 67108863;
                        }
                        int i115 = i10;
                        arrayList2.add(new KeyInfo(i114, objP3, i115, i13, i11));
                        i10 = iArr[i113 + 3] + i115;
                        i11++;
                    }
                }
                this.f7983j = new GapPending(arrayList2, this.f7984k);
            } else {
                slotReader = this.G;
                iArr = slotReader.f8200b;
                arrayList2 = new ArrayList();
                if (slotReader.f8207k <= 0) {
                    i10 = slotReader.g;
                    i11 = 0;
                    while (i10 < slotReader.f8204h) {
                        int i116 = i10 * 5;
                        int i117 = iArr[i116];
                        Object objP4 = slotReader.p(i10, iArr);
                        i12 = iArr[i116 + 1];
                        if ((i12 & 1073741824) != 0) {
                            i13 = 1;
                        } else {
                            i13 = i12 & 67108863;
                        }
                        int i118 = i10;
                        arrayList2.add(new KeyInfo(i117, objP4, i118, i13, i11));
                        i10 = iArr[i116 + 3] + i118;
                        i11++;
                    }
                }
                this.f7983j = new GapPending(arrayList2, this.f7984k);
            }
        }
        gapPending = this.f7983j;
        if (gapPending != null) {
            arrayList = gapPending.d;
            mutableIntObjectMap = gapPending.f7998e;
            i4 = gapPending.f7996b;
            if (obj4 != null) {
                objValueOf = new JoinedKey(Integer.valueOf(i2), obj4);
            } else {
                objValueOf = Integer.valueOf(i2);
            }
            mutableScatterMap = ((MultiValueMap) gapPending.f7999f.getF71699b()).f8164a;
            objE = mutableScatterMap.e(objValueOf);
            if (objE == null) {
                objE = null;
            } else if (objE instanceof MutableObjectList) {
                mutableObjectList = (MutableObjectList) objE;
                Object objM2 = mutableObjectList.m(0);
                if (mutableObjectList.d()) {
                    mutableScatterMap.m(objValueOf);
                }
                if (mutableObjectList.f3346b == 1) {
                    mutableScatterMap.o(objValueOf, mutableObjectList.a());
                }
                objE = objM2;
            } else {
                mutableScatterMap.m(objValueOf);
            }
            KeyInfo keyInfo5 = (KeyInfo) objE;
            if (z2) {
            }
            this.G.f8207k++;
            this.S = true;
            this.K = null;
            if (this.I.w) {
                SlotWriter slotWriterO2 = this.H.o();
                this.I = slotWriterO2;
                slotWriterO2.O();
                this.J = false;
                this.K = null;
            }
            this.I.d();
            slotWriter = this.I;
            int i210 = slotWriter.t;
            if (z) {
                slotWriter.S(obj5, obj5, true, i2);
            } else if (obj2 != null) {
                if (obj != null) {
                    obj5 = obj;
                }
                slotWriter.S(obj5, obj2, false, i2);
            } else {
                if (obj == null) {
                    obj3 = obj5;
                } else {
                    obj3 = obj;
                }
                slotWriter.S(obj3, obj5, false, i2);
            }
            this.N = this.I.b(i210);
            KeyInfo keyInfo6 = new KeyInfo(i2, -1, (-2) - i210, -1, 0);
            mutableIntObjectMap.i(keyInfo6.f8196c, new GroupInfo(-1, this.f7984k - i4, 0));
            arrayList.add(keyInfo6);
            gapPending2 = new GapPending(new ArrayList(), z ? 0 : this.f7984k);
        } else {
            gapPending2 = null;
        }
        d0(z, gapPending2);
    }

    @Override // androidx.compose.runtime.Composer
    public final boolean y(Object obj) {
        if (k0() == obj) {
            return false;
        }
        G0(obj);
        return true;
    }

    public final void y0() {
        GroupKind.f8183a.getClass();
        x0(null, -127, null, 0);
    }

    @Override // androidx.compose.runtime.Composer
    public final void z(Object obj) {
        if (!this.S && this.G.g() == 207 && !Intrinsics.c(this.G.f(), obj) && this.z < 0) {
            this.z = this.G.g;
            this.y = true;
        }
        GroupKind.f8183a.getClass();
        x0(null, 207, obj, 0);
    }

    public final void z0(int i2, Object obj) {
        GroupKind.f8183a.getClass();
        x0(obj, i2, null, 0);
    }
}
