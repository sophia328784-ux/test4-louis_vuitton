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
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\tB\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/ui/node/LookaheadPassDelegate;", "Landroidx/compose/ui/layout/Placeable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "Landroidx/compose/ui/node/MotionReferencePlacementDelegate;", "Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;", "layoutNodeLayoutDelegate", "<init>", "(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V", "PlacedState", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LookaheadPassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public long A;
    public final Function0 B;
    public final Function0 C;
    public boolean D;
    public final LayoutNodeLayoutDelegate g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9732i = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9733j = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LayoutNode.UsageByParent f9734k = LayoutNode.UsageByParent.NotUsed;
    public boolean l;
    public boolean m;
    public boolean n;
    public Constraints o;
    public long p;
    public Function1 q;
    public GraphicsLayer r;
    public PlacedState s;
    public final LookaheadAlignmentLines t;
    public final MutableVector u;
    public boolean v;
    public boolean w;
    public final Function0 x;
    public boolean y;
    public Object z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;", "", "IsPlacedInLookahead", "IsPlacedInApproach", "IsNotPlaced", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PlacedState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PlacedState[] $VALUES;
        public static final PlacedState IsNotPlaced;
        public static final PlacedState IsPlacedInApproach;
        public static final PlacedState IsPlacedInLookahead;

        static {
            PlacedState placedState = new PlacedState("IsPlacedInLookahead", 0);
            IsPlacedInLookahead = placedState;
            PlacedState placedState2 = new PlacedState("IsPlacedInApproach", 1);
            IsPlacedInApproach = placedState2;
            PlacedState placedState3 = new PlacedState("IsNotPlaced", 2);
            IsNotPlaced = placedState3;
            PlacedState[] placedStateArr = {placedState, placedState2, placedState3};
            $VALUES = placedStateArr;
            $ENTRIES = EnumEntriesKt.a(placedStateArr);
        }

        public static PlacedState valueOf(String str) {
            return (PlacedState) Enum.valueOf(PlacedState.class, str);
        }

        public static PlacedState[] values() {
            return (PlacedState[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f9736b;

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
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f9735a = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            try {
                iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            f9736b = iArr2;
        }
    }

    public LookaheadPassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.g = layoutNodeLayoutDelegate;
        IntOffset.f11012b.getClass();
        this.p = 0L;
        this.s = PlacedState.IsNotPlaced;
        this.t = new LookaheadAlignmentLines(this);
        this.u = new MutableVector(new LookaheadPassDelegate[16], 0);
        this.v = true;
        this.x = new Function0<Unit>() { // from class: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1

            /* JADX INFO: renamed from: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "child", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
            final class AnonymousClass1 extends Lambda implements Function1<AlignmentLinesOwner, Unit> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static final AnonymousClass1 f9738c = new AnonymousClass1(1);

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((AlignmentLinesOwner) obj).j().d = false;
                    return Unit.f71739a;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.ui.node.LookaheadPassDelegate$layoutChildrenBlock$1$4, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "child", "Landroidx/compose/ui/node/AlignmentLinesOwner;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
            final class AnonymousClass4 extends Lambda implements Function1<AlignmentLinesOwner, Unit> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static final AnonymousClass4 f9739c = new AnonymousClass4(1);

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
                LookaheadPassDelegate lookaheadPassDelegate = this.f9737c;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.g;
                layoutNodeLayoutDelegate2.f9711h = 0;
                MutableVector mutableVectorR = layoutNodeLayoutDelegate2.f9706a.R();
                Object[] objArr = mutableVectorR.f8165b;
                int i2 = mutableVectorR.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i3]).I.q;
                    lookaheadPassDelegate2.getClass();
                    lookaheadPassDelegate2.f9732i = lookaheadPassDelegate2.f9733j;
                    lookaheadPassDelegate2.f9733j = Integer.MAX_VALUE;
                    if (lookaheadPassDelegate2.f9734k == LayoutNode.UsageByParent.InLayoutBlock) {
                        lookaheadPassDelegate2.f9734k = LayoutNode.UsageByParent.NotUsed;
                    }
                }
                lookaheadPassDelegate.e0(AnonymousClass1.f9738c);
                LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.J().t0;
                if (lookaheadDelegate != null) {
                    boolean z = lookaheadDelegate.l;
                    List listH = layoutNodeLayoutDelegate2.f9706a.H();
                    int size = listH.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        LookaheadDelegate b1 = ((LayoutNode) listH.get(i4)).H.d.getB1();
                        if (b1 != null) {
                            b1.l = z;
                        }
                    }
                }
                LookaheadDelegate lookaheadDelegate2 = lookaheadPassDelegate.J().t0;
                lookaheadDelegate2.getClass();
                lookaheadDelegate2.K0().k();
                if (lookaheadPassDelegate.J().t0 != null) {
                    List listH2 = layoutNodeLayoutDelegate2.f9706a.H();
                    int size2 = listH2.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        LookaheadDelegate b2 = ((LayoutNode) listH2.get(i5)).H.d.getB1();
                        if (b2 != null) {
                            b2.l = false;
                        }
                    }
                }
                MutableVector mutableVectorR2 = layoutNodeLayoutDelegate2.f9706a.R();
                Object[] objArr2 = mutableVectorR2.f8165b;
                int i6 = mutableVectorR2.d;
                for (int i7 = 0; i7 < i6; i7++) {
                    LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i7]).I.q;
                    lookaheadPassDelegate3.getClass();
                    int i8 = lookaheadPassDelegate3.f9732i;
                    int i9 = lookaheadPassDelegate3.f9733j;
                    if (i8 != i9 && i9 == Integer.MAX_VALUE) {
                        lookaheadPassDelegate3.y0(true);
                    }
                }
                lookaheadPassDelegate.e0(AnonymousClass4.f9739c);
                return Unit.f71739a;
            }
        };
        this.y = true;
        this.z = layoutNodeLayoutDelegate.p.t;
        this.A = ConstraintsKt.b(0, 0, 0, 0, 15);
        this.B = new Function0<Unit>() { // from class: androidx.compose.ui.node.LookaheadPassDelegate$performMeasureBlock$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LookaheadPassDelegate lookaheadPassDelegate = this.f9741c;
                LookaheadDelegate b1 = lookaheadPassDelegate.g.a().getB1();
                b1.getClass();
                b1.T(lookaheadPassDelegate.A);
                return Unit.f71739a;
            }
        };
        this.C = new Function0<Unit>() { // from class: androidx.compose.ui.node.LookaheadPassDelegate$layoutModifierBlock$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LookaheadDelegate b1;
                LookaheadPassDelegate lookaheadPassDelegate = this.f9740c;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.g;
                Placeable.PlacementScope placementScope = null;
                if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate2.f9706a) || layoutNodeLayoutDelegate2.f9708c) {
                    NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate2.a().u;
                    if (nodeCoordinator != null) {
                        placementScope = nodeCoordinator.m;
                    }
                } else {
                    NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate2.a().u;
                    if (nodeCoordinator2 != null && (b1 = nodeCoordinator2.getB1()) != null) {
                        placementScope = b1.m;
                    }
                }
                if (placementScope == null) {
                    placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate2.f9706a).getPlacementScope();
                }
                LookaheadDelegate b2 = layoutNodeLayoutDelegate2.a().getB1();
                b2.getClass();
                Placeable.PlacementScope.u(placementScope, b2, lookaheadPassDelegate.p);
                return Unit.f71739a;
            }
        };
    }

    public final void A0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        if (layoutNodeLayoutDelegate.o > 0) {
            MutableVector mutableVectorR = layoutNodeLayoutDelegate.f9706a.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i3];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.I;
                if ((layoutNodeLayoutDelegate2.m || layoutNodeLayoutDelegate2.n) && !layoutNodeLayoutDelegate2.f9710f) {
                    layoutNode.j0(false);
                }
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.A0();
                }
            }
        }
    }

    public final void D0() {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode.k0(layoutNodeLayoutDelegate.f9706a, false, 7);
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNodeO = layoutNode.O();
        if (layoutNodeO == null || layoutNode.E != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        int i2 = WhenMappings.f9735a[layoutNodeO.I.d.ordinal()];
        if (i2 != 2) {
            usageByParent = i2 != 3 ? layoutNodeO.E : LayoutNode.UsageByParent.InLayoutBlock;
        } else {
            usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
        }
        layoutNode.E = usageByParent;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void E(boolean z) {
        LookaheadDelegate b1;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LookaheadDelegate b2 = layoutNodeLayoutDelegate.a().getB1();
        if (Boolean.valueOf(z).equals(b2 != null ? Boolean.valueOf(b2.f9717j) : null) || (b1 = layoutNodeLayoutDelegate.a().getB1()) == null) {
            return;
        }
        b1.f9717j = z;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void F() {
        this.w = true;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.t;
        lookaheadAlignmentLines.i();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        boolean z = layoutNodeLayoutDelegate.f9710f;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        if (z) {
            MutableVector mutableVectorR = layoutNode.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.I;
                if (layoutNodeLayoutDelegate2.f9709e && layoutNode2.M() == LayoutNode.UsageByParent.InMeasureBlock) {
                    LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.q;
                    lookaheadPassDelegate.getClass();
                    LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate2.q;
                    Constraints constraints = lookaheadPassDelegate2 != null ? lookaheadPassDelegate2.o : null;
                    constraints.getClass();
                    if (lookaheadPassDelegate.K0(constraints.f10999a)) {
                        LayoutNode.k0(layoutNode, false, 7);
                    }
                }
            }
        }
        LookaheadDelegate lookaheadDelegate = J().t0;
        lookaheadDelegate.getClass();
        if (layoutNodeLayoutDelegate.g || (!this.l && !lookaheadDelegate.l && layoutNodeLayoutDelegate.f9710f)) {
            layoutNodeLayoutDelegate.f9710f = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.d;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.LookaheadLayingOut;
            layoutNodeLayoutDelegate.i(false);
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode).getSnapshotObserver();
            snapshotObserver.f9812a.e(layoutNode, snapshotObserver.f9817h, this.x);
            layoutNodeLayoutDelegate.d = layoutState;
            if (layoutNodeLayoutDelegate.m && lookaheadDelegate.l) {
                requestLayout();
            }
            layoutNodeLayoutDelegate.g = false;
        }
        if (lookaheadAlignmentLines.d) {
            lookaheadAlignmentLines.f9625e = true;
        }
        if (lookaheadAlignmentLines.f9623b && lookaheadAlignmentLines.f()) {
            lookaheadAlignmentLines.h();
        }
        this.w = false;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        D0();
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.H(i2);
    }

    public final void I0() {
        LayoutNode.LayoutState layoutState;
        this.D = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNodeO = layoutNodeLayoutDelegate.f9706a.O();
        PlacedState placedState = this.s;
        if ((placedState != PlacedState.IsPlacedInLookahead && !layoutNodeLayoutDelegate.f9708c) || (placedState != PlacedState.IsPlacedInApproach && layoutNodeLayoutDelegate.f9708c)) {
            z0();
            if (this.f9731h && layoutNodeO != null) {
                layoutNodeO.j0(false);
            }
        }
        if (layoutNodeO != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeO.I;
            if (!this.f9731h && ((layoutState = layoutNodeLayoutDelegate2.d) == LayoutNode.LayoutState.LayingOut || layoutState == LayoutNode.LayoutState.LookaheadLayingOut)) {
                if (this.f9733j != Integer.MAX_VALUE) {
                    InlineClassHelperKt.c("Place was called on a node which was placed already");
                }
                int i2 = layoutNodeLayoutDelegate2.f9711h;
                this.f9733j = i2;
                layoutNodeLayoutDelegate2.f9711h = i2 + 1;
            }
        } else {
            this.f9733j = 0;
        }
        F();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final InnerNodeCoordinator J() {
        return this.g.f9706a.H.f9772c;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006e A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0013, B:9:0x0018, B:12:0x001d, B:14:0x0021, B:15:0x0026, B:17:0x0035, B:19:0x0039, B:22:0x003f, B:21:0x003d, B:23:0x0042, B:25:0x004c, B:30:0x0056, B:32:0x0082, B:31:0x006e), top: B:36:0x0007 }] */
    public final void J0(long j2, GraphicsLayer graphicsLayer, Function1 function1) throws Throwable {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        try {
            LayoutNode layoutNodeO = layoutNode.O();
            LayoutNode.LayoutState layoutState = layoutNodeO != null ? layoutNodeO.I.d : null;
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.LookaheadLayingOut;
            if (layoutState == layoutState2) {
                layoutNodeLayoutDelegate.f9708c = false;
            }
            if (layoutNode2.S) {
                InlineClassHelperKt.a("place is called on a deactivated node");
            }
            layoutNodeLayoutDelegate.d = layoutState2;
            boolean z = true;
            this.m = true;
            this.D = false;
            if (!IntOffset.b(j2, this.p)) {
                if (layoutNodeLayoutDelegate.n || layoutNodeLayoutDelegate.m) {
                    layoutNodeLayoutDelegate.f9710f = true;
                }
                A0();
            }
            Owner ownerA = LayoutNodeKt.a(layoutNode2);
            this.p = j2;
            if (layoutNodeLayoutDelegate.f9710f) {
                layoutNodeLayoutDelegate.h(false);
                this.t.g = false;
                OwnerSnapshotObserver snapshotObserver = ownerA.getSnapshotObserver();
                snapshotObserver.f9812a.e(layoutNode2, snapshotObserver.g, this.C);
            } else {
                if (this.s == PlacedState.IsNotPlaced) {
                    z = false;
                }
                if (z) {
                    LookaheadDelegate b1 = layoutNodeLayoutDelegate.a().getB1();
                    b1.getClass();
                    b1.b1(IntOffset.d(j2, b1.f9551f));
                    I0();
                } else {
                    layoutNodeLayoutDelegate.h(false);
                    this.t.g = false;
                    OwnerSnapshotObserver snapshotObserver2 = ownerA.getSnapshotObserver();
                    snapshotObserver2.f9812a.e(layoutNode2, snapshotObserver2.g, this.C);
                }
            }
            this.q = function1;
            this.r = graphicsLayer;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.Idle;
        } catch (Throwable th) {
            layoutNode.p0(th);
            throw null;
        }
    }

    public final boolean K0(long j2) throws Throwable {
        long j3;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        try {
            if (layoutNode.S) {
                InlineClassHelperKt.a("measure is called on a deactivated node");
            }
            LayoutNode layoutNodeO = layoutNode2.O();
            layoutNode2.G = layoutNode2.G || (layoutNodeO != null && layoutNodeO.G);
            if (!layoutNode2.I.f9709e) {
                Constraints constraints = this.o;
                if (constraints == null ? false : Constraints.b(constraints.f10999a, j2)) {
                    Owner owner = layoutNode2.p;
                    if (owner != null) {
                        owner.l(layoutNode2, true);
                    }
                    layoutNode2.o0();
                    return false;
                }
            }
            this.o = new Constraints(j2);
            s0(j2);
            this.t.f9626f = false;
            e0(LookaheadPassDelegate$remeasure$1$2.f9742c);
            if (this.n) {
                j3 = this.d;
            } else {
                IntSize.Companion companion = IntSize.f11020b;
                j3 = -9223372034707292160L;
            }
            this.n = true;
            LookaheadDelegate b1 = layoutNodeLayoutDelegate.a().getB1();
            if (b1 == null) {
                InlineClassHelperKt.c("Lookahead result from lookaheadRemeasure cannot be null");
            }
            layoutNodeLayoutDelegate.c(j2);
            long j4 = (((long) b1.f9548b) << 32) | (((long) b1.f9549c) & BodyPartID.bodyIdMax);
            IntSize.Companion companion2 = IntSize.f11020b;
            q0(j4);
            return (((int) (j3 >> 32)) == b1.f9548b && ((int) (j3 & BodyPartID.bodyIdMax)) == b1.f9549c) ? false : true;
        } catch (Throwable th) {
            layoutNode.p0(th);
            throw null;
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        D0();
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.M(i2);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    /* JADX INFO: renamed from: P, reason: from getter */
    public final int getF9733j() {
        return this.f9733j;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        D0();
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.S(i2);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0027  */
    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNodeO = layoutNodeLayoutDelegate.f9706a.O();
        if ((layoutNodeO != null ? layoutNodeO.I.d : null) == LayoutNode.LayoutState.LookaheadMeasuring) {
            layoutNodeLayoutDelegate.f9707b = false;
        } else {
            LayoutNode layoutNodeO2 = layoutNodeLayoutDelegate.f9706a.O();
            if ((layoutNodeO2 != null ? layoutNodeO2.I.d : null) == LayoutNode.LayoutState.LookaheadLayingOut) {
                layoutNodeLayoutDelegate.f9707b = false;
            }
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        LayoutNode layoutNodeO3 = layoutNode.O();
        if (layoutNodeO3 != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeO3.I;
            if (this.f9734k != LayoutNode.UsageByParent.NotUsed && !layoutNode.G) {
                InlineClassHelperKt.c("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i2 = WhenMappings.f9735a[layoutNodeLayoutDelegate2.d.ordinal()];
            if (i2 == 1 || i2 == 2) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i2 != 3 && i2 != 4) {
                    ct0.o(layoutNodeLayoutDelegate2.d, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.f9734k = usageByParent;
        } else {
            this.f9734k = LayoutNode.UsageByParent.NotUsed;
        }
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.f9706a;
        if (layoutNode2.E == LayoutNode.UsageByParent.NotUsed) {
            layoutNode2.t();
        }
        K0(j2);
        return this;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int W(AlignmentLine alignmentLine) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        LayoutNode layoutNodeO = layoutNodeLayoutDelegate.f9706a.O();
        LayoutNode.LayoutState layoutState = layoutNodeO != null ? layoutNodeO.I.d : null;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.LookaheadMeasuring;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.t;
        if (layoutState == layoutState2) {
            lookaheadAlignmentLines.f9624c = true;
        } else {
            LayoutNode layoutNodeO2 = layoutNodeLayoutDelegate.f9706a.O();
            if ((layoutNodeO2 != null ? layoutNodeO2.I.d : null) == LayoutNode.LayoutState.LookaheadLayingOut) {
                lookaheadAlignmentLines.d = true;
            }
        }
        this.l = true;
        LookaheadDelegate b1 = layoutNodeLayoutDelegate.a().getB1();
        b1.getClass();
        int iW = b1.W(alignmentLine);
        this.l = false;
        return iW;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Object getZ() {
        return this.z;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void e0(Function1 function1) {
        MutableVector mutableVectorR = this.g.f9706a.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i3]).I.q;
            lookaheadPassDelegate.getClass();
            function1.invoke(lookaheadPassDelegate);
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void i0() {
        LayoutNode.k0(this.g.f9706a, false, 7);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLines j() {
        return this.t;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        D0();
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.l(i2);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int l0() {
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.l0();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int m0() {
        LookaheadDelegate b1 = this.g.a().getB1();
        b1.getClass();
        return b1.m0();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void o0(long j2, float f2, GraphicsLayer graphicsLayer) throws Throwable {
        J0(j2, graphicsLayer, null);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void p0(long j2, float f2, Function1 function1) throws Throwable {
        J0(j2, null, function1);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        LayoutNode layoutNode = this.g.f9706a;
        LayoutNode.Companion companion = LayoutNode.T;
        layoutNode.j0(false);
    }

    public final boolean t0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        return LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.f9706a) || layoutNodeLayoutDelegate.f9708c;
    }

    public final void y0(boolean z) {
        if (z && t0()) {
            return;
        }
        if (z || t0()) {
            this.s = PlacedState.IsNotPlaced;
            MutableVector mutableVectorR = this.g.f9706a.R();
            Object[] objArr = mutableVectorR.f8165b;
            int i2 = mutableVectorR.d;
            for (int i3 = 0; i3 < i2; i3++) {
                LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i3]).I.q;
                lookaheadPassDelegate.getClass();
                lookaheadPassDelegate.y0(true);
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
        return layoutNodeLayoutDelegate.q;
    }

    public final void z0() {
        PlacedState placedState = this.s;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.g;
        boolean z = layoutNodeLayoutDelegate.f9708c;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        if (z) {
            this.s = PlacedState.IsPlacedInApproach;
        } else {
            this.s = PlacedState.IsPlacedInLookahead;
        }
        if (placedState != PlacedState.IsPlacedInLookahead && layoutNodeLayoutDelegate.f9709e) {
            LayoutNode.k0(layoutNode, true, 6);
        }
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            LookaheadPassDelegate lookaheadPassDelegate = layoutNode2.I.q;
            if (lookaheadPassDelegate == null) {
                md.n("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                return;
            }
            if (lookaheadPassDelegate.f9733j != Integer.MAX_VALUE) {
                lookaheadPassDelegate.z0();
                LayoutNode.n0(layoutNode2);
            }
        }
    }
}
