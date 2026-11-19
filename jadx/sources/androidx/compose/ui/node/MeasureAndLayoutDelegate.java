package androidx.compose.ui.node;

import android.os.Trace;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/MeasureAndLayoutDelegate;", "", "Landroidx/compose/ui/node/LayoutNode;", "root", "<init>", "(Landroidx/compose/ui/node/LayoutNode;)V", "PostponedRequest", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MeasureAndLayoutDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f9743a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9745c;
    public boolean d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Constraints f9749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RootForTest.UncaughtExceptionHandler f9750j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DepthSortedSetsForDifferentPasses f9744b = new DepthSortedSetsForDifferentPasses(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OnPositionedDispatcher f9746e = new OnPositionedDispatcher();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableVector f9747f = new MutableVector(new Owner.OnLayoutCompletedListener[16], 0);
    public final long g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableVector f9748h = new MutableVector(new PostponedRequest[16], 0);

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;", "", "Landroidx/compose/ui/node/LayoutNode;", "node", "", "isLookahead", "isForced", "<init>", "(Landroidx/compose/ui/node/LayoutNode;ZZ)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PostponedRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LayoutNode f9751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f9752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f9753c;

        public PostponedRequest(LayoutNode layoutNode, boolean z, boolean z2) {
            this.f9751a = layoutNode;
            this.f9752b = z;
            this.f9753c = z2;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9754a;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LayoutNode.LayoutState.Idle.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f9754a = iArr;
        }
    }

    public MeasureAndLayoutDelegate(LayoutNode layoutNode) {
        this.f9743a = layoutNode;
    }

    public static final boolean a(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        Placeable.PlacementScope placementScope;
        InnerNodeCoordinator innerNodeCoordinator;
        LayoutNode layoutNodeO;
        LayoutNode layoutNode2 = measureAndLayoutDelegate.f9743a;
        boolean z2 = layoutNode.S;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        boolean zC = false;
        if (!z2 && k(layoutNode)) {
            if (layoutNode == layoutNode2) {
                constraints = measureAndLayoutDelegate.f9749i;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                zC = layoutNodeLayoutDelegate.f9709e ? c(layoutNode, constraints) : false;
                if ((zC || layoutNodeLayoutDelegate.f9710f) && Intrinsics.c(layoutNode.a0(), Boolean.TRUE)) {
                    layoutNode.b0();
                }
            } else {
                boolean zD = layoutNode.K() ? d(layoutNode, constraints) : false;
                if (layoutNode.J() && (layoutNode == layoutNode2 || ((layoutNodeO = layoutNode.O()) != null && layoutNodeO.A() && layoutNodeLayoutDelegate.p.v))) {
                    if (layoutNode == layoutNode2) {
                        if (layoutNode.E == LayoutNode.UsageByParent.NotUsed) {
                            layoutNode.u();
                        }
                        LayoutNode layoutNodeO2 = layoutNode.O();
                        if (layoutNodeO2 == null || (innerNodeCoordinator = layoutNodeO2.H.f9772c) == null || (placementScope = innerNodeCoordinator.m) == null) {
                            placementScope = LayoutNodeKt.a(layoutNode).getPlacementScope();
                        }
                        Placeable.PlacementScope.y(placementScope, layoutNodeLayoutDelegate.p, 0, 0);
                    } else {
                        layoutNode.i0();
                    }
                    OnPositionedDispatcher onPositionedDispatcher = measureAndLayoutDelegate.f9746e;
                    onPositionedDispatcher.getClass();
                    if (layoutNode.R > 0) {
                        onPositionedDispatcher.f9809a.b(layoutNode);
                        layoutNode.Q = true;
                    }
                }
                zC = zD;
            }
            measureAndLayoutDelegate.e();
        }
        return zC;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public static boolean c(LayoutNode layoutNode, Constraints constraints) throws Throwable {
        boolean zK0;
        LayoutNode layoutNode2 = layoutNode.f9694j;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        if (layoutNode2 == null) {
            return false;
        }
        if (constraints == null) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            Constraints constraints2 = lookaheadPassDelegate != null ? lookaheadPassDelegate.o : null;
            if (constraints2 == null || layoutNode2 == null) {
                zK0 = false;
            } else {
                lookaheadPassDelegate.getClass();
                zK0 = lookaheadPassDelegate.K0(constraints2.f10999a);
            }
        } else if (layoutNode2 != null) {
            LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate2.getClass();
            zK0 = lookaheadPassDelegate2.K0(constraints.f10999a);
        } else {
            zK0 = false;
        }
        LayoutNode layoutNodeO = layoutNode.O();
        if (zK0 && layoutNodeO != null) {
            if (layoutNodeO.f9694j == null) {
                LayoutNode.m0(layoutNodeO, false, 3);
                return zK0;
            }
            if (layoutNode.M() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.k0(layoutNodeO, false, 3);
                return zK0;
            }
            if (layoutNode.M() == LayoutNode.UsageByParent.InLayoutBlock) {
                layoutNodeO.j0(false);
            }
        }
        return zK0;
    }

    public static boolean d(LayoutNode layoutNode, Constraints constraints) throws Throwable {
        boolean zK0;
        if (constraints != null) {
            if (layoutNode.E == LayoutNode.UsageByParent.NotUsed) {
                layoutNode.t();
            }
            zK0 = layoutNode.I.p.K0(constraints.f10999a);
        } else {
            MeasurePassDelegate measurePassDelegate = layoutNode.I.p;
            Constraints constraints2 = measurePassDelegate.f9758k ? new Constraints(measurePassDelegate.f9550e) : null;
            if (constraints2 != null) {
                if (layoutNode.E == LayoutNode.UsageByParent.NotUsed) {
                    layoutNode.t();
                }
                zK0 = layoutNode.I.p.K0(constraints2.f10999a);
            } else {
                zK0 = false;
            }
        }
        LayoutNode layoutNodeO = layoutNode.O();
        if (zK0 && layoutNodeO != null) {
            if (layoutNode.L() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.m0(layoutNodeO, false, 3);
                return zK0;
            }
            if (layoutNode.L() == LayoutNode.UsageByParent.InLayoutBlock) {
                layoutNodeO.l0(false);
            }
        }
        return zK0;
    }

    public static boolean i(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        if (layoutNode.I.f9709e) {
            return (layoutNode.M() == LayoutNode.UsageByParent.NotUsed && ((lookaheadPassDelegate = layoutNode.I.q) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.t) == null || !lookaheadAlignmentLines.f())) ? false : true;
        }
        return false;
    }

    public static boolean j(LayoutNode layoutNode) {
        if (!layoutNode.K()) {
            return false;
        }
        do {
            if (layoutNode.L() == LayoutNode.UsageByParent.NotUsed && !layoutNode.I.p.z.f()) {
                LayoutNode layoutNodeO = layoutNode.O();
                if ((layoutNodeO != null ? layoutNodeO.I.d : null) != LayoutNode.LayoutState.Measuring) {
                    return false;
                }
            }
            layoutNode = layoutNode.O();
            if (layoutNode == null) {
                return false;
            }
        } while (!layoutNode.A());
        return true;
    }

    public static boolean k(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        boolean zA = layoutNode.A();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        return zA || layoutNodeLayoutDelegate.p.v || j(layoutNode) || Intrinsics.c(layoutNode.a0(), Boolean.TRUE) || i(layoutNode) || layoutNodeLayoutDelegate.p.z.f() || !((lookaheadPassDelegate = layoutNodeLayoutDelegate.q) == null || (lookaheadAlignmentLines = lookaheadPassDelegate.t) == null || !lookaheadAlignmentLines.f());
    }

    public final void b(boolean z) {
        OnPositionedDispatcher onPositionedDispatcher = this.f9746e;
        if (z) {
            MutableVector mutableVector = onPositionedDispatcher.f9809a;
            LayoutNode layoutNode = this.f9743a;
            if (layoutNode.R > 0) {
                mutableVector.j();
                mutableVector.b(layoutNode);
                layoutNode.Q = true;
            }
        }
        if (onPositionedDispatcher.f9809a.d != 0) {
            Trace.beginSection("Compose:onPositionedCallbacks");
            try {
                onPositionedDispatcher.a();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void e() {
        MutableVector mutableVector = this.f9748h;
        int i2 = mutableVector.d;
        if (i2 != 0) {
            Object[] objArr = mutableVector.f8165b;
            for (int i3 = 0; i3 < i2; i3++) {
                PostponedRequest postponedRequest = (PostponedRequest) objArr[i3];
                if (postponedRequest.f9751a.c()) {
                    boolean z = postponedRequest.f9752b;
                    LayoutNode layoutNode = postponedRequest.f9751a;
                    boolean z2 = postponedRequest.f9753c;
                    if (z) {
                        LayoutNode.k0(layoutNode, z2, 2);
                    } else {
                        LayoutNode.m0(layoutNode, z2, 2);
                    }
                }
            }
            mutableVector.j();
        }
    }

    public final void f(LayoutNode layoutNode) {
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (Intrinsics.c(layoutNode2.a0(), Boolean.TRUE) && !layoutNode2.S) {
                if (this.f9744b.b(layoutNode2)) {
                    layoutNode2.b0();
                }
                f(layoutNode2);
            }
        }
    }

    public final void g(LayoutNode layoutNode, boolean z) {
        if (!this.f9745c) {
            InlineClassHelperKt.c("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (z ? layoutNode.I.f9709e : layoutNode.K()) {
            InlineClassHelperKt.a("node not yet measured");
        }
        h(layoutNode, z);
    }

    public final void h(LayoutNode layoutNode, boolean z) throws Throwable {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if ((!z && (layoutNode2.L() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode2.I.p.z.f())) || (z && (layoutNode2.M() == LayoutNode.UsageByParent.InMeasureBlock || ((lookaheadPassDelegate = layoutNode2.I.q) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.t) != null && lookaheadAlignmentLines.f())))) {
                boolean zA = LayoutNodeLayoutDelegateKt.a(layoutNode2);
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.I;
                if (zA && !z) {
                    if (layoutNodeLayoutDelegate.f9709e && this.f9744b.b(layoutNode2)) {
                        o(layoutNode2, true);
                    } else {
                        g(layoutNode2, true);
                    }
                }
                if (z ? layoutNodeLayoutDelegate.f9709e : layoutNode2.K()) {
                    o(layoutNode2, z);
                }
                if (!(z ? layoutNodeLayoutDelegate.f9709e : layoutNode2.K())) {
                    h(layoutNode2, z);
                }
            }
        }
        if (z ? layoutNode.I.f9709e : layoutNode.K()) {
            o(layoutNode, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean l(Function0 function0) {
        boolean z;
        boolean z2;
        LayoutNode layoutNode;
        boolean z3;
        boolean zO;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.f9744b;
        LayoutNode layoutNode2 = this.f9743a;
        if (!layoutNode2.c()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.A()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.f9745c) {
            InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
        }
        if (this.f9749i != null) {
            this.f9745c = true;
            this.d = true;
            try {
                boolean zC = depthSortedSetsForDifferentPasses.c();
                DepthSortedSet depthSortedSet = depthSortedSetsForDifferentPasses.f9659a;
                if (zC) {
                    z = false;
                    while (true) {
                        try {
                            DepthSortedSet depthSortedSet2 = depthSortedSetsForDifferentPasses.f9661c;
                            DepthSortedSet depthSortedSet3 = depthSortedSetsForDifferentPasses.f9660b;
                            if (!depthSortedSet.f9657c.isEmpty()) {
                                layoutNode = (LayoutNode) depthSortedSet.f9657c.first();
                                depthSortedSet.c(layoutNode);
                                z3 = layoutNode.f9694j != null;
                                z2 = false;
                            } else if (!depthSortedSet3.f9657c.isEmpty()) {
                                layoutNode = (LayoutNode) depthSortedSet3.f9657c.first();
                                depthSortedSet3.c(layoutNode);
                                z3 = layoutNode.f9694j != null;
                                z2 = true;
                            } else {
                                if (depthSortedSet2.f9657c.isEmpty()) {
                                    break;
                                }
                                LayoutNode layoutNode3 = (LayoutNode) depthSortedSet2.f9657c.first();
                                depthSortedSet2.c(layoutNode3);
                                z2 = true;
                                layoutNode = layoutNode3;
                                z3 = false;
                            }
                            if (z2) {
                                zO = a(this, layoutNode, z3);
                            } else {
                                zO = o(layoutNode, z3);
                                if (layoutNode.I.f9710f) {
                                    depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.LookaheadPlacement);
                                }
                                if (layoutNode.J()) {
                                    depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.Placement);
                                }
                            }
                            if (layoutNode == layoutNode2 && zO) {
                                z = true;
                            }
                        } catch (Throwable th) {
                            th = th;
                            try {
                                RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9750j;
                                if (uncaughtExceptionHandler == null) {
                                    throw th;
                                }
                                uncaughtExceptionHandler.a();
                            } catch (Throwable th2) {
                                this.f9745c = false;
                                this.d = false;
                                throw th2;
                            }
                        }
                    }
                    if (function0 != null) {
                        function0.mo47invoke();
                    }
                } else {
                    z = false;
                }
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
            this.f9745c = false;
            this.d = false;
        } else {
            z = false;
        }
        MutableVector mutableVector = this.f9747f;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((Owner.OnLayoutCompletedListener) objArr[i3]).k();
        }
        mutableVector.j();
        return z;
    }

    public final void m(LayoutNode layoutNode, long j2) {
        if (layoutNode.S) {
            return;
        }
        LayoutNode layoutNode2 = this.f9743a;
        if (layoutNode == layoutNode2) {
            InlineClassHelperKt.a("measureAndLayout called on root");
        }
        if (!layoutNode2.c()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.A()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.f9745c) {
            InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
        }
        if (this.f9749i != null) {
            this.f9745c = true;
            this.d = false;
            try {
                DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.f9744b;
                depthSortedSetsForDifferentPasses.f9659a.c(layoutNode);
                depthSortedSetsForDifferentPasses.f9660b.c(layoutNode);
                depthSortedSetsForDifferentPasses.f9661c.c(layoutNode);
                if ((c(layoutNode, new Constraints(j2)) || layoutNode.I.f9710f) && Intrinsics.c(layoutNode.a0(), Boolean.TRUE)) {
                    layoutNode.b0();
                }
                f(layoutNode);
                d(layoutNode, new Constraints(j2));
                if (layoutNode.J() && layoutNode.A()) {
                    layoutNode.i0();
                    OnPositionedDispatcher onPositionedDispatcher = this.f9746e;
                    onPositionedDispatcher.getClass();
                    if (layoutNode.R > 0) {
                        onPositionedDispatcher.f9809a.b(layoutNode);
                        layoutNode.Q = true;
                    }
                }
                e();
            } catch (Throwable th) {
                try {
                    RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9750j;
                    if (uncaughtExceptionHandler == null) {
                        throw th;
                    }
                    uncaughtExceptionHandler.a();
                } catch (Throwable th2) {
                    this.f9745c = false;
                    this.d = false;
                    throw th2;
                }
            }
            this.f9745c = false;
            this.d = false;
        }
        MutableVector mutableVector = this.f9747f;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((Owner.OnLayoutCompletedListener) objArr[i3]).k();
        }
        mutableVector.j();
    }

    public final void n() {
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.f9744b;
        if (depthSortedSetsForDifferentPasses.c()) {
            LayoutNode layoutNode = this.f9743a;
            if (!layoutNode.c()) {
                InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
            }
            if (!layoutNode.A()) {
                InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
            }
            if (this.f9745c) {
                InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
            }
            if (this.f9749i != null) {
                this.f9745c = true;
                this.d = false;
                try {
                    if ((depthSortedSetsForDifferentPasses.f9661c.f9657c.isEmpty() || depthSortedSetsForDifferentPasses.f9659a.f9657c.isEmpty()) ? false : true) {
                        if (layoutNode.f9694j != null) {
                            q(layoutNode, true);
                        } else {
                            p(layoutNode);
                        }
                    }
                    q(layoutNode, false);
                } catch (Throwable th) {
                    try {
                        RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9750j;
                        if (uncaughtExceptionHandler == null) {
                            throw th;
                        }
                        uncaughtExceptionHandler.a();
                    } catch (Throwable th2) {
                        this.f9745c = false;
                        this.d = false;
                        throw th2;
                    }
                }
                this.f9745c = false;
                this.d = false;
            }
        }
    }

    public final boolean o(LayoutNode layoutNode, boolean z) throws Throwable {
        Constraints constraints;
        boolean zD = false;
        if (!layoutNode.S && k(layoutNode)) {
            if (layoutNode == this.f9743a) {
                constraints = this.f9749i;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                if (layoutNode.I.f9709e) {
                    zD = c(layoutNode, constraints);
                }
            } else if (layoutNode.K()) {
                zD = d(layoutNode, constraints);
            }
            e();
        }
        return zD;
    }

    public final void p(LayoutNode layoutNode) throws Throwable {
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (layoutNode2.L() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode2.I.p.z.f()) {
                if (LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                    q(layoutNode2, true);
                } else {
                    p(layoutNode2);
                }
            }
        }
    }

    public final void q(LayoutNode layoutNode, boolean z) throws Throwable {
        Constraints constraints;
        if (layoutNode.S) {
            return;
        }
        if (layoutNode == this.f9743a) {
            constraints = this.f9749i;
            constraints.getClass();
        } else {
            constraints = null;
        }
        if (z) {
            c(layoutNode, constraints);
        } else {
            d(layoutNode, constraints);
        }
    }

    public final boolean r(LayoutNode layoutNode, boolean z) {
        int i2 = WhenMappings.f9754a[layoutNode.I.d.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                this.f9748h.b(new PostponedRequest(layoutNode, false, z));
            } else {
                if (i2 != 5) {
                    v40.g();
                    return false;
                }
                if (!layoutNode.K() || z) {
                    layoutNode.I.p.w = true;
                    if (!layoutNode.S && (layoutNode.A() || j(layoutNode))) {
                        LayoutNode layoutNodeO = layoutNode.O();
                        if (layoutNodeO == null || !layoutNodeO.K()) {
                            this.f9744b.a(layoutNode, Invalidation.Measurement);
                        }
                        if (!this.d) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void s(long j2) {
        Constraints constraints = this.f9749i;
        if (constraints == null ? false : Constraints.b(constraints.f10999a, j2)) {
            return;
        }
        if (this.f9745c) {
            InlineClassHelperKt.a("updateRootConstraints called while measuring");
        }
        this.f9749i = new Constraints(j2);
        LayoutNode layoutNode = this.f9743a;
        LayoutNode layoutNode2 = layoutNode.f9694j;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        if (layoutNode2 != null) {
            layoutNodeLayoutDelegate.f9709e = true;
        }
        layoutNodeLayoutDelegate.p.w = true;
        this.f9744b.a(layoutNode, layoutNode2 != null ? Invalidation.LookaheadMeasurement : Invalidation.Measurement);
    }
}
