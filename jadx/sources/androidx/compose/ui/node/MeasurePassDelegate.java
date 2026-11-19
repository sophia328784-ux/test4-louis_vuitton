package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.ct0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/MeasurePassDelegate;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/Placeable;", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "Landroidx/compose/ui/node/MotionReferencePlacementDelegate;", "Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;", "layoutNodeLayoutDelegate", "<init>", "(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MeasurePassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public final MutableVector A;
    public boolean B;
    public boolean C;
    public long D;
    public final Function0 E;
    public final Function0 F;
    public float G;
    public boolean H;
    public Function1 I;
    public GraphicsLayer J;
    public long K;
    public float L;
    public final Function0 M;
    public boolean N;
    public final LayoutNodeLayoutDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9755h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f9758k;
    public boolean l;
    public boolean n;
    public long o;
    public Function1 p;
    public GraphicsLayer q;
    public float r;
    public boolean s;
    public Object t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public final LayoutNodeAlignmentLines z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9756i = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9757j = Integer.MAX_VALUE;
    public LayoutNode.UsageByParent m = LayoutNode.UsageByParent.NotUsed;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f9760b;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f9759a = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            try {
                iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f9760b = iArr2;
        }
    }

    public MeasurePassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.g = layoutNodeLayoutDelegate;
        IntOffset.f11012b.getClass();
        this.o = 0L;
        this.s = true;
        this.z = new LayoutNodeAlignmentLines(this);
        this.A = new MutableVector(new MeasurePassDelegate[16], 0);
        this.B = true;
        this.D = ConstraintsKt.b(0, 0, 0, 0, 15);
        this.E = new Function0<Unit>() { // from class: androidx.compose.ui.node.MeasurePassDelegate$performMeasureBlock$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                MeasurePassDelegate measurePassDelegate = this.f9764c;
                measurePassDelegate.g.a().T(measurePassDelegate.D);
                return Unit.f71739a;
            }
        };
        this.F = new Function0<Unit>() { // from class: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1

            /* JADX INFO: renamed from: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
            final class AnonymousClass1 extends Lambda implements Function1<AlignmentLinesOwner, Unit> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static final AnonymousClass1 f9762c = new AnonymousClass1(1);

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((AlignmentLinesOwner) obj).j().d = false;
                    return Unit.f71739a;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1$4, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
            final class AnonymousClass4 extends Lambda implements Function1<AlignmentLinesOwner, Unit> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static final AnonymousClass4 f9763c = new AnonymousClass4(1);

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    AlignmentLinesOwner alignmentLinesOwner = (AlignmentLinesOwner) obj;
                    alignmentLinesOwner.j().f9625e = alignmentLinesOwner.j().d;
                    return Unit.f71739a;
                }
            }

            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                MeasurePassDelegate measurePassDelegate = this.f9761c;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.g;
                layoutNodeLayoutDelegate2.f9712i = 0;
                MutableVector mutableVectorR = layoutNodeLayoutDelegate2.f9706a.R();
                Object[] objArr = mutableVectorR.f8165b;
                int i2 = mutableVectorR.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i3]).I.p;
                    measurePassDelegate2.f9756i = measurePassDelegate2.f9757j;
                    measurePassDelegate2.f9757j = Integer.MAX_VALUE;
                    measurePassDelegate2.v = false;
                    if (measurePassDelegate2.m == LayoutNode.UsageByParent.InLayoutBlock) {
                        measurePassDelegate2.m = LayoutNode.UsageByParent.NotUsed;
                    }
                }
                measurePassDelegate.e0(AnonymousClass1.f9762c);
                if (measurePassDelegate.J().l) {
                    List listH = layoutNodeLayoutDelegate2.f9706a.H();
                    int size = listH.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((LayoutNode) listH.get(i4)).H.d.l = true;
                    }
                }
                measurePassDelegate.J().K0().k();
                if (measurePassDelegate.J().l) {
                    List listH2 = layoutNodeLayoutDelegate2.f9706a.H();
                    int size2 = listH2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        ((LayoutNode) listH2.get(i5)).H.d.l = false;
                    }
                }
                LayoutNode layoutNode = layoutNodeLayoutDelegate2.f9706a;
                MutableVector mutableVectorR2 = layoutNode.R();
                Object[] objArr2 = mutableVectorR2.f8165b;
                int i6 = mutableVectorR2.d;
                for (int i7 = 0; i7 < i6; i7++) {
                    LayoutNode layoutNode2 = (LayoutNode) objArr2[i7];
                    LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode2.I;
                    if (layoutNodeLayoutDelegate3.p.f9756i != layoutNode2.P()) {
                        layoutNode.f0();
                        layoutNode.V();
                        if (layoutNode2.P() == Integer.MAX_VALUE) {
                            if (layoutNodeLayoutDelegate3.f9708c || LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.q;
                                lookaheadPassDelegate.getClass();
                                lookaheadPassDelegate.y0(false);
                            }
                            layoutNodeLayoutDelegate3.p.z0();
                        }
                    }
                }
                measurePassDelegate.e0(AnonymousClass4.f9763c);
                return Unit.f71739a;
            }
        };
        this.K = 0L;
        this.M = new Function0<Unit>() { // from class: androidx.compose.ui.node.MeasurePassDelegate$placeOuterCoordinatorBlock$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Placeable.PlacementScope placementScope;
                MeasurePassDelegate measurePassDelegate = this.f9765c;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.g;
                NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate2.a().u;
                if (nodeCoordinator == null || (placementScope = nodeCoordinator.m) == null) {
                    placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate2.f9706a).getPlacementScope();
                }
                Function1 function1 = measurePassDelegate.I;
                GraphicsLayer graphicsLayer = measurePassDelegate.J;
                if (graphicsLayer != null) {
                    NodeCoordinator nodeCoordinatorA = layoutNodeLayoutDelegate2.a();
                    long j2 = measurePassDelegate.K;
                    float f2 = measurePassDelegate.L;
                    placementScope.getClass();
                    Placeable.PlacementScope.c(placementScope, nodeCoordinatorA);
                    nodeCoordinatorA.o0(IntOffset.d(j2, nodeCoordinatorA.f9551f), f2, graphicsLayer);
                } else if (function1 == null) {
                    NodeCoordinator nodeCoordinatorA2 = layoutNodeLayoutDelegate2.a();
                    long j3 = measurePassDelegate.K;
                    float f3 = measurePassDelegate.L;
                    placementScope.getClass();
                    Placeable.PlacementScope.c(placementScope, nodeCoordinatorA2);
                    nodeCoordinatorA2.p0(IntOffset.d(j3, nodeCoordinatorA2.f9551f), f3, null);
                } else {
                    NodeCoordinator nodeCoordinatorA3 = layoutNodeLayoutDelegate2.a();
                    long j4 = measurePassDelegate.K;
                    float f4 = measurePassDelegate.L;
                    placementScope.getClass();
                    Placeable.PlacementScope.c(placementScope, nodeCoordinatorA3);
                    nodeCoordinatorA3.p0(IntOffset.d(j4, nodeCoordinatorA3.f9551f), f4, function1);
                }
                return Unit.f71739a;
            }
        };
    }

    public final void A0() {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode.m0(layoutNodeLayoutDelegate.f9706a, false, 7);
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNodeO = layoutNode.O();
        if (layoutNodeO == null || layoutNode.E != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        int i2 = WhenMappings.f9759a[layoutNodeO.I.d.ordinal()];
        if (i2 != 1) {
            usageByParent = i2 != 2 ? layoutNodeO.E : LayoutNode.UsageByParent.InLayoutBlock;
        } else {
            usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
        }
        layoutNode.E = usageByParent;
    }

    public final void D0() throws Throwable {
        this.H = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNodeO = layoutNodeLayoutDelegate.f9706a.O();
        float f2 = J().E;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        NodeChain nodeChain = layoutNode.H;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.f9772c;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            f2 += layoutModifierNodeCoordinator.E;
            nodeCoordinator = layoutModifierNodeCoordinator.t;
        }
        if (f2 != this.G) {
            this.G = f2;
            if (layoutNodeO != null) {
                layoutNodeO.f0();
            }
            if (layoutNodeO != null) {
                layoutNodeO.V();
            }
        }
        if (!J().l) {
            boolean z = this.u;
            if (!z || this.z.e()) {
                y0();
            }
            if (z) {
                layoutNode.H.f9772c.O1();
            } else {
                if (layoutNodeO != null) {
                    layoutNodeO.V();
                }
                if (this.f9755h && layoutNodeO != null) {
                    layoutNodeO.l0(false);
                }
            }
        }
        if (layoutNodeO != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeO.I;
            if (!this.f9755h && layoutNodeLayoutDelegate2.d == LayoutNode.LayoutState.LayingOut) {
                if (this.f9757j != Integer.MAX_VALUE) {
                    InlineClassHelperKt.c("Place was called on a node which was placed already");
                }
                int i2 = layoutNodeLayoutDelegate2.f9712i;
                this.f9757j = i2;
                layoutNodeLayoutDelegate2.f9712i = i2 + 1;
            }
        } else {
            this.f9757j = 0;
        }
        F();
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void E(boolean z) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (z != layoutNodeLayoutDelegate.a().f9717j) {
            layoutNodeLayoutDelegate.a().f9717j = z;
            this.N = true;
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void F() throws Throwable {
        boolean zK0;
        this.C = true;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = this.z;
        layoutNodeAlignmentLines.i();
        boolean z = this.x;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (z) {
            MutableVector mutableVectorR = layoutNodeLayoutDelegate.f9706a.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i3];
                boolean zK = layoutNode.K();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.I;
                if (zK && layoutNode.L() == LayoutNode.UsageByParent.InMeasureBlock) {
                    MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate2.p;
                    Constraints constraints = measurePassDelegate.f9758k ? new Constraints(measurePassDelegate.f9550e) : null;
                    if (constraints != null) {
                        if (layoutNode.E == LayoutNode.UsageByParent.NotUsed) {
                            layoutNode.t();
                        }
                        zK0 = layoutNodeLayoutDelegate2.p.K0(constraints.f10999a);
                    } else {
                        zK0 = false;
                    }
                    if (zK0) {
                        LayoutNode.m0(layoutNodeLayoutDelegate.f9706a, false, 7);
                    }
                }
            }
        }
        if (this.y || (!this.n && !J().l && this.x)) {
            this.x = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.d;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.LayingOut;
            layoutNodeLayoutDelegate.g(false);
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode2).getSnapshotObserver();
            snapshotObserver.f9812a.e(layoutNode2, snapshotObserver.f9815e, this.F);
            layoutNodeLayoutDelegate.d = layoutState;
            this.y = false;
        }
        if (layoutNodeAlignmentLines.d) {
            layoutNodeAlignmentLines.f9625e = true;
        }
        if (layoutNodeAlignmentLines.f9623b && layoutNodeAlignmentLines.f()) {
            layoutNodeAlignmentLines.h();
        }
        this.C = false;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a)) {
            A0();
            return layoutNodeLayoutDelegate.a().H(i2);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.H(i2);
    }

    public final void I0(long j2, float f2, Function1 function1, GraphicsLayer graphicsLayer) throws Throwable {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        if (layoutNode.S) {
            InlineClassHelperKt.a("place is called on a deactivated node");
        }
        layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.LayingOut;
        this.o = j2;
        this.r = f2;
        this.p = function1;
        this.q = graphicsLayer;
        this.H = false;
        Owner ownerA = LayoutNodeKt.a(layoutNode2);
        if (this.x || !this.u) {
            this.z.g = false;
            layoutNodeLayoutDelegate.f(false);
            this.I = function1;
            this.K = j2;
            this.L = f2;
            this.J = graphicsLayer;
            OwnerSnapshotObserver snapshotObserver = ownerA.getSnapshotObserver();
            snapshotObserver.f9812a.e(layoutNode2, snapshotObserver.f9816f, this.M);
        } else {
            NodeCoordinator nodeCoordinatorA = layoutNodeLayoutDelegate.a();
            nodeCoordinatorA.V1(IntOffset.d(j2, nodeCoordinatorA.f9551f), f2, function1, graphicsLayer);
            D0();
        }
        layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.Idle;
        if (layoutNodeLayoutDelegate.a().l && (layoutNodeLayoutDelegate.f9714k || layoutNodeLayoutDelegate.f9713j)) {
            requestLayout();
        }
        this.l = true;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final InnerNodeCoordinator J() {
        return this.g.f9706a.H.f9772c;
    }

    public final void J0(long j2, float f2, Function1 function1, GraphicsLayer graphicsLayer) throws Throwable {
        Placeable.PlacementScope placementScope;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        try {
            this.v = true;
            if (!IntOffset.b(j2, this.o) || function1 != this.p || this.N) {
                if (layoutNodeLayoutDelegate.f9714k || layoutNodeLayoutDelegate.f9713j || this.N) {
                    this.x = true;
                    this.N = false;
                }
            }
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.g;
                if (lookaheadPassDelegate.s == LookaheadPassDelegate.PlacedState.IsNotPlaced && !LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate2.f9706a)) {
                    layoutNodeLayoutDelegate2.f9708c = true;
                }
            }
            LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate2 != null && lookaheadPassDelegate2.t0()) {
                NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate.a().u;
                if (nodeCoordinator == null || (placementScope = nodeCoordinator.m) == null) {
                    placementScope = LayoutNodeKt.a(layoutNode2).getPlacementScope();
                }
                LookaheadPassDelegate lookaheadPassDelegate3 = layoutNodeLayoutDelegate.q;
                lookaheadPassDelegate3.getClass();
                LayoutNode layoutNodeO = layoutNode2.O();
                if (layoutNodeO != null) {
                    layoutNodeO.I.f9711h = 0;
                }
                lookaheadPassDelegate3.f9733j = Integer.MAX_VALUE;
                placementScope.j(lookaheadPassDelegate3, (int) (j2 >> 32), (int) (BodyPartID.bodyIdMax & j2), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            LookaheadPassDelegate lookaheadPassDelegate4 = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate4 != null && !lookaheadPassDelegate4.m) {
                InlineClassHelperKt.c("Error: Placement happened before lookahead.");
            }
            I0(j2, f2, function1, graphicsLayer);
        } catch (Throwable th) {
            layoutNode.p0(th);
            throw null;
        }
    }

    public final boolean K0(long j2) throws Throwable {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        try {
            if (layoutNode.S) {
                InlineClassHelperKt.a("measure is called on a deactivated node");
            }
            Owner ownerA = LayoutNodeKt.a(layoutNode2);
            LayoutNode layoutNodeO = layoutNode2.O();
            boolean z = true;
            layoutNode2.G = layoutNode2.G || (layoutNodeO != null && layoutNodeO.G);
            if (!layoutNode2.K() && Constraints.b(this.f9550e, j2)) {
                ownerA.l(layoutNode2, false);
                layoutNode2.o0();
                return false;
            }
            this.z.f9626f = false;
            e0(MeasurePassDelegate$remeasure$1$2.f9766c);
            this.f9758k = true;
            long j3 = layoutNodeLayoutDelegate.a().d;
            s0(j2);
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.d;
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Idle;
            if (layoutState != layoutState2) {
                InlineClassHelperKt.c("layout state is not idle before measure starts");
            }
            this.D = j2;
            LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.Measuring;
            layoutNodeLayoutDelegate.d = layoutState3;
            this.w = false;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode2).getSnapshotObserver();
            snapshotObserver.f9812a.e(layoutNode2, snapshotObserver.f9814c, this.E);
            if (layoutNodeLayoutDelegate.d == layoutState3) {
                this.x = true;
                this.y = true;
                layoutNodeLayoutDelegate.d = layoutState2;
            }
            if (IntSize.b(layoutNodeLayoutDelegate.a().d, j3) && layoutNodeLayoutDelegate.a().f9548b == this.f9548b && layoutNodeLayoutDelegate.a().f9549c == this.f9549c) {
                z = false;
            }
            q0((((long) layoutNodeLayoutDelegate.a().f9549c) & BodyPartID.bodyIdMax) | (((long) layoutNodeLayoutDelegate.a().f9548b) << 32));
            return z;
        } catch (Throwable th) {
            layoutNode.p0(th);
            throw null;
        }
    }

    public final void L0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        if (!layoutNode.A() || layoutNodeLayoutDelegate.l <= 0) {
            return;
        }
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.I;
        if ((layoutNodeLayoutDelegate2.f9713j || layoutNodeLayoutDelegate2.f9714k) && !layoutNodeLayoutDelegate2.p.x) {
            layoutNode2.l0(false);
        }
        MutableVector mutableVectorR = layoutNode2.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((LayoutNode) objArr[i3]).I.p.L0();
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a)) {
            A0();
            return layoutNodeLayoutDelegate.a().M(i2);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.M(i2);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    /* JADX INFO: renamed from: P, reason: from getter */
    public final int getF9733j() {
        return this.f9757j;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a)) {
            A0();
            return layoutNodeLayoutDelegate.a().S(i2);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.S(i2);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) throws Throwable {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode.UsageByParent usageByParent2 = layoutNode.E;
        LayoutNode.UsageByParent usageByParent3 = LayoutNode.UsageByParent.NotUsed;
        if (usageByParent2 == usageByParent3) {
            layoutNode.t();
        }
        if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.f9734k = usageByParent3;
            lookaheadPassDelegate.T(j2);
        }
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNodeO = layoutNode2.O();
        if (layoutNodeO != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeO.I;
            if (this.m != usageByParent3 && !layoutNode2.G) {
                InlineClassHelperKt.c("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i2 = WhenMappings.f9759a[layoutNodeLayoutDelegate2.d.ordinal()];
            if (i2 == 1) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i2 != 2) {
                    ct0.o(layoutNodeLayoutDelegate2.d, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.m = usageByParent;
        } else {
            this.m = usageByParent3;
        }
        K0(j2);
        return this;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int W(AlignmentLine alignmentLine) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNodeO = layoutNodeLayoutDelegate.f9706a.O();
        LayoutNode.LayoutState layoutState = layoutNodeO != null ? layoutNodeO.I.d : null;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Measuring;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = this.z;
        if (layoutState == layoutState2) {
            layoutNodeAlignmentLines.f9624c = true;
        } else {
            LayoutNode layoutNodeO2 = layoutNodeLayoutDelegate.f9706a.O();
            if ((layoutNodeO2 != null ? layoutNodeO2.I.d : null) == LayoutNode.LayoutState.LayingOut) {
                layoutNodeAlignmentLines.d = true;
            }
        }
        this.n = true;
        int iW = layoutNodeLayoutDelegate.a().W(alignmentLine);
        this.n = false;
        return iW;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Object getZ() {
        return this.t;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void e0(Function1 function1) {
        MutableVector mutableVectorR = this.g.f9706a.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            function1.invoke(((LayoutNode) objArr[i3]).I.p);
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void i0() {
        LayoutNode.m0(this.g.f9706a, false, 7);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLines j() {
        return this.z;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a)) {
            A0();
            return layoutNodeLayoutDelegate.a().l(i2);
        }
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.l(i2);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int l0() {
        return this.g.a().l0();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int m0() {
        return this.g.a().m0();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void o0(long j2, float f2, GraphicsLayer graphicsLayer) throws Throwable {
        J0(j2, f2, null, graphicsLayer);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void p0(long j2, float f2, Function1 function1) throws Throwable {
        J0(j2, f2, function1, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        LayoutNode layoutNode = this.g.f9706a;
        LayoutNode.Companion companion = LayoutNode.T;
        layoutNode.l0(false);
    }

    public final List t0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        layoutNodeLayoutDelegate.f9706a.s0();
        boolean z = this.B;
        MutableVector mutableVector = this.A;
        if (!z) {
            return mutableVector.i();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (mutableVector.d <= i3) {
                mutableVector.b(layoutNode2.I.p);
            } else {
                MeasurePassDelegate measurePassDelegate = layoutNode2.I.p;
                Object[] objArr2 = mutableVector.f8165b;
                Object obj = objArr2[i3];
                objArr2[i3] = measurePassDelegate;
            }
        }
        mutableVector.p(layoutNode.H().size(), mutableVector.d);
        this.B = false;
        return mutableVector.i();
    }

    public final void y0() {
        boolean z = this.u;
        this.u = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        if (!z) {
            layoutNode.H.f9772c.O1();
            LayoutNodeKt.a(layoutNode).getRectManager().e(layoutNodeLayoutDelegate.f9706a);
            if (layoutNode.K()) {
                LayoutNode.m0(layoutNode, true, 6);
            } else if (layoutNode.I.f9709e) {
                LayoutNode.k0(layoutNode, true, 6);
            }
        }
        NodeChain nodeChain = layoutNode.H;
        NodeCoordinator nodeCoordinator = nodeChain.f9772c.t;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.c(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.t) {
            if (nodeCoordinator2.O) {
                nodeCoordinator2.H1();
            }
        }
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (layoutNode2.P() != Integer.MAX_VALUE) {
                layoutNode2.I.p.y0();
                LayoutNode.n0(layoutNode2);
            }
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLinesOwner z() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        LayoutNode layoutNodeO = this.g.f9706a.O();
        if (layoutNodeO == null || (layoutNodeLayoutDelegate = layoutNodeO.I) == null) {
            return null;
        }
        return layoutNodeLayoutDelegate.p;
    }

    public final void z0() {
        if (this.u) {
            this.u = false;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
            LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
            LayoutNodeKt.a(layoutNode).getRectManager().f(layoutNode2);
            NodeChain nodeChain = layoutNode2.H;
            NodeCoordinator nodeCoordinator = nodeChain.f9772c.t;
            for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.c(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.t) {
                nodeCoordinator2.S1();
                nodeCoordinator2.X1();
            }
            MutableVector mutableVectorR = layoutNode2.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                ((LayoutNode) objArr[i3]).I.p.z0();
            }
        }
    }
}
