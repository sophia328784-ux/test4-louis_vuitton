package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.j5;
import defpackage.md;
import defpackage.p;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.BuildersKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BW\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/gestures/AnchoredDraggableNode;", "T", "Landroidx/compose/foundation/gestures/DragGestureNode;", "Landroidx/compose/foundation/gestures/AnchoredDraggableState;", "state", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "enabled", "reverseDirection", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "interactionSource", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "startDragImmediately", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "<init>", "(Landroidx/compose/foundation/gestures/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLjava/lang/Boolean;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/OverscrollEffect;Ljava/lang/Boolean;Landroidx/compose/foundation/gestures/FlingBehavior;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnchoredDraggableNode<T> extends DragGestureNode {
    public AnchoredDraggableState K;
    public Orientation L;
    public Boolean M;
    public OverscrollEffect N;
    public Boolean O;
    public FlingBehavior P;
    public FlingBehavior Q;
    public Density R;

    public AnchoredDraggableNode(AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, boolean z, Boolean bool, MutableInteractionSource mutableInteractionSource, OverscrollEffect overscrollEffect, Boolean bool2, FlingBehavior flingBehavior) {
        super(AnchoredDraggableKt.f4345a, z, mutableInteractionSource, orientation);
        this.K = anchoredDraggableState;
        this.L = orientation;
        this.M = bool;
        this.N = overscrollEffect;
        this.O = bool2;
        this.P = flingBehavior;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object C2(AnchoredDraggableNode anchoredDraggableNode, float f2, ContinuationImpl continuationImpl) {
        AnchoredDraggableNode$fling$1 anchoredDraggableNode$fling$1;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof AnchoredDraggableNode$fling$1) {
            anchoredDraggableNode$fling$1 = (AnchoredDraggableNode$fling$1) continuationImpl;
            int i2 = anchoredDraggableNode$fling$1.f4386e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anchoredDraggableNode$fling$1.f4386e = i2 - Integer.MIN_VALUE;
            } else {
                anchoredDraggableNode$fling$1 = new AnchoredDraggableNode$fling$1(anchoredDraggableNode, continuationImpl);
            }
        } else {
            anchoredDraggableNode$fling$1 = new AnchoredDraggableNode$fling$1(anchoredDraggableNode, continuationImpl);
        }
        Object obj = anchoredDraggableNode$fling$1.f4385c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anchoredDraggableNode$fling$1.f4386e;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (anchoredDraggableNode.K.c()) {
                AnchoredDraggableState anchoredDraggableState = anchoredDraggableNode.K;
                anchoredDraggableNode$fling$1.f4386e = 1;
                if (!anchoredDraggableState.c()) {
                    InlineClassHelperKt.a("AnchoredDraggableState was configured through a constructor without providing positional and velocity threshold. This overload of settle has been deprecated. Please refer to AnchoredDraggableState#settle(animationSpec) for more information.");
                }
                Object f10755b = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b();
                DraggableAnchors draggableAnchorsB = anchoredDraggableState.b();
                float fE = anchoredDraggableState.e();
                Function1 function1 = anchoredDraggableState.f4398b;
                if (function1 == null) {
                    Intrinsics.h("positionalThreshold");
                    throw null;
                }
                j5 j5Var = anchoredDraggableState.f4399c;
                if (j5Var == null) {
                    Intrinsics.h("velocityThreshold");
                    throw null;
                }
                Object objC = AnchoredDraggableKt.c(draggableAnchorsB, fE, f2, function1, j5Var);
                Object objI = ((Boolean) anchoredDraggableState.f4397a.invoke(objC)).booleanValue() ? AnchoredDraggableKt.i(anchoredDraggableState, objC, f2, anchoredDraggableNode$fling$1) : AnchoredDraggableKt.i(anchoredDraggableState, f10755b, f2, anchoredDraggableNode$fling$1);
                if (objI != coroutineSingletons) {
                    return objI;
                }
            } else {
                Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                ref$FloatRef2.f71918b = f2;
                AnchoredDraggableState anchoredDraggableState2 = anchoredDraggableNode.K;
                AnchoredDraggableNode$fling$2 anchoredDraggableNode$fling$2 = new AnchoredDraggableNode$fling$2(anchoredDraggableNode, ref$FloatRef2, f2, null);
                anchoredDraggableNode$fling$1.f4384b = ref$FloatRef2;
                anchoredDraggableNode$fling$1.f4386e = 2;
                Object objB = anchoredDraggableState2.f4401f.b(MutatePriority.Default, new AnchoredDraggableState$anchoredDrag$2(anchoredDraggableState2, null, anchoredDraggableNode$fling$2), anchoredDraggableNode$fling$1);
                if (objB != coroutineSingletons) {
                    objB = Unit.f71739a;
                }
                if (objB != coroutineSingletons) {
                    ref$FloatRef = ref$FloatRef2;
                }
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        if (i3 != 2) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ref$FloatRef = anchoredDraggableNode$fling$1.f4384b;
        ResultKt.b(obj);
        return new Float(ref$FloatRef.f71918b);
    }

    public static final long D2(AnchoredDraggableNode anchoredDraggableNode, float f2) {
        Orientation orientation = anchoredDraggableNode.L;
        float f3 = orientation == Orientation.Horizontal ? f2 : 0.0f;
        if (orientation != Orientation.Vertical) {
            f2 = 0.0f;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f3)) << 32);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void C() {
        f1();
        if (this.o) {
            Density density = DelegatableNodeKt.f(this).A;
            Density density2 = this.R;
            if (density2 == null || !density2.equals(density)) {
                this.R = density;
                F2(this.P);
            }
        }
    }

    public final boolean E2() {
        Boolean bool = this.M;
        if (bool == null) {
            return DelegatableNodeKt.f(this).B == LayoutDirection.Rtl && this.L == Orientation.Horizontal;
        }
        bool.getClass();
        return bool.booleanValue();
    }

    public final void F2(FlingBehavior flingBehavior) {
        if (flingBehavior == null) {
            TweenSpec tweenSpec = AnchoredDraggableDefaults.f4336a;
            p pVar = AnchoredDraggableDefaults.f4337b;
            Density density = DelegatableNodeKt.f(this).A;
            this.R = density;
            AnchoredDraggableState anchoredDraggableState = this.K;
            DecayAnimationSpec decayAnimationSpec = AnchoredDraggableKt.f4347c;
            AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1 anchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1 = new AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1(anchoredDraggableState, pVar, new j5(density, 0));
            float f2 = SnapFlingBehaviorKt.f4867a;
            flingBehavior = new SnapFlingBehavior(anchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1, decayAnimationSpec, tweenSpec);
        }
        this.Q = flingBehavior;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        F2(this.P);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object o2(Function2 function2, Continuation continuation) {
        AnchoredDraggableState anchoredDraggableState = this.K;
        AnchoredDraggableNode$drag$2 anchoredDraggableNode$drag$2 = new AnchoredDraggableNode$drag$2(function2, this, null);
        int i2 = AnchoredDraggableState.p;
        Object objB = anchoredDraggableState.f4401f.b(MutatePriority.Default, new AnchoredDraggableState$anchoredDrag$2(anchoredDraggableState, null, anchoredDraggableNode$drag$2), (ContinuationImpl) continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objB != coroutineSingletons) {
            objB = Unit.f71739a;
        }
        return objB == coroutineSingletons ? objB : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void t2(long j2) {
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void u2(DragEvent.DragStopped dragStopped) {
        if (this.o) {
            BuildersKt.c(V1(), null, null, new AnchoredDraggableNode$onDragStopped$1(this, dragStopped, null), 3);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final boolean z2() {
        Boolean bool = this.O;
        if (bool != null) {
            return bool.booleanValue();
        }
        return ((SnapshotMutableStateImpl) this.K.m).getF10755b() != null;
    }
}
