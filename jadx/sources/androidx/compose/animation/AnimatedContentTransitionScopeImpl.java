package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003\u000b\f\rB'\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u0010²\u0006\u000e\u0010\u000f\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "S", "Landroidx/compose/animation/AnimatedContentTransitionScope;", "Landroidx/compose/animation/core/Transition;", "transition", "Landroidx/compose/ui/Alignment;", "contentAlignment", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/LayoutDirection;)V", "ChildData", "SizeModifierElement", "SizeModifierNode", "", "shouldAnimateSize", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimatedContentTransitionScopeImpl<S> implements AnimatedContentTransitionScope<S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Transition f3458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Alignment f3459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutDirection f3460c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableScatterMap f3461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Transition.DeferredAnimation.DeferredAnimationData f3462f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$ChildData;", "Landroidx/compose/ui/layout/ParentDataModifier;", "", "isTarget", "<init>", "(Z)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChildData implements ParentDataModifier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MutableState f3463b;

        public ChildData(boolean z) {
            this.f3463b = SnapshotStateKt.g(Boolean.valueOf(z));
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        public final Object B(Density density, Object obj) {
            return this;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002BE\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004R\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;", "S", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/animation/core/Transition;", "sizeAnimation", "Landroidx/compose/runtime/State;", "Landroidx/compose/animation/SizeTransform;", "sizeTransform", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "scope", "<init>", "(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SizeModifierElement<S> extends ModifierNodeElement<SizeModifierNode<S>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Transition.DeferredAnimation f3464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final State f3465c;
        public final AnimatedContentTransitionScopeImpl d;

        public SizeModifierElement(Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation, State<? extends SizeTransform> state, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl) {
            this.f3464b = deferredAnimation;
            this.f3465c = state;
            this.d = animatedContentTransitionScopeImpl;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node a() {
            return new SizeModifierNode(this.f3464b, this.f3465c, this.d);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SizeModifierElement)) {
                return false;
            }
            SizeModifierElement sizeModifierElement = (SizeModifierElement) obj;
            return Intrinsics.c(sizeModifierElement.f3464b, this.f3464b) && Intrinsics.c(sizeModifierElement.f3465c, this.f3465c);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void g(Modifier.Node node) {
            SizeModifierNode sizeModifierNode = (SizeModifierNode) node;
            sizeModifierNode.p = this.f3464b;
            sizeModifierNode.q = this.f3465c;
            sizeModifierNode.r = this.d;
        }

        public final int hashCode() {
            int iHashCode = this.d.hashCode() * 31;
            Transition.DeferredAnimation deferredAnimation = this.f3464b;
            return this.f3465c.hashCode() + ((iHashCode + (deferredAnimation != null ? deferredAnimation.hashCode() : 0)) * 31);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002BE\u0012\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003R\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;", "S", "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/animation/core/Transition;", "sizeAnimation", "Landroidx/compose/runtime/State;", "Landroidx/compose/animation/SizeTransform;", "sizeTransform", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "scope", "<init>", "(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SizeModifierNode<S> extends LayoutModifierNodeWithPassThroughIntrinsics {
        public Transition.DeferredAnimation p;
        public State q;
        public AnimatedContentTransitionScopeImpl r;
        public long s = AnimatedContentKt.f3414a;

        public SizeModifierNode(Transition<S>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation, State<? extends SizeTransform> state, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl) {
            this.p = deferredAnimation;
            this.q = state;
            this.r = animatedContentTransitionScopeImpl;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void b2() {
            this.s = AnimatedContentKt.f3414a;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
            final long j3;
            final Placeable placeableT = measurable.T(j2);
            if (measureScope.u0()) {
                j3 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
                IntSize.Companion companion = IntSize.f11020b;
            } else {
                Transition.DeferredAnimation deferredAnimation = this.p;
                int i2 = placeableT.f9548b;
                if (deferredAnimation == null) {
                    j3 = (((long) i2) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
                    IntSize.Companion companion2 = IntSize.f11020b;
                    this.s = j3;
                } else {
                    final long j4 = (((long) placeableT.f9549c) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
                    IntSize.Companion companion3 = IntSize.f11020b;
                    Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA = deferredAnimation.a(new Function1<Transition.Segment<Object>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            long j5;
                            FiniteAnimationSpec finiteAnimationSpecC;
                            Transition.Segment segment = (Transition.Segment) obj;
                            Object f4003a = segment.getF4003a();
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = this.f3468c;
                            long j6 = 0;
                            if (Intrinsics.c(f4003a, sizeModifierNode.r.getF4003a())) {
                                j5 = IntSize.b(sizeModifierNode.s, AnimatedContentKt.f3414a) ? j4 : sizeModifierNode.s;
                            } else {
                                State state = (State) sizeModifierNode.r.f3461e.e(segment.getF4003a());
                                if (state != null) {
                                    j5 = ((IntSize) state.getF10755b()).f11021a;
                                } else {
                                    IntSize.f11020b.getClass();
                                    j5 = 0;
                                }
                            }
                            State state2 = (State) sizeModifierNode.r.f3461e.e(segment.getF4004b());
                            if (state2 != null) {
                                j6 = ((IntSize) state2.getF10755b()).f11021a;
                            } else {
                                IntSize.f11020b.getClass();
                            }
                            SizeTransform sizeTransform = (SizeTransform) sizeModifierNode.q.getF10755b();
                            return (sizeTransform == null || (finiteAnimationSpecC = sizeTransform.c(j5, j6)) == null) ? AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null) : finiteAnimationSpecC;
                        }
                    }, new Function1<Object, IntSize>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            long j5;
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = this.f3469c;
                            if (Intrinsics.c(obj, sizeModifierNode.r.getF4003a())) {
                                j5 = IntSize.b(sizeModifierNode.s, AnimatedContentKt.f3414a) ? j4 : sizeModifierNode.s;
                            } else {
                                State state = (State) sizeModifierNode.r.f3461e.e(obj);
                                if (state != null) {
                                    j5 = ((IntSize) state.getF10755b()).f11021a;
                                } else {
                                    IntSize.f11020b.getClass();
                                    j5 = 0;
                                }
                            }
                            return new IntSize(j5);
                        }
                    });
                    this.r.f3462f = deferredAnimationDataA;
                    j3 = ((IntSize) deferredAnimationDataA.getF10755b()).f11021a;
                    this.s = ((IntSize) deferredAnimationDataA.getF10755b()).f11021a;
                }
            }
            return measureScope.V0((int) (j3 >> 32), (int) (BodyPartID.bodyIdMax & j3), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Alignment alignment = this.f3466c.r.f3459b;
                    Placeable placeable = placeableT;
                    long j5 = (((long) placeable.f9549c) & BodyPartID.bodyIdMax) | (((long) placeable.f9548b) << 32);
                    IntSize.Companion companion4 = IntSize.f11020b;
                    Placeable.PlacementScope.u((Placeable.PlacementScope) obj, placeable, alignment.a(j5, j3, LayoutDirection.Ltr));
                    return Unit.f71739a;
                }
            });
        }
    }

    public AnimatedContentTransitionScopeImpl(Transition<S> transition, Alignment alignment, LayoutDirection layoutDirection) {
        this.f3458a = transition;
        this.f3459b = alignment;
        this.f3460c = layoutDirection;
        IntSize.f11020b.getClass();
        this.d = SnapshotStateKt.g(new IntSize(0L));
        this.f3461e = ScatterMapKt.b();
    }

    public static final long g(AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData = animatedContentTransitionScopeImpl.f3462f;
        return deferredAnimationData != null ? ((IntSize) deferredAnimationData.getF10755b()).f11021a : ((IntSize) ((SnapshotMutableStateImpl) animatedContentTransitionScopeImpl.d).getF10755b()).f11021a;
    }

    @Override // androidx.compose.animation.AnimatedContentTransitionScope
    public final ExitTransition b(int i2, TweenSpec tweenSpec, final Function1 function1) {
        if (h(i2)) {
            return EnterExitTransitionKt.s(new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideOutOfContainer$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long j2;
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.f3474c;
                    State state = (State) animatedContentTransitionScopeImpl.f3461e.e(((SnapshotMutableStateImpl) animatedContentTransitionScopeImpl.f3458a.d).getF10755b());
                    if (state != null) {
                        j2 = ((IntSize) state.getF10755b()).f11021a;
                    } else {
                        IntSize.f11020b.getClass();
                        j2 = 0;
                    }
                    long j3 = j2;
                    long j4 = iIntValue;
                    long j5 = (j4 << 32) | (j4 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j5, j3, LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA >> 32))) - iIntValue));
                }
            }, tweenSpec);
        }
        if (i(i2)) {
            return EnterExitTransitionKt.s(new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideOutOfContainer$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long j2;
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.f3475c;
                    State state = (State) animatedContentTransitionScopeImpl.f3461e.e(((SnapshotMutableStateImpl) animatedContentTransitionScopeImpl.f3458a.d).getF10755b());
                    if (state != null) {
                        j2 = ((IntSize) state.getF10755b()).f11021a;
                    } else {
                        IntSize.f11020b.getClass();
                        j2 = 0;
                    }
                    long j3 = j2;
                    long j4 = iIntValue;
                    long j5 = (j4 << 32) | (j4 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j5, j3, LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA >> 32))) + ((int) (j3 >> 32))));
                }
            }, tweenSpec);
        }
        AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
        if (i2 == AnimatedContentTransitionScope.SlideDirection.f3453c) {
            return EnterExitTransitionKt.u(new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideOutOfContainer$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long j2;
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.f3476c;
                    State state = (State) animatedContentTransitionScopeImpl.f3461e.e(((SnapshotMutableStateImpl) animatedContentTransitionScopeImpl.f3458a.d).getF10755b());
                    if (state != null) {
                        j2 = ((IntSize) state.getF10755b()).f11021a;
                    } else {
                        IntSize.f11020b.getClass();
                        j2 = 0;
                    }
                    long j3 = j2;
                    long j4 = iIntValue;
                    long j5 = (j4 << 32) | (j4 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j5, j3, LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA & BodyPartID.bodyIdMax))) - iIntValue));
                }
            }, tweenSpec);
        }
        if (i2 == AnimatedContentTransitionScope.SlideDirection.d) {
            return EnterExitTransitionKt.u(new Function1<Integer, Integer>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideOutOfContainer$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long j2;
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.f3477c;
                    State state = (State) animatedContentTransitionScopeImpl.f3461e.e(((SnapshotMutableStateImpl) animatedContentTransitionScopeImpl.f3458a.d).getF10755b());
                    if (state != null) {
                        j2 = ((IntSize) state.getF10755b()).f11021a;
                    } else {
                        IntSize.f11020b.getClass();
                        j2 = 0;
                    }
                    long j3 = j2;
                    long j4 = iIntValue;
                    long j5 = (j4 << 32) | (j4 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j5, j3, LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA & BodyPartID.bodyIdMax))) + ((int) (j3 & BodyPartID.bodyIdMax))));
                }
            }, tweenSpec);
        }
        ExitTransition.f3629a.getClass();
        return ExitTransition.f3630b;
    }

    @Override // androidx.compose.animation.AnimatedContentTransitionScope
    public final EnterTransition c(int i2, TweenSpec tweenSpec, final Function1 function1) {
        if (h(i2)) {
            return EnterExitTransitionKt.o(new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideIntoContainer$1
                public final /* synthetic */ AnimatedContentTransitionScopeImpl d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.d = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.d;
                    int iG = (int) (AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl) >> 32);
                    long j2 = iIntValue;
                    long j3 = (j2 << 32) | (j2 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j3, AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl), LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf(iG - ((int) (jA >> 32))));
                }
            }, tweenSpec);
        }
        if (i(i2)) {
            return EnterExitTransitionKt.o(new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideIntoContainer$2
                public final /* synthetic */ AnimatedContentTransitionScopeImpl d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.d = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int iIntValue = ((Number) obj).intValue();
                    long j2 = iIntValue;
                    long j3 = (j2 << 32) | (j2 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.d;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j3, AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl), LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA >> 32))) - iIntValue));
                }
            }, tweenSpec);
        }
        AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
        if (i2 == AnimatedContentTransitionScope.SlideDirection.f3453c) {
            return EnterExitTransitionKt.q(new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideIntoContainer$3
                public final /* synthetic */ AnimatedContentTransitionScopeImpl d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.d = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int iIntValue = ((Number) obj).intValue();
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.d;
                    int iG = (int) (AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl) & BodyPartID.bodyIdMax);
                    long j2 = iIntValue;
                    long j3 = (j2 << 32) | (j2 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j3, AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl), LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf(iG - ((int) (jA & BodyPartID.bodyIdMax))));
                }
            }, tweenSpec);
        }
        if (i2 == AnimatedContentTransitionScope.SlideDirection.d) {
            return EnterExitTransitionKt.q(new Function1<Integer, Integer>(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$slideIntoContainer$4
                public final /* synthetic */ AnimatedContentTransitionScopeImpl d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.d = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int iIntValue = ((Number) obj).intValue();
                    long j2 = iIntValue;
                    long j3 = (j2 << 32) | (j2 & BodyPartID.bodyIdMax);
                    IntSize.Companion companion = IntSize.f11020b;
                    AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = this.d;
                    long jA = animatedContentTransitionScopeImpl.f3459b.a(j3, AnimatedContentTransitionScopeImpl.g(animatedContentTransitionScopeImpl), LayoutDirection.Ltr);
                    IntOffset.Companion companion2 = IntOffset.f11012b;
                    return (Integer) function1.invoke(Integer.valueOf((-((int) (jA & BodyPartID.bodyIdMax))) - iIntValue));
                }
            }, tweenSpec);
        }
        EnterTransition.f3626a.getClass();
        return EnterTransition.f3627b;
    }

    @Override // androidx.compose.animation.AnimatedContentTransitionScope
    public final ContentTransform d(ContentTransform contentTransform, SizeTransform sizeTransform) {
        contentTransform.d = sizeTransform;
        return contentTransform;
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    /* JADX INFO: renamed from: getInitialState */
    public final Object getF4003a() {
        return this.f3458a.f().getF4003a();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    /* JADX INFO: renamed from: getTargetState */
    public final Object getF4004b() {
        return this.f3458a.f().getF4004b();
    }

    public final boolean h(int i2) {
        AnimatedContentTransitionScope.SlideDirection.Companion companion = AnimatedContentTransitionScope.SlideDirection.f3451a;
        companion.getClass();
        if (i2 == 0) {
            return true;
        }
        companion.getClass();
        if (i2 == AnimatedContentTransitionScope.SlideDirection.f3454e && this.f3460c == LayoutDirection.Ltr) {
            return true;
        }
        companion.getClass();
        return i2 == AnimatedContentTransitionScope.SlideDirection.f3455f && this.f3460c == LayoutDirection.Rtl;
    }

    public final boolean i(int i2) {
        AnimatedContentTransitionScope.SlideDirection.Companion companion = AnimatedContentTransitionScope.SlideDirection.f3451a;
        companion.getClass();
        if (i2 == AnimatedContentTransitionScope.SlideDirection.f3452b) {
            return true;
        }
        companion.getClass();
        if (i2 == AnimatedContentTransitionScope.SlideDirection.f3454e && this.f3460c == LayoutDirection.Rtl) {
            return true;
        }
        companion.getClass();
        return i2 == AnimatedContentTransitionScope.SlideDirection.f3455f && this.f3460c == LayoutDirection.Ltr;
    }
}
