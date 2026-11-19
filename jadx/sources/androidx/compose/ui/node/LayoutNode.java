package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsListener;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import defpackage.a;
import defpackage.ct0;
import defpackage.md;
import defpackage.o60;
import defpackage.os;
import defpackage.x5;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b:\u0004\u0013\u0014\u0015\u0016B\u001b\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/node/LayoutNode;", "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;", "Landroidx/compose/ui/layout/Remeasurement;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/layout/LayoutInfo;", "Landroidx/compose/ui/semantics/SemanticsInfo;", "Landroidx/compose/ui/node/ComposeUiNode;", "Landroidx/compose/ui/node/InteroperableComposeUiNode;", "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;", "", "isVirtual", "", "semanticsId", "<init>", "(ZI)V", "instance", "", "E", "(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;", "NoIntrinsicsMeasurePolicy", "Companion", "LayoutState", "UsageByParent", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutNode implements ComposeNodeLifecycleCallback, Remeasurement, OwnerScope, LayoutInfo, SemanticsInfo, ComposeUiNode, InteroperableComposeUiNode, Owner.OnLayoutCompletedListener {
    public static final Companion T = new Companion(null);
    public static final LayoutNode$Companion$ErrorMeasurePolicy$1 V = new LayoutNode$Companion$ErrorMeasurePolicy$1("Undefined intrinsics block and it is required");
    public static final Function0 W = LayoutNode$Companion$Constructor$1.f9696c;
    public static final LayoutNode$Companion$DummyViewConfiguration$1 X = new LayoutNode$Companion$DummyViewConfiguration$1();
    public static final x5 Y = new x5(11);
    public Density A;
    public LayoutDirection B;
    public ViewConfiguration C;
    public CompositionLocalMap D;
    public UsageByParent E;
    public UsageByParent F;
    public boolean G;
    public final NodeChain H;
    public final LayoutNodeLayoutDelegate I;
    public LayoutNodeSubcompositionsState J;
    public NodeCoordinator K;
    public boolean L;
    public Modifier M;
    public Modifier N;
    public Function1 O;
    public Function1 P;
    public boolean Q;
    public int R;
    public boolean S;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f9688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9689c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9691f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9692h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9693i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LayoutNode f9694j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9695k;
    public final MutableVectorWithMutationTracking l;
    public MutableVector m;
    public boolean n;
    public LayoutNode o;
    public Owner p;
    public AndroidViewHolder q;
    public int r;
    public boolean s;
    public boolean t;
    public SemanticsConfiguration u;
    public boolean v;
    public final MutableVector w;
    public boolean x;
    public MeasurePolicy y;
    public IntrinsicsPolicy z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$Companion;", "", "Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "ErrorMeasurePolicy", "Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$LayoutState;", "", "Measuring", "LookaheadMeasuring", "LayingOut", "LookaheadLayingOut", "Idle", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class LayoutState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ LayoutState[] $VALUES;
        public static final LayoutState Idle;
        public static final LayoutState LayingOut;
        public static final LayoutState LookaheadLayingOut;
        public static final LayoutState LookaheadMeasuring;
        public static final LayoutState Measuring;

        static {
            LayoutState layoutState = new LayoutState("Measuring", 0);
            Measuring = layoutState;
            LayoutState layoutState2 = new LayoutState("LookaheadMeasuring", 1);
            LookaheadMeasuring = layoutState2;
            LayoutState layoutState3 = new LayoutState("LayingOut", 2);
            LayingOut = layoutState3;
            LayoutState layoutState4 = new LayoutState("LookaheadLayingOut", 3);
            LookaheadLayingOut = layoutState4;
            LayoutState layoutState5 = new LayoutState("Idle", 4);
            Idle = layoutState5;
            LayoutState[] layoutStateArr = {layoutState, layoutState2, layoutState3, layoutState4, layoutState5};
            $VALUES = layoutStateArr;
            $ENTRIES = EnumEntriesKt.a(layoutStateArr);
        }

        public static LayoutState valueOf(String str) {
            return (LayoutState) Enum.valueOf(LayoutState.class, str);
        }

        public static LayoutState[] values() {
            return (LayoutState[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "", "error", "<init>", "(Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f9697a;

        public NoIntrinsicsMeasurePolicy(String str) {
            this.f9697a = str;
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
            throw new IllegalStateException(this.f9697a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
            throw new IllegalStateException(this.f9697a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
            throw new IllegalStateException(this.f9697a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
            throw new IllegalStateException(this.f9697a.toString());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "", "InMeasureBlock", "InLayoutBlock", "NotUsed", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UsageByParent {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UsageByParent[] $VALUES;
        public static final UsageByParent InLayoutBlock;
        public static final UsageByParent InMeasureBlock;
        public static final UsageByParent NotUsed;

        static {
            UsageByParent usageByParent = new UsageByParent("InMeasureBlock", 0);
            InMeasureBlock = usageByParent;
            UsageByParent usageByParent2 = new UsageByParent("InLayoutBlock", 1);
            InLayoutBlock = usageByParent2;
            UsageByParent usageByParent3 = new UsageByParent("NotUsed", 2);
            NotUsed = usageByParent3;
            UsageByParent[] usageByParentArr = {usageByParent, usageByParent2, usageByParent3};
            $VALUES = usageByParentArr;
            $ENTRIES = EnumEntriesKt.a(usageByParentArr);
        }

        public static UsageByParent valueOf(String str) {
            return (UsageByParent) Enum.valueOf(UsageByParent.class, str);
        }

        public static UsageByParent[] values() {
            return (UsageByParent[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9698a;

        static {
            int[] iArr = new int[LayoutState.values().length];
            try {
                iArr[LayoutState.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f9698a = iArr;
        }
    }

    public LayoutNode(boolean z, int i2) {
        this.f9688b = z;
        this.f9689c = i2;
        IntOffset.f11012b.getClass();
        this.f9690e = IntOffset.f11013c;
        this.f9691f = true;
        this.g = true;
        this.l = new MutableVectorWithMutationTracking(new MutableVector(new LayoutNode[16], 0), new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$_foldedChildren$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.f9699c.I;
                layoutNodeLayoutDelegate.p.B = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.v = true;
                }
                return Unit.f71739a;
            }
        });
        this.w = new MutableVector(new LayoutNode[16], 0);
        this.x = true;
        this.y = V;
        this.A = LayoutNodeKt.f9705a;
        this.B = LayoutDirection.Ltr;
        this.C = X;
        CompositionLocalMap.U.getClass();
        this.D = CompositionLocalMap.Companion.f7958b;
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.E = usageByParent;
        this.F = usageByParent;
        this.H = new NodeChain(this);
        this.I = new LayoutNodeLayoutDelegate(this);
        this.L = true;
        this.M = Modifier.Companion.f8607b;
    }

    private final String E(LayoutNode instance) {
        StringBuilder sb = new StringBuilder("Cannot insert ");
        sb.append(instance);
        sb.append(" because it already has a parent or an owner. This tree: ");
        sb.append(v(0));
        sb.append(" Other tree: ");
        LayoutNode layoutNode = instance.o;
        sb.append(layoutNode != null ? layoutNode.v(0) : null);
        return sb.toString();
    }

    public static void k0(LayoutNode layoutNode, boolean z, int i2) {
        LayoutNode layoutNodeO;
        if ((i2 & 1) != 0) {
            z = false;
        }
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 4) != 0;
        if (layoutNode.f9694j == null) {
            InlineClassHelperKt.c("Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope");
        }
        Owner owner = layoutNode.p;
        if (owner == null || layoutNode.s || layoutNode.f9688b) {
            return;
        }
        owner.B(layoutNode, true, z, z2);
        if (z3) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNode.I.q;
            lookaheadPassDelegate.getClass();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.g;
            LayoutNode layoutNodeO2 = layoutNodeLayoutDelegate.f9706a.O();
            UsageByParent usageByParent = layoutNodeLayoutDelegate.f9706a.E;
            if (layoutNodeO2 == null || usageByParent == UsageByParent.NotUsed) {
                return;
            }
            while (layoutNodeO2.E == usageByParent && (layoutNodeO = layoutNodeO2.O()) != null) {
                layoutNodeO2 = layoutNodeO;
            }
            int i3 = LookaheadPassDelegate.WhenMappings.f9736b[usageByParent.ordinal()];
            if (i3 == 1) {
                if (layoutNodeO2.f9694j != null) {
                    k0(layoutNodeO2, z, 6);
                    return;
                } else {
                    m0(layoutNodeO2, z, 6);
                    return;
                }
            }
            if (i3 != 2) {
                md.k("Intrinsics isn't used by the parent");
            } else if (layoutNodeO2.f9694j != null) {
                layoutNodeO2.j0(z);
            } else {
                layoutNodeO2.l0(z);
            }
        }
    }

    public static void m0(LayoutNode layoutNode, boolean z, int i2) {
        Owner owner;
        LayoutNode layoutNodeO;
        if ((i2 & 1) != 0) {
            z = false;
        }
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 4) != 0;
        if (layoutNode.s || layoutNode.f9688b || (owner = layoutNode.p) == null) {
            return;
        }
        owner.B(layoutNode, false, z, z2);
        if (z3) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I.p.g;
            LayoutNode layoutNodeO2 = layoutNodeLayoutDelegate.f9706a.O();
            UsageByParent usageByParent = layoutNodeLayoutDelegate.f9706a.E;
            if (layoutNodeO2 == null || usageByParent == UsageByParent.NotUsed) {
                return;
            }
            while (layoutNodeO2.E == usageByParent && (layoutNodeO = layoutNodeO2.O()) != null) {
                layoutNodeO2 = layoutNodeO;
            }
            int i3 = MeasurePassDelegate.WhenMappings.f9760b[usageByParent.ordinal()];
            if (i3 == 1) {
                m0(layoutNodeO2, z, 6);
            } else if (i3 == 2) {
                layoutNodeO2.l0(z);
            } else {
                md.k("Intrinsics isn't used by the parent");
            }
        }
    }

    public static void n0(LayoutNode layoutNode) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.I;
        if (WhenMappings.f9698a[layoutNodeLayoutDelegate.d.ordinal()] != 1) {
            ct0.o(layoutNodeLayoutDelegate.d, "Unexpected state ");
            return;
        }
        if (layoutNodeLayoutDelegate.f9709e) {
            k0(layoutNode, true, 6);
            return;
        }
        if (layoutNodeLayoutDelegate.f9710f) {
            layoutNode.j0(true);
        }
        if (layoutNode.K()) {
            m0(layoutNode, true, 6);
        } else if (layoutNode.J()) {
            layoutNode.l0(true);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public final boolean A() {
        return this.I.p.u;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    /* JADX INFO: renamed from: B, reason: from getter */
    public final boolean getS() {
        return this.S;
    }

    public final void C() {
        LookaheadAlignmentLines lookaheadAlignmentLines;
        Owner owner = this.p;
        if (owner == null) {
            StringBuilder sb = new StringBuilder("Cannot detach node that is already detached!  Tree: ");
            LayoutNode layoutNodeO = O();
            sb.append(layoutNodeO != null ? layoutNodeO.v(0) : null);
            InlineClassHelperKt.d(sb.toString());
            os.d();
            return;
        }
        LayoutNode layoutNodeO2 = O();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
        if (layoutNodeO2 != null) {
            layoutNodeO2.V();
            layoutNodeO2.X();
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
            UsageByParent usageByParent = UsageByParent.NotUsed;
            measurePassDelegate.m = usageByParent;
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.f9734k = usageByParent;
            }
        }
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = layoutNodeLayoutDelegate.p.z;
        layoutNodeAlignmentLines.f9623b = true;
        layoutNodeAlignmentLines.f9624c = false;
        layoutNodeAlignmentLines.f9625e = false;
        layoutNodeAlignmentLines.d = false;
        layoutNodeAlignmentLines.f9626f = false;
        layoutNodeAlignmentLines.g = false;
        layoutNodeAlignmentLines.f9627h = null;
        LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
        if (lookaheadPassDelegate2 != null && (lookaheadAlignmentLines = lookaheadPassDelegate2.t) != null) {
            lookaheadAlignmentLines.f9623b = true;
            lookaheadAlignmentLines.f9624c = false;
            lookaheadAlignmentLines.f9625e = false;
            lookaheadAlignmentLines.d = false;
            lookaheadAlignmentLines.f9626f = false;
            lookaheadAlignmentLines.g = false;
            lookaheadAlignmentLines.f9627h = null;
        }
        NodeChain nodeChain = this.H;
        Modifier.Node node = nodeChain.f9773e;
        NodeCoordinator nodeCoordinator = nodeChain.f9772c.t;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.c(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.t) {
            nodeCoordinator2.X1();
            if (nodeCoordinator2.q.A()) {
                nodeCoordinator2.S1();
            }
        }
        Function1 function1 = this.P;
        if (function1 != null) {
            function1.invoke(owner);
        }
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.f8611f) {
            if (node2.o) {
                node2.e2();
            }
        }
        this.s = true;
        MutableVector mutableVector = this.l.f9768a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((LayoutNode) objArr[i3]).C();
        }
        this.s = false;
        while (node != null) {
            if (node.o) {
                node.Y1();
            }
            node = node.f8611f;
        }
        owner.D(this);
        owner.getRectManager().f(this);
        this.p = null;
        r0(null);
        this.r = 0;
        MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.p;
        measurePassDelegate2.f9757j = Integer.MAX_VALUE;
        measurePassDelegate2.f9756i = Integer.MAX_VALUE;
        measurePassDelegate2.u = false;
        LookaheadPassDelegate lookaheadPassDelegate3 = layoutNodeLayoutDelegate.q;
        if (lookaheadPassDelegate3 != null) {
            lookaheadPassDelegate3.f9733j = Integer.MAX_VALUE;
            lookaheadPassDelegate3.f9732i = Integer.MAX_VALUE;
            lookaheadPassDelegate3.s = LookaheadPassDelegate.PlacedState.IsNotPlaced;
        }
        if (nodeChain.d(8)) {
            SemanticsConfiguration semanticsConfiguration = this.u;
            this.u = null;
            this.t = false;
            MutableObjectList mutableObjectList = owner.getSemanticsOwner().d;
            Object[] objArr2 = mutableObjectList.f3345a;
            int i4 = mutableObjectList.f3346b;
            for (int i5 = 0; i5 < i4; i5++) {
                ((SemanticsListener) objArr2[i5]).a(this, semanticsConfiguration);
            }
            owner.G();
        }
    }

    public final void D(Canvas canvas, GraphicsLayer graphicsLayer) throws Throwable {
        try {
            this.H.d.d1(canvas, graphicsLayer);
        } catch (Throwable th) {
            p0(th);
            throw null;
        }
    }

    public final List F() {
        LookaheadPassDelegate lookaheadPassDelegate = this.I.q;
        lookaheadPassDelegate.getClass();
        MutableVector mutableVector = lookaheadPassDelegate.u;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.g;
        layoutNodeLayoutDelegate.f9706a.H();
        if (!lookaheadPassDelegate.v) {
            return mutableVector.i();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.f9706a;
        MutableVector mutableVectorR = layoutNode.R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i3];
            if (mutableVector.d <= i3) {
                LookaheadPassDelegate lookaheadPassDelegate2 = layoutNode2.I.q;
                lookaheadPassDelegate2.getClass();
                mutableVector.b(lookaheadPassDelegate2);
            } else {
                LookaheadPassDelegate lookaheadPassDelegate3 = layoutNode2.I.q;
                lookaheadPassDelegate3.getClass();
                Object[] objArr2 = mutableVector.f8165b;
                Object obj = objArr2[i3];
                objArr2[i3] = lookaheadPassDelegate3;
            }
        }
        mutableVector.p(layoutNode.H().size(), mutableVector.d);
        lookaheadPassDelegate.v = false;
        return mutableVector.i();
    }

    public final List G() {
        return this.I.p.t0();
    }

    public final List H() {
        return R().i();
    }

    public final List I() {
        return this.l.f9768a.i();
    }

    public final boolean J() {
        return this.I.p.x;
    }

    public final boolean K() {
        return this.I.p.w;
    }

    public final UsageByParent L() {
        return this.I.p.m;
    }

    public final UsageByParent M() {
        UsageByParent usageByParent;
        LookaheadPassDelegate lookaheadPassDelegate = this.I.q;
        return (lookaheadPassDelegate == null || (usageByParent = lookaheadPassDelegate.f9734k) == null) ? UsageByParent.NotUsed : usageByParent;
    }

    public final IntrinsicsPolicy N() {
        IntrinsicsPolicy intrinsicsPolicy = this.z;
        if (intrinsicsPolicy != null) {
            return intrinsicsPolicy;
        }
        IntrinsicsPolicy intrinsicsPolicy2 = new IntrinsicsPolicy(this, this.y);
        this.z = intrinsicsPolicy2;
        return intrinsicsPolicy2;
    }

    public final LayoutNode O() {
        LayoutNode layoutNode = this.o;
        while (layoutNode != null && layoutNode.f9688b) {
            layoutNode = layoutNode.o;
        }
        return layoutNode;
    }

    public final int P() {
        return this.I.p.f9757j;
    }

    public final MutableVector Q() {
        boolean z = this.x;
        MutableVector mutableVector = this.w;
        if (z) {
            mutableVector.j();
            mutableVector.f(mutableVector.d, R());
            mutableVector.r(Y);
            this.x = false;
        }
        return mutableVector;
    }

    public final MutableVector R() {
        s0();
        if (this.f9695k == 0) {
            return this.l.f9768a;
        }
        MutableVector mutableVector = this.m;
        mutableVector.getClass();
        return mutableVector;
    }

    public final void S(long j2, HitTestResult hitTestResult, int i2, boolean z) {
        NodeChain nodeChain = this.H;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        NodeCoordinator.Companion companion = NodeCoordinator.R;
        long jH1 = nodeCoordinator.h1(j2, true);
        NodeCoordinator nodeCoordinator2 = nodeChain.d;
        NodeCoordinator.R.getClass();
        nodeCoordinator2.E1(NodeCoordinator.Y, jH1, hitTestResult, i2, z);
    }

    public final void T(long j2, HitTestResult hitTestResult, boolean z) {
        NodeChain nodeChain = this.H;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        NodeCoordinator.Companion companion = NodeCoordinator.R;
        long jH1 = nodeCoordinator.h1(j2, true);
        NodeCoordinator nodeCoordinator2 = nodeChain.d;
        NodeCoordinator.R.getClass();
        NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1 = NodeCoordinator.Z;
        PointerType.f9367b.getClass();
        nodeCoordinator2.E1(nodeCoordinator$Companion$SemanticsSource$1, jH1, hitTestResult, PointerType.f9368c, z);
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return c();
    }

    public final void U(int i2, LayoutNode layoutNode) {
        if (layoutNode.o != null && layoutNode.p != null) {
            InlineClassHelperKt.c(E(layoutNode));
        }
        layoutNode.o = this;
        MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.l;
        mutableVectorWithMutationTracking.f9768a.a(i2, layoutNode);
        mutableVectorWithMutationTracking.f9769b.mo47invoke();
        f0();
        if (layoutNode.f9688b) {
            this.f9695k++;
        }
        Z();
        Owner owner = this.p;
        if (owner != null) {
            layoutNode.s(owner);
        }
        if (layoutNode.I.l > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
            layoutNodeLayoutDelegate.d(layoutNodeLayoutDelegate.l + 1);
        }
        if (layoutNode.R > 0) {
            q0(this.R + 1);
        }
    }

    public final void V() {
        if (this.L) {
            NodeChain nodeChain = this.H;
            NodeCoordinator nodeCoordinator = nodeChain.f9772c;
            NodeCoordinator nodeCoordinator2 = nodeChain.d.u;
            this.K = null;
            while (!Intrinsics.c(nodeCoordinator, nodeCoordinator2)) {
                if ((nodeCoordinator != null ? nodeCoordinator.P : null) != null) {
                    this.K = nodeCoordinator;
                    break;
                }
                nodeCoordinator = nodeCoordinator != null ? nodeCoordinator.u : null;
            }
            this.L = false;
        }
        NodeCoordinator nodeCoordinator3 = this.K;
        if (nodeCoordinator3 != null && nodeCoordinator3.P == null) {
            throw a.s("layer was not set. This error is usually caused by operating off of the UI thread. Did you call invalidate() instead of postInvalidate()?");
        }
        if (nodeCoordinator3 != null) {
            nodeCoordinator3.H1();
            return;
        }
        LayoutNode layoutNodeO = O();
        if (layoutNodeO != null) {
            layoutNodeO.V();
            return;
        }
        Owner owner = this.p;
        if (owner != null) {
            owner.m();
        }
    }

    public final void W() {
        NodeChain nodeChain = this.H;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.f9772c;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            OwnedLayer ownedLayer = layoutModifierNodeCoordinator.P;
            if (ownedLayer != null) {
                ownedLayer.invalidate();
            }
            nodeCoordinator = layoutModifierNodeCoordinator.t;
        }
        OwnedLayer ownedLayer2 = nodeChain.f9772c.P;
        if (ownedLayer2 != null) {
            ownedLayer2.invalidate();
        }
    }

    public final void X() {
        if (this.f9688b) {
            LayoutNode layoutNodeO = O();
            if (layoutNodeO != null) {
                layoutNodeO.X();
                return;
            }
            return;
        }
        if (this.f9694j != null) {
            k0(this, false, 7);
        } else {
            m0(this, false, 7);
        }
    }

    public final void Y() {
        if (this.v) {
            return;
        }
        if (this.H.f9771b.g != null || this.N != null) {
            this.t = true;
            return;
        }
        SemanticsConfiguration semanticsConfiguration = this.u;
        this.v = true;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.f71921b = new SemanticsConfiguration();
        OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(this).getSnapshotObserver();
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$calculateSemanticsConfiguration$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
            /* JADX WARN: Type inference failed for: r2v10 */
            /* JADX WARN: Type inference failed for: r2v11 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.ui.Modifier$Node] */
            /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v6 */
            /* JADX WARN: Type inference failed for: r2v7 */
            /* JADX WARN: Type inference failed for: r2v8 */
            /* JADX WARN: Type inference failed for: r2v9 */
            /* JADX WARN: Type inference failed for: r3v0 */
            /* JADX WARN: Type inference failed for: r3v1 */
            /* JADX WARN: Type inference failed for: r3v10 */
            /* JADX WARN: Type inference failed for: r3v11 */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
            /* JADX WARN: Type inference failed for: r3v4 */
            /* JADX WARN: Type inference failed for: r3v5 */
            /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
            /* JADX WARN: Type inference failed for: r3v8 */
            /* JADX WARN: Type inference failed for: r3v9 */
            /* JADX WARN: Type inference failed for: r4v11 */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                NodeChain nodeChain = this.f9700c.H;
                if ((nodeChain.f9774f.f8610e & 8) != 0) {
                    for (Modifier.Node node = nodeChain.f9773e; node != null; node = node.f8611f) {
                        if ((node.d & 8) != 0) {
                            ?? B = node;
                            ?? mutableVector = 0;
                            while (B != 0) {
                                if (B instanceof SemanticsModifierNode) {
                                    SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) B;
                                    boolean q = semanticsModifierNode.getQ();
                                    Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                                    if (q) {
                                        SemanticsConfiguration semanticsConfiguration2 = new SemanticsConfiguration();
                                        ref$ObjectRef2.f71921b = semanticsConfiguration2;
                                        semanticsConfiguration2.f10315f = true;
                                    }
                                    if (semanticsModifierNode.getP()) {
                                        ((SemanticsConfiguration) ref$ObjectRef2.f71921b).f10314e = true;
                                    }
                                    semanticsModifierNode.L1((SemanticsPropertyReceiver) ref$ObjectRef2.f71921b);
                                } else if ((B.d & 8) != 0 && (B instanceof DelegatingNode)) {
                                    Modifier.Node node2 = ((DelegatingNode) B).q;
                                    int i2 = 0;
                                    while (node2 != null) {
                                        if ((node2.d & 8) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                B = B;
                                                mutableVector = mutableVector;
                                                mutableVector = mutableVector;
                                                B = node2;
                                            } else {
                                                if (mutableVector == 0) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (B != 0) {
                                                    mutableVector.b(B);
                                                    B = 0;
                                                }
                                                mutableVector.b(node2);
                                            }
                                        } else {
                                            B = B;
                                            mutableVector = mutableVector;
                                        }
                                        node2 = node2.g;
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                    if (i2 == 1) {
                                        B = B;
                                        mutableVector = mutableVector;
                                    } else {
                                        B = B;
                                        mutableVector = mutableVector;
                                    }
                                }
                                B = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                    }
                }
                return Unit.f71739a;
            }
        };
        snapshotObserver.f9812a.e(this, snapshotObserver.d, function0);
        this.v = false;
        this.u = (SemanticsConfiguration) ref$ObjectRef.f71921b;
        this.t = false;
        Owner ownerA = LayoutNodeKt.a(this);
        MutableObjectList mutableObjectList = ownerA.getSemanticsOwner().d;
        Object[] objArr = mutableObjectList.f3345a;
        int i2 = mutableObjectList.f3346b;
        for (int i3 = 0; i3 < i2; i3++) {
            ((SemanticsListener) objArr[i3]).a(this, semanticsConfiguration);
        }
        ownerA.G();
    }

    public final void Z() {
        LayoutNode layoutNode;
        if (this.f9695k > 0) {
            this.n = true;
        }
        if (!this.f9688b || (layoutNode = this.o) == null) {
            return;
        }
        layoutNode.Z();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        AndroidViewHolder androidViewHolder = this.q;
        if (androidViewHolder != null) {
            androidViewHolder.a();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.J;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.a();
        }
        NodeChain nodeChain = this.H;
        NodeCoordinator nodeCoordinator = nodeChain.f9772c.t;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.c(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.t) {
            nodeCoordinator2.Q1();
        }
    }

    public final Boolean a0() {
        LookaheadPassDelegate lookaheadPassDelegate = this.I.q;
        if (lookaheadPassDelegate != null) {
            return Boolean.valueOf(lookaheadPassDelegate.s != LookaheadPassDelegate.PlacedState.IsNotPlaced);
        }
        return null;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void b(int i2) {
    }

    public final void b0() {
        LayoutNode layoutNodeO;
        if (this.E == UsageByParent.NotUsed) {
            u();
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.I.q;
        lookaheadPassDelegate.getClass();
        boolean z = true;
        try {
            lookaheadPassDelegate.f9731h = true;
            if (!lookaheadPassDelegate.m) {
                InlineClassHelperKt.c("replace() called on item that was not placed");
            }
            lookaheadPassDelegate.D = false;
            if (lookaheadPassDelegate.s == LookaheadPassDelegate.PlacedState.IsNotPlaced) {
                z = false;
            }
            lookaheadPassDelegate.J0(lookaheadPassDelegate.p, lookaheadPassDelegate.r, lookaheadPassDelegate.q);
            if (z && !lookaheadPassDelegate.D && (layoutNodeO = lookaheadPassDelegate.g.f9706a.O()) != null) {
                layoutNodeO.j0(false);
            }
        } finally {
            lookaheadPassDelegate.f9731h = false;
        }
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public final boolean c() {
        return this.p != null;
    }

    public final void c0(int i2, int i3, int i4) {
        if (i2 == i3) {
            return;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i2 > i3 ? i2 + i5 : i2;
            int i7 = i2 > i3 ? i3 + i5 : (i3 + i4) - 2;
            MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.l;
            MutableVector mutableVector = mutableVectorWithMutationTracking.f9768a;
            Function0 function0 = mutableVectorWithMutationTracking.f9769b;
            Object objO = mutableVector.o(i6);
            function0.mo47invoke();
            mutableVectorWithMutationTracking.f9768a.a(i7, (LayoutNode) objO);
            function0.mo47invoke();
        }
        f0();
        Z();
        X();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void d() {
        AndroidViewHolder androidViewHolder = this.q;
        if (androidViewHolder != null) {
            androidViewHolder.d();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.J;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.j(true);
        }
        this.S = true;
        Modifier.Node node = this.H.f9773e;
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.f8611f) {
            if (node2.o) {
                node2.c2();
            }
        }
        for (Modifier.Node node3 = node; node3 != null; node3 = node3.f8611f) {
            if (node3.o) {
                node3.e2();
            }
        }
        while (node != null) {
            if (node.o) {
                node.Y1();
            }
            node = node.f8611f;
        }
        if (c()) {
            this.u = null;
            this.t = false;
        }
        Owner owner = this.p;
        if (owner != null) {
            owner.I(this);
        }
    }

    public final void d0(LayoutNode layoutNode) {
        if (layoutNode.I.l > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
            layoutNodeLayoutDelegate.d(layoutNodeLayoutDelegate.l - 1);
        }
        if (this.p != null) {
            layoutNode.C();
        }
        layoutNode.o = null;
        if (layoutNode.R > 0) {
            q0(this.R - 1);
        }
        layoutNode.H.d.u = null;
        if (layoutNode.f9688b) {
            this.f9695k--;
            MutableVector mutableVector = layoutNode.l.f9768a;
            Object[] objArr = mutableVector.f8165b;
            int i2 = mutableVector.d;
            for (int i3 = 0; i3 < i2; i3++) {
                ((LayoutNode) objArr[i3]).H.d.u = null;
            }
        }
        Z();
        f0();
    }

    @Override // androidx.compose.ui.layout.Remeasurement
    public final void e() {
        if (this.f9694j != null) {
            k0(this, false, 5);
        } else {
            m0(this, false, 5);
        }
        MeasurePassDelegate measurePassDelegate = this.I.p;
        Constraints constraints = measurePassDelegate.f9758k ? new Constraints(measurePassDelegate.f9550e) : null;
        Owner owner = this.p;
        if (constraints != null) {
            if (owner != null) {
                owner.y(this, constraints.f10999a);
            }
        } else if (owner != null) {
            owner.c(true);
        }
    }

    public final void e0(NodeCoordinator nodeCoordinator) {
        Owner owner = this.p;
        RectManager rectManager = owner != null ? owner.getRectManager() : null;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
        boolean z = layoutNodeLayoutDelegate.d != LayoutState.Idle || K() || J();
        if (this.f9692h && rectManager != null) {
            if (nodeCoordinator == this.H.d) {
                this.g = true;
                if (!z) {
                    rectManager.e(this);
                }
            } else {
                this.f9691f = true;
                MutableVector mutableVectorR = R();
                Object[] objArr = mutableVectorR.f8165b;
                int i2 = mutableVectorR.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    LayoutNode layoutNode = (LayoutNode) objArr[i3];
                    layoutNode.g = true;
                    if (!z) {
                        rectManager.e(layoutNode);
                    }
                }
                if (this.f9692h) {
                    rectManager.f10387e = true;
                    RectList rectList = rectManager.f10385b;
                    int i4 = this.f9689c & 33554431;
                    long[] jArr = rectList.f10378a;
                    int i5 = rectList.f10380c;
                    for (int i6 = 0; i6 < jArr.length - 2 && i6 < i5; i6 += 3) {
                        int i7 = i6 + 2;
                        long j2 = jArr[i7];
                        if ((((int) j2) & 33554431) == i4) {
                            jArr[i7] = (((j2 >> 63) & 1) << 60) | j2;
                            break;
                        }
                    }
                }
                rectManager.h();
            }
        }
        layoutNodeLayoutDelegate.p.L0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void f(ViewConfiguration viewConfiguration) {
        if (Intrinsics.c(this.C, viewConfiguration)) {
            return;
        }
        this.C = viewConfiguration;
        Modifier.Node node = this.H.f9774f;
        if ((node.f8610e & 16) != 0) {
            while (node != null) {
                if ((node.d & 16) != 0) {
                    ?? B = node;
                    ?? mutableVector = 0;
                    while (B != 0) {
                        if (B instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) B).N1();
                        } else if ((B.d & 16) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node2 = ((DelegatingNode) B).q;
                            int i2 = 0;
                            B = B;
                            mutableVector = mutableVector;
                            while (node2 != null) {
                                if ((node2.d & 16) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        mutableVector = mutableVector;
                                        B = node2;
                                    } else {
                                        if (mutableVector == 0) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (B != 0) {
                                            mutableVector.b(B);
                                            B = 0;
                                        }
                                        mutableVector.b(node2);
                                    }
                                }
                                node2 = node2.g;
                                B = B;
                                mutableVector = mutableVector;
                            }
                            if (i2 == 1) {
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                }
                if ((node.f8610e & 16) == 0) {
                    return;
                } else {
                    node = node.g;
                }
            }
        }
    }

    public final void f0() {
        if (!this.f9688b) {
            this.x = true;
            return;
        }
        LayoutNode layoutNodeO = O();
        if (layoutNodeO != null) {
            layoutNodeO.f0();
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void g(LayoutDirection layoutDirection) {
        if (this.B != layoutDirection) {
            this.B = layoutDirection;
            X();
            LayoutNode layoutNodeO = O();
            if (layoutNodeO != null) {
                layoutNodeO.V();
            } else {
                Owner owner = this.p;
                if (owner != null) {
                    owner.m();
                }
            }
            W();
            for (Modifier.Node node = this.H.f9774f; node != null; node = node.g) {
                node.p0();
            }
        }
    }

    public final void g0() {
        MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.l;
        int i2 = mutableVectorWithMutationTracking.f9768a.d;
        while (true) {
            i2--;
            if (-1 >= i2) {
                mutableVectorWithMutationTracking.f9768a.j();
                mutableVectorWithMutationTracking.f9769b.mo47invoke();
                return;
            }
            d0((LayoutNode) mutableVectorWithMutationTracking.f9768a.f8165b[i2]);
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void h() {
        RectManager rectManager;
        RectManager rectManager2;
        if (!c()) {
            InlineClassHelperKt.a("onReuse is only expected on attached node");
        }
        AndroidViewHolder androidViewHolder = this.q;
        if (androidViewHolder != null) {
            androidViewHolder.h();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.J;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.j(false);
        }
        this.v = false;
        boolean z = this.S;
        NodeChain nodeChain = this.H;
        if (z) {
            this.S = false;
        } else {
            Modifier.Node node = nodeChain.f9773e;
            for (Modifier.Node node2 = node; node2 != null; node2 = node2.f8611f) {
                if (node2.o) {
                    node2.c2();
                }
            }
            for (Modifier.Node node3 = node; node3 != null; node3 = node3.f8611f) {
                if (node3.o) {
                    node3.e2();
                }
            }
            while (node != null) {
                if (node.o) {
                    node.Y1();
                }
                node = node.f8611f;
            }
        }
        int i2 = this.f9689c;
        Owner owner = this.p;
        if (owner != null && (rectManager2 = owner.getRectManager()) != null) {
            rectManager2.f(this);
        }
        this.f9689c = SemanticsModifierKt.f10317a.addAndGet(1);
        Owner owner2 = this.p;
        if (owner2 != null) {
            owner2.t(i2, this);
        }
        for (Modifier.Node node4 = nodeChain.f9774f; node4 != null; node4 = node4.g) {
            node4.X1();
        }
        nodeChain.e();
        if (nodeChain.d(8)) {
            Y();
        }
        n0(this);
        Owner owner3 = this.p;
        if (owner3 != null) {
            owner3.w(i2, this);
        }
        Owner owner4 = this.p;
        if (owner4 == null || (rectManager = owner4.getRectManager()) == null) {
            return;
        }
        rectManager.e(this);
    }

    public final void h0(int i2, int i3) {
        if (i3 < 0) {
            InlineClassHelperKt.a("count (" + i3 + ") must be greater than 0");
        }
        int i4 = (i3 + i2) - 1;
        if (i2 > i4) {
            return;
        }
        while (true) {
            MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.l;
            d0((LayoutNode) mutableVectorWithMutationTracking.f9768a.f8165b[i4]);
            Object objO = mutableVectorWithMutationTracking.f9768a.o(i4);
            mutableVectorWithMutationTracking.f9769b.mo47invoke();
            if (i4 == i2) {
                return;
            } else {
                i4--;
            }
        }
    }

    @Override // androidx.compose.ui.semantics.SemanticsInfo
    public final SemanticsConfiguration i() {
        if (c() && !this.S && this.H.d(8)) {
            return this.u;
        }
        return null;
    }

    public final void i0() {
        LayoutNode layoutNodeO;
        if (this.E == UsageByParent.NotUsed) {
            u();
        }
        MeasurePassDelegate measurePassDelegate = this.I.p;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.g;
        try {
            measurePassDelegate.f9755h = true;
            if (!measurePassDelegate.l) {
                InlineClassHelperKt.c("replace called on unplaced item");
            }
            boolean z = measurePassDelegate.u;
            measurePassDelegate.I0(measurePassDelegate.o, measurePassDelegate.r, measurePassDelegate.p, measurePassDelegate.q);
            if (z && !measurePassDelegate.H && (layoutNodeO = layoutNodeLayoutDelegate.f9706a.O()) != null) {
                layoutNodeO.l0(false);
            }
            measurePassDelegate.f9755h = false;
        } catch (Throwable th) {
            try {
                layoutNodeLayoutDelegate.f9706a.p0(th);
                throw null;
            } catch (Throwable th2) {
                measurePassDelegate.f9755h = false;
                throw th2;
            }
        }
    }

    @Override // androidx.compose.ui.semantics.SemanticsInfo
    public final LayoutNode j() {
        return O();
    }

    public final void j0(boolean z) {
        Owner owner;
        if (this.f9688b || (owner = this.p) == null) {
            return;
        }
        owner.e(this, true, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // androidx.compose.ui.node.Owner.OnLayoutCompletedListener
    public final void k() {
        Modifier.Node node;
        NodeChain nodeChain = this.H;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.f9772c;
        boolean zG = NodeKindKt.g(4194304);
        if (zG) {
            node = innerNodeCoordinator.h0;
        } else {
            node = innerNodeCoordinator.h0.f8611f;
            if (node == null) {
                return;
            }
        }
        NodeCoordinator.Companion companion = NodeCoordinator.R;
        for (Modifier.Node nodeW1 = innerNodeCoordinator.w1(zG); nodeW1 != null && (nodeW1.f8610e & 4194304) != 0; nodeW1 = nodeW1.g) {
            if ((nodeW1.d & 4194304) != 0) {
                ?? B = nodeW1;
                ?? mutableVector = 0;
                while (B != 0) {
                    if (B instanceof LayoutAwareModifierNode) {
                        ((LayoutAwareModifierNode) B).h(nodeChain.f9772c);
                    } else if ((B.d & 4194304) != 0 && (B instanceof DelegatingNode)) {
                        Modifier.Node node2 = ((DelegatingNode) B).q;
                        int i2 = 0;
                        B = B;
                        mutableVector = mutableVector;
                        while (node2 != null) {
                            if ((node2.d & 4194304) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    mutableVector = mutableVector;
                                    B = node2;
                                } else {
                                    if (mutableVector == 0) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (B != 0) {
                                        mutableVector.b(B);
                                        B = 0;
                                    }
                                    mutableVector.b(node2);
                                }
                            }
                            node2 = node2.g;
                            B = B;
                            mutableVector = mutableVector;
                        }
                        if (i2 == 1) {
                        }
                    }
                    B = DelegatableNodeKt.b(mutableVector);
                }
            }
            if (nodeW1 == node) {
                return;
            }
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void l(MeasurePolicy measurePolicy) {
        if (Intrinsics.c(this.y, measurePolicy)) {
            return;
        }
        this.y = measurePolicy;
        IntrinsicsPolicy intrinsicsPolicy = this.z;
        if (intrinsicsPolicy != null) {
            ((SnapshotMutableStateImpl) intrinsicsPolicy.f9677b).setValue(measurePolicy);
        }
        X();
    }

    public final void l0(boolean z) {
        Owner owner;
        if (this.f9688b || (owner = this.p) == null) {
            return;
        }
        owner.e(this, false, z);
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void m(Modifier modifier) {
        if (this.f9688b && this.M != Modifier.Companion.f8607b) {
            InlineClassHelperKt.a("Modifiers are not supported on virtual LayoutNodes");
        }
        if (this.S) {
            InlineClassHelperKt.a("modifier is updated when deactivated");
        }
        if (!c()) {
            this.N = modifier;
            return;
        }
        r(modifier);
        if (this.t) {
            Y();
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void n(Density density) {
        if (Intrinsics.c(this.A, density)) {
            return;
        }
        this.A = density;
        X();
        LayoutNode layoutNodeO = O();
        if (layoutNodeO != null) {
            layoutNodeO.V();
        } else {
            Owner owner = this.p;
            if (owner != null) {
                owner.m();
            }
        }
        W();
        for (Modifier.Node node = this.H.f9774f; node != null; node = node.g) {
            node.C();
        }
    }

    @Override // androidx.compose.ui.semantics.SemanticsInfo
    public final List o() {
        return H();
    }

    public final void o0() {
        MutableVector mutableVectorR = R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i3];
            UsageByParent usageByParent = layoutNode.F;
            layoutNode.E = usageByParent;
            if (usageByParent != UsageByParent.NotUsed) {
                layoutNode.o0();
            }
        }
    }

    @Override // androidx.compose.ui.semantics.SemanticsInfo
    public final boolean p() {
        return this.H.d.L1();
    }

    public final void p0(Throwable th) throws Throwable {
        CompositionErrorContext compositionErrorContext = (CompositionErrorContext) this.D.a(CompositionErrorContextKt.f8561a);
        if (compositionErrorContext == null) {
            throw th;
        }
        compositionErrorContext.d(this, th);
        throw th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override // androidx.compose.ui.node.ComposeUiNode
    public final void q(CompositionLocalMap compositionLocalMap) {
        this.D = compositionLocalMap;
        n((Density) compositionLocalMap.a(CompositionLocalsKt.f10031h));
        g((LayoutDirection) compositionLocalMap.a(CompositionLocalsKt.n));
        f((ViewConfiguration) compositionLocalMap.a(CompositionLocalsKt.u));
        Modifier.Node node = this.H.f9774f;
        if ((node.f8610e & 32768) != 0) {
            while (node != null) {
                if ((node.d & 32768) != 0) {
                    ?? B = node;
                    ?? mutableVector = 0;
                    while (B != 0) {
                        if (B instanceof CompositionLocalConsumerModifierNode) {
                            Modifier.Node f8608b = ((CompositionLocalConsumerModifierNode) B).getF8608b();
                            if (f8608b.o) {
                                NodeKindKt.c(f8608b);
                            } else {
                                f8608b.f8615k = true;
                            }
                        } else if ((B.d & 32768) != 0 && (B instanceof DelegatingNode)) {
                            Modifier.Node node2 = ((DelegatingNode) B).q;
                            int i2 = 0;
                            while (node2 != null) {
                                if ((node2.d & 32768) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        B = B;
                                        mutableVector = mutableVector;
                                        mutableVector = mutableVector;
                                        B = node2;
                                    } else {
                                        if (mutableVector == 0) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (B != 0) {
                                            mutableVector.b(B);
                                            B = 0;
                                        }
                                        mutableVector.b(node2);
                                    }
                                } else {
                                    B = B;
                                    mutableVector = mutableVector;
                                }
                                node2 = node2.g;
                                B = B;
                                mutableVector = mutableVector;
                            }
                            if (i2 == 1) {
                                B = B;
                                mutableVector = mutableVector;
                            } else {
                                B = B;
                                mutableVector = mutableVector;
                            }
                        }
                        B = DelegatableNodeKt.b(mutableVector);
                    }
                }
                if ((node.f8610e & 32768) == 0) {
                    return;
                } else {
                    node = node.g;
                }
            }
        }
    }

    public final void q0(int i2) {
        LayoutNode layoutNodeO;
        LayoutNode layoutNodeO2;
        int i3 = this.R;
        if (i3 != i2) {
            if (i2 > 0 && i3 == 0 && (layoutNodeO2 = O()) != null) {
                layoutNodeO2.q0(layoutNodeO2.R + 1);
            }
            if (i2 == 0 && this.R > 0 && (layoutNodeO = O()) != null) {
                layoutNodeO.q0(layoutNodeO.R - 1);
            }
            this.R = i2;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5401. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final void r(androidx.compose.ui.Modifier r20) {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.r(androidx.compose.ui.Modifier):void");
    }

    public final void r0(LayoutNode layoutNode) {
        if (Intrinsics.c(layoutNode, this.f9694j)) {
            return;
        }
        this.f9694j = layoutNode;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
        if (layoutNode != null) {
            if (layoutNodeLayoutDelegate.q == null) {
                layoutNodeLayoutDelegate.q = new LookaheadPassDelegate(layoutNodeLayoutDelegate);
            }
            NodeChain nodeChain = this.H;
            NodeCoordinator nodeCoordinator = nodeChain.f9772c.t;
            for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.c(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.t) {
                nodeCoordinator2.f1();
            }
        } else {
            layoutNodeLayoutDelegate.q = null;
            layoutNodeLayoutDelegate.f9710f = false;
            layoutNodeLayoutDelegate.f9709e = false;
        }
        X();
    }

    public final void s(Owner owner) {
        LayoutNode layoutNode;
        if (this.p != null) {
            InlineClassHelperKt.c("Cannot attach " + this + " as it already is attached.  Tree: " + v(0));
        }
        LayoutNode layoutNode2 = this.o;
        if (layoutNode2 != null && !Intrinsics.c(layoutNode2.p, owner)) {
            StringBuilder sb = new StringBuilder("Attaching to a different owner(");
            sb.append(owner);
            sb.append(") than the parent's owner(");
            LayoutNode layoutNodeO = O();
            sb.append(layoutNodeO != null ? layoutNodeO.p : null);
            sb.append("). This tree: ");
            sb.append(v(0));
            sb.append(" Parent tree: ");
            LayoutNode layoutNode3 = this.o;
            sb.append(layoutNode3 != null ? layoutNode3.v(0) : null);
            InlineClassHelperKt.c(sb.toString());
        }
        LayoutNode layoutNodeO2 = O();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
        if (layoutNodeO2 == null) {
            layoutNodeLayoutDelegate.p.u = true;
            owner.getRectManager().e(this);
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.s = LookaheadPassDelegate.PlacedState.IsPlacedInLookahead;
            }
        }
        NodeChain nodeChain = this.H;
        nodeChain.d.u = layoutNodeO2 != null ? layoutNodeO2.H.f9772c : null;
        this.p = owner;
        this.r = (layoutNodeO2 != null ? layoutNodeO2.r : -1) + 1;
        Modifier modifier = this.N;
        if (modifier != null) {
            r(modifier);
        }
        this.N = null;
        owner.q(this);
        if (this.f9693i) {
            r0(this);
        } else {
            LayoutNode layoutNode4 = this.o;
            if (layoutNode4 == null || (layoutNode = layoutNode4.f9694j) == null) {
                layoutNode = this.f9694j;
            }
            r0(layoutNode);
            if (this.f9694j == null && nodeChain.d(512)) {
                r0(this);
            }
        }
        if (!this.S) {
            for (Modifier.Node node = nodeChain.f9774f; node != null; node = node.g) {
                node.X1();
            }
        }
        MutableVector mutableVector = this.l.f9768a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((LayoutNode) objArr[i3]).s(owner);
        }
        if (!this.S) {
            nodeChain.e();
        }
        X();
        if (layoutNodeO2 != null) {
            layoutNodeO2.X();
        }
        Function1 function1 = this.O;
        if (function1 != null) {
            function1.invoke(owner);
        }
        layoutNodeLayoutDelegate.j();
        if (!this.S && nodeChain.d(8)) {
            Y();
        }
        owner.n(this);
    }

    public final void s0() {
        if (this.f9695k <= 0 || !this.n) {
            return;
        }
        this.n = false;
        MutableVector mutableVector = this.m;
        if (mutableVector == null) {
            mutableVector = new MutableVector(new LayoutNode[16], 0);
            this.m = mutableVector;
        }
        mutableVector.j();
        MutableVector mutableVector2 = this.l.f9768a;
        Object[] objArr = mutableVector2.f8165b;
        int i2 = mutableVector2.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i3];
            if (layoutNode.f9688b) {
                mutableVector.f(mutableVector.d, layoutNode.R());
            } else {
                mutableVector.b(layoutNode);
            }
        }
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.I;
        layoutNodeLayoutDelegate.p.B = true;
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.v = true;
        }
    }

    public final void t() {
        this.F = this.E;
        this.E = UsageByParent.NotUsed;
        MutableVector mutableVectorR = R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i3];
            if (layoutNode.E != UsageByParent.NotUsed) {
                layoutNode.t();
            }
        }
    }

    public final String toString() {
        return JvmActuals_jvmKt.a(this) + " children: " + H().size() + " measurePolicy: " + this.y + " deactivated: " + this.S;
    }

    public final void u() {
        this.F = this.E;
        this.E = UsageByParent.NotUsed;
        MutableVector mutableVectorR = R();
        Object[] objArr = mutableVectorR.f8165b;
        int i2 = mutableVectorR.d;
        for (int i3 = 0; i3 < i2; i3++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i3];
            if (layoutNode.E == UsageByParent.InLayoutBlock) {
                layoutNode.u();
            }
        }
    }

    public final String v(int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
        sb.append("|-");
        sb.append(toString());
        sb.append('\n');
        MutableVector mutableVectorR = R();
        Object[] objArr = mutableVectorR.f8165b;
        int i4 = mutableVectorR.d;
        for (int i5 = 0; i5 < i4; i5++) {
            sb.append(((LayoutNode) objArr[i5]).v(i2 + 1));
        }
        String string = sb.toString();
        return i2 == 0 ? o60.g(1, 0, string) : string;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public final LayoutCoordinates w() {
        return this.H.f9772c;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    /* JADX INFO: renamed from: x, reason: from getter */
    public final int getF9689c() {
        return this.f9689c;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public final LayoutNode y() {
        return O();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public final List z() {
        NodeChain nodeChain = this.H;
        MutableVector mutableVector = nodeChain.g;
        if (mutableVector == null) {
            return EmptyList.f71768b;
        }
        int i2 = 0;
        MutableVector mutableVector2 = new MutableVector(new ModifierInfo[mutableVector.d], 0);
        Modifier.Node node = nodeChain.f9774f;
        while (node != null) {
            TailModifierNode tailModifierNode = nodeChain.f9773e;
            if (node == tailModifierNode) {
                break;
            }
            NodeCoordinator nodeCoordinator = node.f8613i;
            OwnedLayer ownedLayer = null;
            if (nodeCoordinator == null) {
                md.n("getModifierInfo called on node with no coordinator");
                return null;
            }
            OwnedLayer ownedLayer2 = nodeCoordinator.P;
            OwnedLayer ownedLayer3 = nodeChain.f9772c.P;
            Modifier.Node node2 = node.g;
            if (node2 == tailModifierNode && nodeCoordinator != node2.f8613i) {
                ownedLayer = ownedLayer3;
            }
            if (ownedLayer2 == null) {
                ownedLayer2 = ownedLayer;
            }
            mutableVector2.b(new ModifierInfo((Modifier) mutableVector.f8165b[i2], nodeCoordinator, ownedLayer2));
            node = node.g;
            i2++;
        }
        return mutableVector2.i();
    }

    public LayoutNode(boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? SemanticsModifierKt.f10317a.addAndGet(1) : i2);
    }

    public LayoutNode() {
        this(false, 0, 3, null);
    }
}
