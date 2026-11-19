package androidx.compose.foundation.gestures;

import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.Focusability;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import defpackage.yt0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004BO\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollableNode;", "Landroidx/compose/foundation/gestures/DragGestureNode;", "Landroidx/compose/ui/input/key/KeyInputModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;", "Landroidx/compose/foundation/gestures/ScrollableState;", "state", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "reverseDirection", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "bringIntoViewSpec", "<init>", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollableNode extends DragGestureNode implements KeyInputModifierNode, SemanticsModifierNode, OnScrollChangedDispatcher {
    public OverscrollEffect K;
    public FlingBehavior L;
    public final NestedScrollDispatcher M;
    public final DefaultFlingBehavior N;
    public final ScrollingLogic O;
    public final ScrollableNestedScrollConnection P;
    public final FocusTargetModifierNode Q;
    public final ContentInViewNode R;
    public d S;
    public Function2 T;
    public MouseWheelScrollingLogic V;
    public TrackpadScrollingLogic W;

    public ScrollableNode(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        super(ScrollableKt.f4674a, z, mutableInteractionSource, orientation);
        this.K = overscrollEffect;
        this.L = flingBehavior;
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.M = nestedScrollDispatcher;
        DefaultFlingBehavior defaultFlingBehavior = new DefaultFlingBehavior(DecayAnimationSpecKt.c(new SplineBasedFloatDecayAnimationSpec(ScrollableKt.d)), null, 2, null);
        this.N = defaultFlingBehavior;
        OverscrollEffect overscrollEffect2 = this.K;
        FlingBehavior flingBehavior2 = this.L;
        FlingBehavior flingBehavior3 = flingBehavior2 == null ? defaultFlingBehavior : flingBehavior2;
        final int i2 = 0;
        ScrollingLogic scrollingLogic = new ScrollingLogic(scrollableState, overscrollEffect2, flingBehavior3, orientation, z2, nestedScrollDispatcher, this, new Function0(this) { // from class: ju0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScrollableNode f71471c;

            {
                this.f71471c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                ScrollableNode scrollableNode = this.f71471c;
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(scrollableNode.o);
                    default:
                        FocusTargetModifierNode focusTargetModifierNode = scrollableNode.Q;
                        if (!focusTargetModifierNode.getF8608b().o) {
                            return null;
                        }
                        FocusStateImpl focusStateImplW = focusTargetModifierNode.W();
                        if (!focusStateImplW.b()) {
                            return null;
                        }
                        if (focusStateImplW.a()) {
                            return ((FocusTargetNode) focusTargetModifierNode).k2(null);
                        }
                        FocusTargetNode focusTargetNodeG = DelegatableNodeKt.g(focusTargetModifierNode).getFocusOwner().g();
                        if (focusTargetNodeG != null) {
                            return focusTargetNodeG.k2(DelegatableNodeKt.e(focusTargetModifierNode));
                        }
                        return null;
                }
            }
        });
        this.O = scrollingLogic;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z);
        this.P = scrollableNestedScrollConnection;
        Focusability.f8790a.getClass();
        FocusTargetNode focusTargetNode = new FocusTargetNode(Focusability.f8792c, false, null, null, 10, null);
        h2(focusTargetNode);
        this.Q = focusTargetNode;
        final int i3 = 1;
        ContentInViewNode contentInViewNode = new ContentInViewNode(orientation, scrollingLogic, z2, bringIntoViewSpec, new Function0(this) { // from class: ju0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ScrollableNode f71471c;

            {
                this.f71471c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                ScrollableNode scrollableNode = this.f71471c;
                switch (i4) {
                    case 0:
                        return Boolean.valueOf(scrollableNode.o);
                    default:
                        FocusTargetModifierNode focusTargetModifierNode = scrollableNode.Q;
                        if (!focusTargetModifierNode.getF8608b().o) {
                            return null;
                        }
                        FocusStateImpl focusStateImplW = focusTargetModifierNode.W();
                        if (!focusStateImplW.b()) {
                            return null;
                        }
                        if (focusStateImplW.a()) {
                            return ((FocusTargetNode) focusTargetModifierNode).k2(null);
                        }
                        FocusTargetNode focusTargetNodeG = DelegatableNodeKt.g(focusTargetModifierNode).getFocusOwner().g();
                        if (focusTargetNodeG != null) {
                            return focusTargetNodeG.k2(DelegatableNodeKt.e(focusTargetModifierNode));
                        }
                        return null;
                }
            }
        });
        h2(contentInViewNode);
        this.R = contentInViewNode;
        h2(new NestedScrollNode(scrollableNestedScrollConnection, nestedScrollDispatcher));
        h2(new BringIntoViewResponderNode(contentInViewNode));
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        f1();
        if (this.o) {
            Density density = DelegatableNodeKt.f(this).A;
            DefaultFlingBehavior defaultFlingBehavior = this.N;
            defaultFlingBehavior.getClass();
            defaultFlingBehavior.f4453a = DecayAnimationSpecKt.c(new SplineBasedFloatDecayAnimationSpec(density));
        }
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.V;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.f4636c = DelegatableNodeKt.f(this).A;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.W;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.f4636c = DelegatableNodeKt.f(this).A;
        }
    }

    public final void C2(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        boolean z3;
        boolean z4 = true;
        boolean z5 = false;
        if (this.t != z) {
            this.P.f4685c = z;
            z3 = true;
        } else {
            z3 = false;
        }
        FlingBehavior flingBehavior2 = flingBehavior == null ? this.N : flingBehavior;
        ScrollingLogic scrollingLogic = this.O;
        if (!Intrinsics.c(scrollingLogic.f4707a, scrollableState)) {
            scrollingLogic.f4707a = scrollableState;
            z5 = true;
        }
        scrollingLogic.f4708b = overscrollEffect;
        if (scrollingLogic.d != orientation) {
            scrollingLogic.d = orientation;
            z5 = true;
        }
        if (scrollingLogic.f4710e != z2) {
            scrollingLogic.f4710e = z2;
        } else {
            z4 = z5;
        }
        scrollingLogic.f4709c = flingBehavior2;
        scrollingLogic.f4711f = this.M;
        ContentInViewNode contentInViewNode = this.R;
        contentInViewNode.p = orientation;
        contentInViewNode.r = z2;
        contentInViewNode.s = bringIntoViewSpec;
        this.K = overscrollEffect;
        this.L = flingBehavior;
        yt0 yt0Var = ScrollableKt.f4674a;
        Orientation orientation2 = scrollingLogic.d;
        Orientation orientation3 = Orientation.Vertical;
        if (orientation2 != orientation3) {
            orientation3 = Orientation.Horizontal;
        }
        B2(yt0Var, z, mutableInteractionSource, orientation3, z4);
        if (z3) {
            this.S = null;
            this.T = null;
            SemanticsModifierNodeKt.b(this);
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean L0(KeyEvent keyEvent) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.foundation.gestures.d] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.t && (this.S == null || this.T == null)) {
            this.S = new Function2() { // from class: androidx.compose.foundation.gestures.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    float fFloatValue = ((Float) obj).floatValue();
                    float fFloatValue2 = ((Float) obj2).floatValue();
                    ScrollableNode scrollableNode = this.f4841b;
                    BuildersKt.c(scrollableNode.V1(), null, null, new ScrollableNode$setScrollSemanticsActions$1$1(scrollableNode, fFloatValue, fFloatValue2, null), 3);
                    return Boolean.TRUE;
                }
            };
            this.T = new ScrollableNode$setScrollSemanticsActions$2(this, null);
        }
        d dVar = this.S;
        if (dVar != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
            semanticsPropertyReceiver.a(SemanticsActions.d, new AccessibilityAction(null, dVar));
        }
        Function2 function2 = this.T;
        if (function2 != null) {
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.f10359a;
            semanticsPropertyReceiver.a(SemanticsActions.f10305e, function2);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        if (this.o) {
            Density density = DelegatableNodeKt.f(this).A;
            DefaultFlingBehavior defaultFlingBehavior = this.N;
            defaultFlingBehavior.getClass();
            defaultFlingBehavior.f4453a = DecayAnimationSpecKt.c(new SplineBasedFloatDecayAnimationSpec(density));
        }
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.V;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.f4636c = DelegatableNodeKt.f(this).A;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.W;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.f4636c = DelegatableNodeKt.f(this).A;
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean b1(KeyEvent keyEvent) {
        long jFloatToRawIntBits;
        if (this.t) {
            long jA = KeyEvent_androidKt.a(keyEvent);
            Key.f9226a.getClass();
            if (Key.a(jA, Key.E) || Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.D)) {
                int iB = KeyEvent_androidKt.b(keyEvent);
                KeyEventType.f9236a.getClass();
                if (iB == KeyEventType.f9238c && !keyEvent.isCtrlPressed()) {
                    boolean z = this.O.d == Orientation.Vertical;
                    ContentInViewNode contentInViewNode = this.R;
                    if (z) {
                        int iI2 = (int) (contentInViewNode.i2() & BodyPartID.bodyIdMax);
                        jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.D) ? iI2 : -iI2)));
                        Offset.Companion companion = Offset.f8806b;
                    } else {
                        int iI3 = (int) (contentInViewNode.i2() >> 32);
                        jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.D) ? iI3 : -iI3)) << 32);
                        Offset.Companion companion2 = Offset.f8806b;
                    }
                    BuildersKt.c(V1(), null, null, new ScrollableNode$onKeyEvent$1(this, jFloatToRawIntBits, null), 3);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void f0(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j2) {
        int i2;
        int i3;
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (((Boolean) this.s.invoke(new PointerType(((PointerInputChange) list.get(i4)).f9334i))).booleanValue()) {
                super.f0(pointerEvent, pointerEventPass, j2);
                break;
            }
        }
        if (this.v == null) {
            DelegatableNode delegatableNodeA = GestureNodeKt.a(this);
            h2(delegatableNodeA);
            this.v = delegatableNodeA;
        }
        if (this.t) {
            PointerEventPass pointerEventPass2 = PointerEventPass.Initial;
            ScrollingLogic scrollingLogic = this.O;
            if (pointerEventPass == pointerEventPass2) {
                int i5 = pointerEvent.f9309f;
                PointerEventType.f9310a.getClass();
                if (i5 == PointerEventType.g) {
                    if (this.V == null) {
                        this.V = new MouseWheelScrollingLogic(scrollingLogic, new AndroidConfig(ViewConfiguration.get(DelegatableNode_androidKt.a(this).getContext())), new ScrollableNode$ensureMouseWheelScrollingLogicInitialized$1(2, this, ScrollableNode.class, "onWheelScrollStopped", "onWheelScrollStopped-TH1AsA0(J)V", 4), DelegatableNodeKt.f(this).A);
                    }
                    MouseWheelScrollingLogic mouseWheelScrollingLogic = this.V;
                    if (mouseWheelScrollingLogic != null) {
                        CoroutineScope coroutineScopeV1 = V1();
                        if (mouseWheelScrollingLogic.f4607h == null) {
                            mouseWheelScrollingLogic.f4607h = BuildersKt.c(coroutineScopeV1, null, null, new MouseWheelScrollingLogic$startReceivingEvents$1(mouseWheelScrollingLogic, null), 3);
                        }
                    }
                }
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic2 = this.V;
            if (mouseWheelScrollingLogic2 != null) {
                int i6 = pointerEvent.f9309f;
                PointerEventType.f9310a.getClass();
                if (i6 == PointerEventType.g) {
                    int size2 = list.size();
                    int i7 = 0;
                    while (true) {
                        if (i7 >= size2) {
                            if (pointerEventPass == PointerEventPass.Initial && mouseWheelScrollingLogic2.d) {
                                mouseWheelScrollingLogic2.f(pointerEvent, j2);
                                NonTouchScrollingLogic.a(pointerEvent);
                            }
                            if (pointerEventPass != PointerEventPass.Main || mouseWheelScrollingLogic2.d || !mouseWheelScrollingLogic2.f(pointerEvent, j2)) {
                                break;
                                break;
                                break;
                            } else {
                                NonTouchScrollingLogic.a(pointerEvent);
                                break;
                            }
                        }
                        if (((PointerInputChange) list.get(i7)).b()) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                }
            }
            if (pointerEventPass == PointerEventPass.Initial) {
                int i8 = pointerEvent.f9309f;
                PointerEventType.f9310a.getClass();
                if (i8 == PointerEventType.f9318k || (i3 = pointerEvent.f9309f) == PointerEventType.l || i3 == PointerEventType.m) {
                    if (this.W == null) {
                        this.W = new TrackpadScrollingLogic(scrollingLogic, new ScrollableNode$ensureTrackpadScrollingLogicInitialized$1(2, this, ScrollableNode.class, "onTrackpadScrollStopped", "onTrackpadScrollStopped-TH1AsA0(J)V", 4), DelegatableNodeKt.f(this).A);
                    }
                    TrackpadScrollingLogic trackpadScrollingLogic = this.W;
                    if (trackpadScrollingLogic != null) {
                        CoroutineScope coroutineScopeV2 = V1();
                        if (trackpadScrollingLogic.g == null) {
                            trackpadScrollingLogic.g = BuildersKt.c(coroutineScopeV2, null, null, new TrackpadScrollingLogic$startReceivingEvents$1(trackpadScrollingLogic, null), 3);
                        }
                    }
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic2 = this.W;
            if (trackpadScrollingLogic2 != null) {
                int i9 = pointerEvent.f9309f;
                PointerEventType.f9310a.getClass();
                if (i9 == PointerEventType.f9318k || (i2 = pointerEvent.f9309f) == PointerEventType.l || i2 == PointerEventType.m) {
                    int size3 = list.size();
                    for (int i10 = 0; i10 < size3; i10++) {
                        if (((PointerInputChange) list.get(i10)).b()) {
                            return;
                        }
                    }
                    if (pointerEventPass == PointerEventPass.Initial && trackpadScrollingLogic2.d) {
                        trackpadScrollingLogic2.d(pointerEvent);
                        NonTouchScrollingLogic.a(pointerEvent);
                    }
                    if (pointerEventPass == PointerEventPass.Main && !trackpadScrollingLogic2.d && trackpadScrollingLogic2.d(pointerEvent)) {
                        NonTouchScrollingLogic.a(pointerEvent);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object o2(Function2 function2, Continuation continuation) {
        MutatePriority mutatePriority = MutatePriority.UserInput;
        ScrollingLogic scrollingLogic = this.O;
        Object objH = scrollingLogic.h(mutatePriority, new ScrollableNode$drag$2$1(scrollingLogic, null, function2), (ContinuationImpl) continuation);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.OnScrollChangedDispatcher
    public final void q0(long j2) {
        if (this.o) {
            DelegatableNodeKt.g(this).x();
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void t2(long j2) {
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void u2(DragEvent.DragStopped dragStopped) {
        BuildersKt.c(this.M.d(), null, null, new ScrollableNode$onDragStopped$1(dragStopped, this, null), 3);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* JADX INFO: renamed from: z2 */
    public final boolean getM() {
        ScrollingLogic scrollingLogic = this.O;
        if (scrollingLogic.f4707a.a()) {
            return true;
        }
        OverscrollEffect overscrollEffect = scrollingLogic.f4708b;
        return overscrollEffect != null ? overscrollEffect.n() : false;
    }
}
