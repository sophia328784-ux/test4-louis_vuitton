package androidx.compose.ui.layout;

import android.view.ViewGroup;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.foundation.lazy.layout.a;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PausableComposition;
import androidx.compose.runtime.PausedComposition;
import androidx.compose.runtime.ReusableComposition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.batch.android.q0.b;
import defpackage.fc;
import defpackage.v40;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;", "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;", "Landroidx/compose/ui/node/LayoutNode;", "root", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "slotReusePolicy", "<init>", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V", "NodeState", "Scope", "ApproachMeasureScopeImpl", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutNodeSubcompositionsState implements ComposeNodeLifecycleCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutNode f9479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CompositionContext f9480c;
    public SubcomposeSlotReusePolicy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9482f;
    public int o;
    public int p;
    public final MutableScatterMap g = ScatterMapKt.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableScatterMap f9483h = ScatterMapKt.b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Scope f9484i = new Scope();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ApproachMeasureScopeImpl f9485j = new ApproachMeasureScopeImpl();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableScatterMap f9486k = ScatterMapKt.b();
    public final SubcomposeSlotReusePolicy.SlotIdsSet l = new SubcomposeSlotReusePolicy.SlotIdsSet(null, 1, null);
    public final MutableScatterMap m = ScatterMapKt.b();
    public final MutableVector n = new MutableVector(new Object[16], 0);
    public final String q = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "<init>", "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ApproachMeasureScopeImpl implements SubcomposeMeasureScope, MeasureScope {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Scope f9487b;

        public ApproachMeasureScopeImpl() {
            this.f9487b = LayoutNodeSubcompositionsState.this.f9484i;
        }

        @Override // androidx.compose.ui.unit.Density
        public final int B0(float f2) {
            return this.f9487b.B0(f2);
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult B1(int i2, int i3, Map map, Function1 function1, Function1 function2) {
            return this.f9487b.B1(i2, i3, map, function1, function2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float E0(long j2) {
            return this.f9487b.E0(j2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long K1(long j2) {
            return this.f9487b.K1(j2);
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public final List N(Object obj, Function2 function2) {
            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState.f9483h;
            LayoutNode layoutNode = layoutNodeSubcompositionsState.f9479b;
            LayoutNode layoutNode2 = (LayoutNode) mutableScatterMap.e(obj);
            if (layoutNode2 != null && layoutNode.I().indexOf(layoutNode2) < layoutNodeSubcompositionsState.f9481e) {
                return layoutNode2.G();
            }
            MutableScatterMap mutableScatterMap2 = layoutNodeSubcompositionsState.m;
            MutableScatterMap mutableScatterMap3 = layoutNodeSubcompositionsState.f9483h;
            MutableScatterMap mutableScatterMap4 = layoutNodeSubcompositionsState.f9486k;
            MutableVector mutableVector = layoutNodeSubcompositionsState.n;
            if (mutableVector.d < layoutNodeSubcompositionsState.f9482f) {
                InlineClassHelperKt.a("Error: currentApproachIndex cannot be greater than the size of theapproachComposedSlotIds list.");
            }
            LayoutNode layoutNode3 = (LayoutNode) mutableScatterMap3.e(obj);
            int i2 = mutableVector.d;
            int i3 = layoutNodeSubcompositionsState.f9482f;
            if (i2 == i3) {
                mutableVector.b(obj);
            } else {
                Object[] objArr = mutableVector.f8165b;
                Object obj2 = objArr[i3];
                objArr[i3] = obj;
            }
            layoutNodeSubcompositionsState.f9482f++;
            boolean zB = mutableScatterMap4.b(obj);
            if (zB || layoutNode3 != null) {
                if (!zB && layoutNode3 != null) {
                    layoutNodeSubcompositionsState.k(layoutNode.I().indexOf(layoutNode3), layoutNode.I().size());
                    layoutNodeSubcompositionsState.p++;
                    mutableScatterMap3.m(obj);
                    mutableScatterMap4.o(obj, layoutNode3);
                    mutableScatterMap2.o(obj, layoutNodeSubcompositionsState.f(obj));
                    if (layoutNode.c()) {
                        layoutNodeSubcompositionsState.i();
                    }
                }
                LayoutNode layoutNode4 = (LayoutNode) mutableScatterMap4.e(obj);
                NodeState nodeState = layoutNode4 != null ? (NodeState) layoutNodeSubcompositionsState.g.e(layoutNode4) : null;
                if (nodeState != null && nodeState.d) {
                    layoutNodeSubcompositionsState.n(layoutNode4, obj, false, function2);
                }
                if ((nodeState != null ? nodeState.f9493f : null) != null) {
                    layoutNodeSubcompositionsState.c(nodeState, true);
                }
            } else {
                layoutNodeSubcompositionsState.l(obj, function2, false);
                mutableScatterMap2.o(obj, layoutNodeSubcompositionsState.f(obj));
            }
            LayoutNode layoutNode5 = (LayoutNode) mutableScatterMap4.e(obj);
            if (layoutNode5 == null) {
                return EmptyList.f71768b;
            }
            List listT0 = layoutNode5.I.p.t0();
            int size = listT0.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((MeasurePassDelegate) listT0.get(i4)).g.f9707b = true;
            }
            return listT0;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final long Q(float f2) {
            return this.f9487b.Q(f2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long R(long j2) {
            return this.f9487b.R(j2);
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult V0(int i2, int i3, Map map, Function1 function1) {
            return this.f9487b.B1(i2, i3, map, null, function1);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float Z(long j2) {
            return this.f9487b.Z(j2);
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity */
        public final float getF11002b() {
            return this.f9487b.f9496c;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        /* JADX INFO: renamed from: getLayoutDirection */
        public final LayoutDirection getF9421c() {
            return this.f9487b.f9495b;
        }

        @Override // androidx.compose.ui.unit.Density
        public final long j0(float f2) {
            return this.f9487b.j0(f2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float k1(int i2) {
            return this.f9487b.k1(i2);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float l1(float f2) {
            return this.f9487b.l1(f2);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1 */
        public final float getF11003c() {
            return this.f9487b.d;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final boolean u0() {
            return this.f9487b.u0();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float u1(float f2) {
            return this.f9487b.getF11002b() * f2;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "<init>", "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Scope implements SubcomposeMeasureScope {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LayoutDirection f9495b = LayoutDirection.Rtl;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f9496c;
        public float d;

        public Scope() {
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult B1(final int i2, final int i3, final Map map, final Function1 function1, final Function1 function2) {
            if ((i2 & b.v) != 0 || ((-16777216) & i3) != 0) {
                InlineClassHelperKt.c("Size(" + i2 + " x " + i3 + ") is out of range. Each dimension must be between 0 and 16777215.");
            }
            final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$Scope$layout$1
                @Override // androidx.compose.ui.layout.MeasureResult
                /* JADX INFO: renamed from: getHeight, reason: from getter */
                public final int getF9499b() {
                    return i3;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                /* JADX INFO: renamed from: getWidth, reason: from getter */
                public final int getF9498a() {
                    return i2;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                /* JADX INFO: renamed from: j, reason: from getter */
                public final Map getF9500c() {
                    return map;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public final void k() {
                    LookaheadDelegate lookaheadDelegate;
                    boolean zU0 = this.u0();
                    Function1 function3 = function2;
                    LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                    if (!zU0 || (lookaheadDelegate = layoutNodeSubcompositionsState2.f9479b.H.f9772c.t0) == null) {
                        function3.invoke(layoutNodeSubcompositionsState2.f9479b.H.f9772c.m);
                    } else {
                        function3.invoke(lookaheadDelegate.m);
                    }
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                /* JADX INFO: renamed from: l, reason: from getter */
                public final Function1 getD() {
                    return function1;
                }
            };
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public final List N(Object obj, Function2 function2) {
            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            layoutNodeSubcompositionsState.i();
            LayoutNode layoutNode = layoutNodeSubcompositionsState.f9479b;
            LayoutNode.LayoutState layoutState = layoutNode.I.d;
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Measuring;
            if (layoutState != layoutState2 && layoutState != LayoutNode.LayoutState.LayingOut && layoutState != LayoutNode.LayoutState.LookaheadMeasuring && layoutState != LayoutNode.LayoutState.LookaheadLayingOut) {
                InlineClassHelperKt.c("subcompose can only be used inside the measure or layout blocks");
            }
            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState.f9483h;
            Object objE = mutableScatterMap.e(obj);
            if (objE == null) {
                objE = (LayoutNode) layoutNodeSubcompositionsState.f9486k.m(obj);
                if (objE != null) {
                    if (layoutNodeSubcompositionsState.p <= 0) {
                        InlineClassHelperKt.c("Check failed.");
                    }
                    layoutNodeSubcompositionsState.p--;
                } else {
                    objE = layoutNodeSubcompositionsState.o(obj);
                    if (objE == null) {
                        int i2 = layoutNodeSubcompositionsState.f9481e;
                        LayoutNode layoutNode2 = new LayoutNode(true, 0, 2, null);
                        layoutNode.s = true;
                        layoutNode.U(i2, layoutNode2);
                        layoutNode.s = false;
                        objE = layoutNode2;
                    }
                }
                mutableScatterMap.o(obj, objE);
            }
            LayoutNode layoutNode3 = (LayoutNode) objE;
            if (CollectionsKt.G(layoutNodeSubcompositionsState.f9481e, layoutNode.I()) != layoutNode3) {
                int iIndexOf = layoutNode.I().indexOf(layoutNode3);
                if (iIndexOf < layoutNodeSubcompositionsState.f9481e) {
                    InlineClassHelperKt.a("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
                }
                int i3 = layoutNodeSubcompositionsState.f9481e;
                if (i3 != iIndexOf) {
                    layoutNodeSubcompositionsState.k(iIndexOf, i3);
                }
            }
            layoutNodeSubcompositionsState.f9481e++;
            layoutNodeSubcompositionsState.n(layoutNode3, obj, false, function2);
            return (layoutState == layoutState2 || layoutState == LayoutNode.LayoutState.LayingOut) ? layoutNode3.G() : layoutNode3.F();
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: getDensity, reason: from getter */
        public final float getF11002b() {
            return this.f9496c;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        /* JADX INFO: renamed from: getLayoutDirection, reason: from getter */
        public final LayoutDirection getF9421c() {
            return this.f9495b;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* JADX INFO: renamed from: s1, reason: from getter */
        public final float getF11003c() {
            return this.d;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final boolean u0() {
            LayoutNode.LayoutState layoutState = LayoutNodeSubcompositionsState.this.f9479b.I.d;
            return layoutState == LayoutNode.LayoutState.LookaheadLayingOut || layoutState == LayoutNode.LayoutState.LookaheadMeasuring;
        }
    }

    public LayoutNodeSubcompositionsState(LayoutNode layoutNode, SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.f9479b = layoutNode;
        this.d = subcomposeSlotReusePolicy;
    }

    public static final void b(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, Object obj) {
        LayoutNode layoutNode = layoutNodeSubcompositionsState.f9479b;
        layoutNodeSubcompositionsState.i();
        LayoutNode layoutNode2 = (LayoutNode) layoutNodeSubcompositionsState.f9486k.m(obj);
        if (layoutNode2 != null) {
            if (layoutNodeSubcompositionsState.p <= 0) {
                InlineClassHelperKt.c("No pre-composed items to dispose");
            }
            int iIndexOf = layoutNode.I().indexOf(layoutNode2);
            if (iIndexOf < layoutNode.I().size() - layoutNodeSubcompositionsState.p) {
                InlineClassHelperKt.c("Item is not in pre-composed item range");
            }
            layoutNodeSubcompositionsState.o++;
            layoutNodeSubcompositionsState.p--;
            NodeState nodeState = (NodeState) layoutNodeSubcompositionsState.g.e(layoutNode2);
            if (nodeState != null) {
                e(nodeState);
            }
            int size = (layoutNode.I().size() - layoutNodeSubcompositionsState.p) - layoutNodeSubcompositionsState.o;
            layoutNodeSubcompositionsState.k(iIndexOf, size);
            layoutNodeSubcompositionsState.g(size);
        }
        if (layoutNodeSubcompositionsState.n.l(obj)) {
            LayoutNode.m0(layoutNode, true, 6);
        }
    }

    public static void e(NodeState nodeState) {
        PausedComposition pausedComposition = nodeState.f9493f;
        if (pausedComposition != null) {
            pausedComposition.cancel();
            nodeState.f9493f = null;
            ReusableComposition reusableComposition = nodeState.f9491c;
            if (reusableComposition != null) {
                reusableComposition.dispose();
            }
            nodeState.f9491c = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x004f A[LOOP:0: B:5:0x0014->B:17:0x004f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052 A[EDGE_INSN: B:21:0x0052->B:18:0x0052 BREAK  A[LOOP:0: B:5:0x0014->B:17:0x004f], SYNTHETIC] */
    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        ReusableComposition reusableComposition;
        LayoutNode layoutNode = this.f9479b;
        layoutNode.s = true;
        MutableScatterMap mutableScatterMap = this.g;
        Object[] objArr = mutableScatterMap.f3363c;
        long[] jArr = mutableScatterMap.f3361a;
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
                        if ((255 & j2) < 128 && (reusableComposition = ((NodeState) objArr[(i2 << 3) + i4]).f9491c) != null) {
                            reusableComposition.dispose();
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
        layoutNode.g0();
        layoutNode.s = false;
        mutableScatterMap.h();
        this.f9483h.h();
        this.p = 0;
        this.o = 0;
        this.f9486k.h();
        i();
    }

    public final void c(NodeState nodeState, boolean z) {
        PausedComposition pausedComposition = nodeState.f9493f;
        if (pausedComposition != null) {
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 function1E = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                LayoutNode layoutNode = this.f9479b;
                layoutNode.s = true;
                if (z) {
                    while (!pausedComposition.a()) {
                        try {
                            pausedComposition.b(new v40(3));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                pausedComposition.apply();
                nodeState.f9493f = null;
                layoutNode.s = false;
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            } catch (Throwable th2) {
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void d() {
        j(true);
    }

    public final SubcomposeLayoutState.PrecomposedSlotHandle f(final Object obj) {
        return !this.f9479b.c() ? new LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$1() : new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final MutableIntSet f9511a = IntSetKt.a();

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final long a(int i2) {
                LayoutNode layoutNode = (LayoutNode) this.f9512b.f9486k.e(obj);
                if (layoutNode != null && layoutNode.c()) {
                    int size = layoutNode.H().size();
                    if (i2 < 0 || i2 >= size) {
                        InlineClassHelperKt.e("Index (" + i2 + ") is out of bound of [0, " + size + ')');
                    }
                    if (this.f9511a.a(i2)) {
                        int i3 = ((LayoutNode) layoutNode.H().get(i2)).I.p.f9548b;
                        long j2 = (((long) ((LayoutNode) layoutNode.H().get(i2)).I.p.f9549c) & BodyPartID.bodyIdMax) | (((long) i3) << 32);
                        IntSize.Companion companion = IntSize.f11020b;
                        return j2;
                    }
                }
                IntSize.f11020b.getClass();
                return 0L;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final int b() {
                LayoutNode layoutNode = (LayoutNode) this.f9512b.f9486k.e(obj);
                if (layoutNode != null) {
                    return layoutNode.H().size();
                }
                return 0;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void c(a aVar) {
                NodeChain nodeChain;
                LayoutNode layoutNode = (LayoutNode) this.f9512b.f9486k.e(obj);
                Modifier.Node node = (layoutNode == null || (nodeChain = layoutNode.H) == null) ? null : nodeChain.f9774f;
                if (node == null || !node.o) {
                    return;
                }
                TraversableNodeKt.e(node, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", aVar);
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void d(int i2, long j2) {
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f9512b;
                LayoutNode layoutNode = (LayoutNode) layoutNodeSubcompositionsState.f9486k.e(obj);
                if (layoutNode == null || !layoutNode.c()) {
                    return;
                }
                int size = layoutNode.H().size();
                if (i2 < 0 || i2 >= size) {
                    InlineClassHelperKt.e("Index (" + i2 + ") is out of bound of [0, " + size + ')');
                }
                if (layoutNode.A()) {
                    InlineClassHelperKt.a("Pre-measure called on node that is not placed");
                }
                LayoutNode layoutNode2 = layoutNodeSubcompositionsState.f9479b;
                layoutNode2.s = true;
                LayoutNodeKt.a(layoutNode).y((LayoutNode) layoutNode.H().get(i2), j2);
                layoutNode2.s = false;
                this.f9511a.b(i2);
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void dispose() {
                LayoutNodeSubcompositionsState.b(this.f9512b, obj);
            }
        };
    }

    public final void g(int i2) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        this.o = 0;
        LayoutNode layoutNode = this.f9479b;
        List listI = layoutNode.I();
        boolean z4 = true;
        int size = (listI.size() - this.p) - 1;
        if (i2 <= size) {
            SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet = this.l;
            slotIdsSet.clear();
            MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.f9585b;
            MutableScatterMap mutableScatterMap = this.g;
            if (i2 <= size) {
                int i3 = i2;
                while (true) {
                    Object objE = mutableScatterMap.e((LayoutNode) listI.get(i3));
                    objE.getClass();
                    mutableOrderedScatterSet.b(((NodeState) objE).f9489a);
                    if (i3 == size) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.d.a(slotIdsSet);
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 function1E = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            boolean z5 = false;
            while (size >= i2) {
                try {
                    LayoutNode layoutNode2 = (LayoutNode) listI.get(size);
                    Object objE2 = mutableScatterMap.e(layoutNode2);
                    objE2.getClass();
                    NodeState nodeState = (NodeState) objE2;
                    Object obj = nodeState.f9489a;
                    if (mutableOrderedScatterSet.a(obj)) {
                        boolean z6 = z4;
                        this.o++;
                        if (((Boolean) ((SnapshotMutableStateImpl) nodeState.g).getF10755b()).booleanValue()) {
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.I;
                            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
                            LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
                            measurePassDelegate.m = usageByParent;
                            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                            if (lookaheadPassDelegate != null) {
                                lookaheadPassDelegate.f9734k = usageByParent;
                            }
                            m(nodeState, false);
                            if (nodeState.f9494h) {
                                z = z6;
                                z5 = z;
                            } else {
                                z = z6;
                            }
                            z2 = false;
                        } else {
                            z2 = z3;
                            z = z6;
                        }
                    } else {
                        layoutNode.s = z4;
                        mutableScatterMap.m(layoutNode2);
                        ReusableComposition reusableComposition = nodeState.f9491c;
                        if (reusableComposition != null) {
                            reusableComposition.dispose();
                        }
                        z = true;
                        layoutNode.h0(size, 1);
                        z2 = false;
                        layoutNode.s = false;
                    }
                    this.f9483h.m(obj);
                    size--;
                    boolean z7 = z2;
                    z4 = z;
                    z3 = z7;
                } catch (Throwable th) {
                    Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                    throw th;
                }
            }
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            z3 = z5;
        }
        if (z3) {
            Snapshot.f8462e.getClass();
            Snapshot.Companion.f();
        }
        i();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void h() {
        j(false);
    }

    public final void i() {
        int size = this.f9479b.I().size();
        MutableScatterMap mutableScatterMap = this.g;
        if (!(mutableScatterMap.f3364e == size)) {
            InlineClassHelperKt.a("Inconsistency between the count of nodes tracked by the state (" + mutableScatterMap.f3364e + ") and the children count on the SubcomposeLayout (" + size + "). Are you trying to use the state of the disposed SubcomposeLayout?");
        }
        if (!((size - this.o) - this.p >= 0)) {
            StringBuilder sbQ = fc.q(size, "Incorrect state. Total children ", ". Reusable children ");
            sbQ.append(this.o);
            sbQ.append(". Precomposed children ");
            sbQ.append(this.p);
            InlineClassHelperKt.a(sbQ.toString());
        }
        MutableScatterMap mutableScatterMap2 = this.f9486k;
        if (mutableScatterMap2.f3364e == this.p) {
            return;
        }
        InlineClassHelperKt.a("Incorrect state. Precomposed children " + this.p + ". Map size " + mutableScatterMap2.f3364e);
    }

    public final void j(boolean z) {
        this.p = 0;
        this.f9486k.h();
        List listI = this.f9479b.I();
        int size = listI.size();
        if (this.o != size) {
            this.o = size;
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 function1E = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            for (int i2 = 0; i2 < size; i2++) {
                try {
                    LayoutNode layoutNode = (LayoutNode) listI.get(i2);
                    NodeState nodeState = (NodeState) this.g.e(layoutNode);
                    if (nodeState != null && ((Boolean) ((SnapshotMutableStateImpl) nodeState.g).getF10755b()).booleanValue()) {
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
                        MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
                        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
                        measurePassDelegate.m = usageByParent;
                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                        if (lookaheadPassDelegate != null) {
                            lookaheadPassDelegate.f9734k = usageByParent;
                        }
                        m(nodeState, z);
                        nodeState.f9489a = SubcomposeLayoutKt.f9569a;
                    }
                } catch (Throwable th) {
                    Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                    throw th;
                }
            }
            Snapshot.Companion.e(snapshotA, snapshotB, function1E);
            this.f9483h.h();
        }
        i();
    }

    public final void k(int i2, int i3) {
        LayoutNode layoutNode = this.f9479b;
        layoutNode.s = true;
        layoutNode.c0(i2, i3, 1);
        layoutNode.s = false;
    }

    public final void l(Object obj, Function2 function2, boolean z) {
        LayoutNode layoutNode = this.f9479b;
        if (layoutNode.c()) {
            i();
            if (this.f9483h.c(obj)) {
                return;
            }
            this.m.m(obj);
            MutableScatterMap mutableScatterMap = this.f9486k;
            Object objE = mutableScatterMap.e(obj);
            if (objE == null) {
                objE = o(obj);
                if (objE != null) {
                    k(layoutNode.I().indexOf(objE), layoutNode.I().size());
                    this.p++;
                } else {
                    int size = layoutNode.I().size();
                    LayoutNode layoutNode2 = new LayoutNode(true, 0, 2, null);
                    layoutNode.s = true;
                    layoutNode.U(size, layoutNode2);
                    layoutNode.s = false;
                    this.p++;
                    objE = layoutNode2;
                }
                mutableScatterMap.o(obj, objE);
            }
            n((LayoutNode) objE, obj, z, function2);
        }
    }

    public final void m(final NodeState nodeState, boolean z) {
        ReusableComposition reusableComposition;
        if (z || !nodeState.f9494h) {
            nodeState.g = SnapshotStateKt.g(Boolean.FALSE);
        } else {
            ((SnapshotMutableStateImpl) nodeState.g).setValue(Boolean.FALSE);
        }
        if (nodeState.f9493f != null) {
            e(nodeState);
            return;
        }
        if (z) {
            ReusableComposition reusableComposition2 = nodeState.f9491c;
            if (reusableComposition2 != null) {
                reusableComposition2.deactivate();
                return;
            }
            return;
        }
        OutOfFrameExecutor outOfFrameExecutor = LayoutNodeKt.a(this.f9479b).getOutOfFrameExecutor();
        if (outOfFrameExecutor != null) {
            outOfFrameExecutor.u(new Function0<Unit>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$deactivateOutOfFrame$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    ReusableComposition reusableComposition3;
                    LayoutNodeSubcompositionsState.NodeState nodeState2 = nodeState;
                    if (!((Boolean) ((SnapshotMutableStateImpl) nodeState2.g).getF10755b()).booleanValue() && (reusableComposition3 = nodeState2.f9491c) != null) {
                        reusableComposition3.deactivate();
                    }
                    return Unit.f71739a;
                }
            });
        } else {
            if (nodeState.f9494h || (reusableComposition = nodeState.f9491c) == null) {
                return;
            }
            reusableComposition.deactivate();
        }
    }

    public final void n(LayoutNode layoutNode, Object obj, boolean z, Function2 function2) {
        CompositionImpl compositionImpl;
        LayoutNode layoutNode2 = this.f9479b;
        MutableScatterMap mutableScatterMap = this.g;
        Object objE = mutableScatterMap.e(layoutNode);
        if (objE == null) {
            ComposableSingletons$SubcomposeLayoutKt.f9444a.getClass();
            NodeState nodeState = new NodeState(obj, ComposableSingletons$SubcomposeLayoutKt.f9445b, null, 4, null);
            mutableScatterMap.o(layoutNode, nodeState);
            objE = nodeState;
        }
        final NodeState nodeState2 = (NodeState) objE;
        boolean z2 = nodeState2.f9490b != function2;
        if (nodeState2.f9493f != null) {
            if (z2) {
                e(nodeState2);
            } else if (z) {
                return;
            } else {
                c(nodeState2, true);
            }
        }
        ReusableComposition reusableComposition = nodeState2.f9491c;
        boolean zU = reusableComposition != null ? reusableComposition.u() : true;
        if (z2 || zU || nodeState2.d) {
            nodeState2.f9490b = function2;
            if (nodeState2.f9493f != null) {
                InlineClassHelperKt.a("new subcompose call while paused composition is still active");
            }
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 function1E = snapshotA != null ? snapshotA.getF8461f() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                layoutNode2.s = true;
                ReusableComposition reusableComposition2 = nodeState2.f9491c;
                CompositionContext compositionContext = this.f9480c;
                if (compositionContext == null) {
                    InlineClassHelperKt.d("parent composition reference not set");
                    throw new KotlinNothingValueException();
                }
                if (reusableComposition2 == null || reusableComposition2.isDisposed()) {
                    if (z) {
                        ViewGroup.LayoutParams layoutParams = Wrapper_androidKt.f10215a;
                        compositionImpl = new CompositionImpl(compositionContext, new UiApplier(layoutNode));
                    } else {
                        ViewGroup.LayoutParams layoutParams2 = Wrapper_androidKt.f10215a;
                        compositionImpl = new CompositionImpl(compositionContext, new UiApplier(layoutNode));
                    }
                    reusableComposition2 = compositionImpl;
                }
                nodeState2.f9491c = reusableComposition2;
                final Function2 composableLambdaImpl = nodeState2.f9490b;
                if (LayoutNodeKt.a(layoutNode2).getOutOfFrameExecutor() != null) {
                    nodeState2.f9494h = false;
                } else {
                    nodeState2.f9494h = true;
                    composableLambdaImpl = new ComposableLambdaImpl(1524156494, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$subcompose$4$1$composable$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
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
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            Composer composer = (Composer) obj2;
                            int iIntValue = ((Number) obj3).intValue();
                            if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) nodeState2.g).getF10755b();
                                boolean zBooleanValue = bool.booleanValue();
                                composer.z(bool);
                                boolean zB = composer.b(zBooleanValue);
                                if (zBooleanValue) {
                                    composableLambdaImpl.invoke(composer, 0);
                                } else {
                                    composer.g(zB);
                                }
                                composer.v();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    });
                }
                if (z) {
                    if (nodeState2.f9492e) {
                        nodeState2.f9493f = ((PausableComposition) reusableComposition2).v(composableLambdaImpl);
                    } else {
                        nodeState2.f9493f = ((PausableComposition) reusableComposition2).f(composableLambdaImpl);
                    }
                } else if (nodeState2.f9492e) {
                    reusableComposition2.s(composableLambdaImpl);
                } else {
                    reusableComposition2.h(composableLambdaImpl);
                }
                nodeState2.f9492e = false;
                layoutNode2.s = false;
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                nodeState2.d = false;
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                throw th;
            }
        }
    }

    public final LayoutNode o(Object obj) {
        MutableScatterMap mutableScatterMap;
        int i2;
        if (this.o == 0) {
            return null;
        }
        List listI = this.f9479b.I();
        int size = listI.size() - this.p;
        int i3 = size - this.o;
        int i4 = size - 1;
        int i5 = i4;
        while (true) {
            mutableScatterMap = this.g;
            if (i5 < i3) {
                i2 = -1;
                break;
            }
            Object objE = mutableScatterMap.e((LayoutNode) listI.get(i5));
            objE.getClass();
            if (Intrinsics.c(((NodeState) objE).f9489a, obj)) {
                i2 = i5;
                break;
            }
            i5--;
        }
        if (i2 == -1) {
            while (true) {
                if (i4 < i3) {
                    i5 = i4;
                    break;
                }
                Object objE2 = mutableScatterMap.e((LayoutNode) listI.get(i4));
                objE2.getClass();
                NodeState nodeState = (NodeState) objE2;
                Object obj2 = nodeState.f9489a;
                if (obj2 == SubcomposeLayoutKt.f9569a || this.d.b(obj, obj2)) {
                    nodeState.f9489a = obj;
                    i5 = i4;
                    i2 = i5;
                    break;
                }
                i4--;
            }
        }
        if (i2 == -1) {
            return null;
        }
        if (i5 != i3) {
            k(i5, i3);
        }
        this.o--;
        LayoutNode layoutNode = (LayoutNode) listI.get(i3);
        Object objE3 = mutableScatterMap.e(layoutNode);
        objE3.getClass();
        NodeState nodeState2 = (NodeState) objE3;
        nodeState2.g = SnapshotStateKt.g(Boolean.TRUE);
        nodeState2.f9492e = true;
        nodeState2.d = true;
        return layoutNode;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B0\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0011\u0010\u0006\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;", "", "slotId", "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "content", "Landroidx/compose/runtime/ReusableComposition;", "composition", "<init>", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ReusableComposition;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class NodeState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f9489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Function2 f9490b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ReusableComposition f9491c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f9492e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PausedComposition f9493f;
        public MutableState g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f9494h;

        public NodeState(Object obj, Function2<? super Composer, ? super Integer, Unit> function2, ReusableComposition reusableComposition) {
            this.f9489a = obj;
            this.f9490b = function2;
            this.f9491c = reusableComposition;
            this.g = SnapshotStateKt.g(Boolean.TRUE);
        }

        public /* synthetic */ NodeState(Object obj, Function2 function2, ReusableComposition reusableComposition, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i2 & 4) != 0 ? null : reusableComposition);
        }
    }
}
