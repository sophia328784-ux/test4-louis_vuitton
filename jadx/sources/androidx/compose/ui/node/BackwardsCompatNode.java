package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.draw.DrawCacheModifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusOrder;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifier;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.modifier.BackwardsCompatLocalMap;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.HashSet;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000fB\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/node/BackwardsCompatNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalReadScope;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "Landroidx/compose/ui/focus/FocusRequesterModifierNode;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/Modifier$Element;", "element", "<init>", "(Landroidx/compose/ui/Modifier$Element;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BackwardsCompatNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode, PointerInputModifierNode, ModifierLocalModifierNode, ModifierLocalReadScope, ParentDataModifierNode, LayoutAwareModifierNode, GlobalPositionAwareModifierNode, FocusEventModifierNode, FocusPropertiesModifierNode, FocusRequesterModifierNode, OwnerScope, BuildDrawCacheParams {
    public Modifier.Element p;
    public boolean q;
    public BackwardsCompatLocalMap r;
    public final HashSet s;
    public LayoutCoordinates t;

    public BackwardsCompatNode(Modifier.Element element) {
        this.d = NodeKindKt.d(element);
        this.p = element;
        this.q = true;
        this.s = new HashSet();
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object B(Density density, Object obj) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((ParentDataModifier) element).B(density, obj);
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        if (this.p instanceof PointerInputModifier) {
            f1();
        }
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void E(FocusState focusState) {
        Modifier.Element element = this.p;
        if (!(element instanceof FocusEventModifier)) {
            InlineClassHelperKt.c("onFocusEvent called on wrong node");
        }
        ((FocusEventModifier) element).E(focusState);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void F(NodeCoordinator nodeCoordinator) {
        Modifier.Element element = this.p;
        element.getClass();
        ((OnGloballyPositionedModifier) element).F(nodeCoordinator);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean H1() {
        Modifier.Element element = this.p;
        element.getClass();
        ((PointerInputModifier) element).getF9359e().getClass();
        return true;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Modifier.Element element = this.p;
        element.getClass();
        SemanticsConfiguration semanticsConfigurationI = ((SemanticsModifier) element).i();
        semanticsPropertyReceiver.getClass();
        SemanticsConfiguration semanticsConfiguration = (SemanticsConfiguration) semanticsPropertyReceiver;
        MutableScatterMap mutableScatterMap = semanticsConfiguration.f10312b;
        if (semanticsConfigurationI.f10314e) {
            semanticsConfiguration.f10314e = true;
        }
        if (semanticsConfigurationI.f10315f) {
            semanticsConfiguration.f10315f = true;
        }
        MutableScatterMap mutableScatterMap2 = semanticsConfigurationI.f10312b;
        Object[] objArr = mutableScatterMap2.f3362b;
        Object[] objArr2 = mutableScatterMap2.f3363c;
        long[] jArr = mutableScatterMap2.f3361a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj = objArr[i5];
                        Object obj2 = objArr2[i5];
                        SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                        if (!mutableScatterMap.b(semanticsPropertyKey)) {
                            mutableScatterMap.o(semanticsPropertyKey, obj2);
                        } else if (obj2 instanceof AccessibilityAction) {
                            Object objE = mutableScatterMap.e(semanticsPropertyKey);
                            objE.getClass();
                            AccessibilityAction accessibilityAction = (AccessibilityAction) objE;
                            String str = accessibilityAction.f10269a;
                            if (str == null) {
                                str = ((AccessibilityAction) obj2).f10269a;
                            }
                            Function function = accessibilityAction.f10270b;
                            if (function == null) {
                                function = ((AccessibilityAction) obj2).f10270b;
                            }
                            mutableScatterMap.o(semanticsPropertyKey, new AccessibilityAction(str, function));
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return this.o;
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void X0(FocusProperties focusProperties) {
        Modifier.Element element = this.p;
        if (!(element instanceof FocusOrderModifier)) {
            InlineClassHelperKt.c("applyFocusProperties called on wrong node");
        }
        new FocusOrder(focusProperties);
        ((FocusOrderModifier) element).t();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        h2(true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        i2();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final long b() {
        return IntSizeKt.d(DelegatableNodeKt.d(this, 128).d);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void c(long j2) {
        Modifier.Element element = this.p;
        if (element instanceof OnRemeasuredModifier) {
            ((OnRemeasuredModifier) element).c(j2);
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((LayoutModifier) element).e(measureScope, measurable, j2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((LayoutModifier) element).f(lookaheadCapablePlaceable, intrinsicMeasurable, i2);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        Modifier.Element element = this.p;
        element.getClass();
        ((PointerInputModifier) element).getF9359e().c(pointerEvent, pointerEventPass);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void f1() {
        Modifier.Element element = this.p;
        element.getClass();
        ((PointerInputModifier) element).getF9359e().b();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return DelegatableNodeKt.f(this).A;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return DelegatableNodeKt.f(this).B;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void h(LayoutCoordinates layoutCoordinates) {
        this.t = layoutCoordinates;
        Modifier.Element element = this.p;
        if (element instanceof OnPlacedModifier) {
            ((OnPlacedModifier) element).h(layoutCoordinates);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$3] */
    public final void h2(boolean z) {
        if (!this.o) {
            InlineClassHelperKt.c("initializeModifier called on unattached node");
        }
        Modifier.Element element = this.p;
        if ((this.d & 32) != 0) {
            if (element instanceof ModifierLocalConsumer) {
                DelegatableNodeKt.g(this).E(new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        this.f9630c.j2();
                        return Unit.f71739a;
                    }
                });
            }
            if (element instanceof ModifierLocalProvider) {
                ModifierLocalProvider modifierLocalProvider = (ModifierLocalProvider) element;
                BackwardsCompatLocalMap backwardsCompatLocalMap = this.r;
                if (backwardsCompatLocalMap == null || !backwardsCompatLocalMap.a(modifierLocalProvider.getKey())) {
                    this.r = new BackwardsCompatLocalMap(modifierLocalProvider);
                    if (BackwardsCompatNodeKt.a(this)) {
                        ModifierLocalManager modifierLocalManager = DelegatableNodeKt.g(this).getModifierLocalManager();
                        ProvidableModifierLocal key = modifierLocalProvider.getKey();
                        modifierLocalManager.f9615b.b(this);
                        modifierLocalManager.f9616c.b(key);
                        modifierLocalManager.a();
                    }
                } else {
                    backwardsCompatLocalMap.f9611a = modifierLocalProvider;
                    ModifierLocalManager modifierLocalManager2 = DelegatableNodeKt.g(this).getModifierLocalManager();
                    ProvidableModifierLocal key2 = modifierLocalProvider.getKey();
                    modifierLocalManager2.f9615b.b(this);
                    modifierLocalManager2.f9616c.b(key2);
                    modifierLocalManager2.a();
                }
            }
        }
        if ((this.d & 4) != 0) {
            if (element instanceof DrawCacheModifier) {
                this.q = true;
            }
            if (!z) {
                DelegatableNodeKt.d(this, 2).H1();
            }
        }
        if ((this.d & 2) != 0) {
            if (BackwardsCompatNodeKt.a(this)) {
                NodeCoordinator nodeCoordinator = this.f8613i;
                nodeCoordinator.getClass();
                ((LayoutModifierNodeCoordinator) nodeCoordinator).i2(this);
                OwnedLayer ownedLayer = nodeCoordinator.P;
                if (ownedLayer != null) {
                    ownedLayer.invalidate();
                }
            }
            if (!z) {
                DelegatableNodeKt.d(this, 2).H1();
                DelegatableNodeKt.f(this).X();
            }
        }
        if (element instanceof RemeasurementModifier) {
            ((RemeasurementModifier) element).l(DelegatableNodeKt.f(this));
        }
        if ((this.d & 128) != 0 && (element instanceof OnRemeasuredModifier) && BackwardsCompatNodeKt.a(this)) {
            DelegatableNodeKt.f(this).X();
        }
        if ((4194304 & this.d) != 0 && (element instanceof OnPlacedModifier)) {
            this.t = null;
            if (BackwardsCompatNodeKt.a(this)) {
                DelegatableNodeKt.g(this).s(new Owner.OnLayoutCompletedListener() { // from class: androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$3
                    @Override // androidx.compose.ui.node.Owner.OnLayoutCompletedListener
                    public final void k() {
                        BackwardsCompatNode backwardsCompatNode = this.f9631b;
                        if (backwardsCompatNode.t == null) {
                            backwardsCompatNode.h(DelegatableNodeKt.d(backwardsCompatNode, 4194304));
                        }
                    }
                });
            }
        }
        if ((this.d & 256) != 0 && (element instanceof OnGloballyPositionedModifier) && BackwardsCompatNodeKt.a(this)) {
            DelegatableNodeKt.f(this).X();
        }
        if (element instanceof FocusRequesterModifier) {
            ((FocusRequesterModifier) element).k().f8778a.b(this);
        }
        if ((this.d & 16) != 0 && (element instanceof PointerInputModifier)) {
            ((PointerInputModifier) element).getF9359e().f9356a = this.f8613i;
        }
        if ((this.d & 8) != 0) {
            DelegatableNodeKt.g(this).G();
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void i1() {
        this.q = true;
        DrawModifierNodeKt.a(this);
    }

    public final void i2() {
        if (!this.o) {
            InlineClassHelperKt.c("unInitializeModifier called on unattached node");
        }
        Modifier.Element element = this.p;
        if ((this.d & 32) != 0) {
            if (element instanceof ModifierLocalProvider) {
                ModifierLocalManager modifierLocalManager = DelegatableNodeKt.g(this).getModifierLocalManager();
                ProvidableModifierLocal key = ((ModifierLocalProvider) element).getKey();
                modifierLocalManager.d.b(DelegatableNodeKt.f(this));
                modifierLocalManager.f9617e.b(key);
                modifierLocalManager.a();
            }
            if (element instanceof ModifierLocalConsumer) {
                Function1 function1 = BackwardsCompatNodeKt.f9634a;
                ((ModifierLocalConsumer) element).s();
            }
        }
        if ((this.d & 8) != 0) {
            DelegatableNodeKt.g(this).G();
        }
        if (element instanceof FocusRequesterModifier) {
            ((FocusRequesterModifier) element).k().f8778a.n(this);
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        Modifier.Element element = this.p;
        element.getClass();
        DrawModifier drawModifier = (DrawModifier) element;
        if (this.q && (element instanceof DrawCacheModifier)) {
            final Modifier.Element element2 = this.p;
            if (element2 instanceof DrawCacheModifier) {
                OwnerSnapshotObserver snapshotObserver = DelegatableNodeKt.g(this).getSnapshotObserver();
                snapshotObserver.f9812a.e(this, BackwardsCompatNodeKt.f9634a, new Function0<Unit>(this) { // from class: androidx.compose.ui.node.BackwardsCompatNode$updateDrawCache$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        ((DrawCacheModifier) this.f9632c).m();
                        return Unit.f71739a;
                    }
                });
            }
            this.q = false;
        }
        drawModifier.j(layoutNodeDrawScope);
    }

    public final void j2() {
        if (this.o) {
            this.s.clear();
            OwnerSnapshotObserver snapshotObserver = DelegatableNodeKt.g(this).getSnapshotObserver();
            snapshotObserver.f9812a.e(this, BackwardsCompatNodeKt.f9635b, new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$updateModifierLocalConsumer$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Modifier.Element element = this.f9633c.p;
                    element.getClass();
                    ((ModifierLocalConsumer) element).s();
                    return Unit.f71739a;
                }
            });
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void m0() {
        Modifier.Element element = this.p;
        element.getClass();
        ((PointerInputModifier) element).getF9359e().getClass();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final ModifierLocalMap s0() {
        BackwardsCompatLocalMap backwardsCompatLocalMap = this.r;
        return backwardsCompatLocalMap != null ? backwardsCompatLocalMap : EmptyMap.f9612a;
    }

    public final String toString() {
        return this.p.toString();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((LayoutModifier) element).u(lookaheadCapablePlaceable, intrinsicMeasurable, i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((LayoutModifier) element).y(lookaheadCapablePlaceable, intrinsicMeasurable, i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        Modifier.Element element = this.p;
        element.getClass();
        return ((LayoutModifier) element).z(lookaheadCapablePlaceable, intrinsicMeasurable, i2);
    }
}
