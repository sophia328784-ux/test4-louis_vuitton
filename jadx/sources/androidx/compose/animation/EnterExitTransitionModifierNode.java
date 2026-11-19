package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005R\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u001e\u0010\n\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005R\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u001e\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005R\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/animation/EnterExitTransitionModifierNode;", "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "transition", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/animation/core/AnimationVector2D;", "sizeAnimation", "Landroidx/compose/ui/unit/IntOffset;", "offsetAnimation", "slideAnimation", "Landroidx/compose/animation/EnterTransition;", "enter", "Landroidx/compose/animation/ExitTransition;", "exit", "Lkotlin/Function0;", "", "isEnabled", "Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;", "graphicsLayerBlock", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EnterExitTransitionModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    public final Function1 A;
    public Transition p;
    public Transition.DeferredAnimation q;
    public Transition.DeferredAnimation r;
    public Transition.DeferredAnimation s;
    public EnterTransition t;
    public ExitTransition u;
    public Function0 v;
    public GraphicsLayerBlockForEnterExit w;
    public long x = AnimationModifierKt.f3534a;
    public Alignment y;
    public final Function1 z;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3614a;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            try {
                iArr[EnterExitState.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterExitState.PreEnter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterExitState.PostExit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f3614a = iArr;
        }
    }

    public EnterExitTransitionModifierNode(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> deferredAnimation, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation2, Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, Function0<Boolean> function0, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.p = transition;
        this.q = deferredAnimation;
        this.r = deferredAnimation2;
        this.s = deferredAnimation3;
        this.t = enterTransition;
        this.u = exitTransition;
        this.v = function0;
        this.w = graphicsLayerBlockForEnterExit;
        ConstraintsKt.b(0, 0, 0, 0, 15);
        this.z = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$sizeTransitionSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                boolean zE = segment.e(enterExitState, enterExitState2);
                Object obj2 = null;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.f3624c;
                if (zE) {
                    ChangeSize changeSize = enterExitTransitionModifierNode.t.getF3628c().f3755c;
                    if (changeSize != null) {
                        obj2 = changeSize.f3546c;
                    }
                } else if (segment.e(enterExitState2, EnterExitState.PostExit)) {
                    ChangeSize changeSize2 = enterExitTransitionModifierNode.u.getD().f3755c;
                    if (changeSize2 != null) {
                        obj2 = changeSize2.f3546c;
                    }
                } else {
                    obj2 = EnterExitTransitionKt.f3582e;
                }
                return obj2 == null ? EnterExitTransitionKt.f3582e : obj2;
            }
        };
        this.A = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                FiniteAnimationSpec finiteAnimationSpec;
                FiniteAnimationSpec finiteAnimationSpec2;
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.PreEnter;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                boolean zE = segment.e(enterExitState, enterExitState2);
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.f3625c;
                if (zE) {
                    Slide slide = enterExitTransitionModifierNode.t.getF3628c().f3754b;
                    return (slide == null || (finiteAnimationSpec2 = slide.f3747b) == null) ? EnterExitTransitionKt.d : finiteAnimationSpec2;
                }
                if (!segment.e(enterExitState2, EnterExitState.PostExit)) {
                    return EnterExitTransitionKt.d;
                }
                Slide slide2 = enterExitTransitionModifierNode.u.getD().f3754b;
                return (slide2 == null || (finiteAnimationSpec = slide2.f3747b) == null) ? EnterExitTransitionKt.d : finiteAnimationSpec;
            }
        };
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        this.x = AnimationModifierKt.f3534a;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        long j3;
        long j4;
        long j5;
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA = null;
        if (this.p.f3988a.a() == ((SnapshotMutableStateImpl) this.p.d).getF10755b()) {
            this.y = null;
        } else if (this.y == null) {
            Alignment alignmentH2 = h2();
            if (alignmentH2 == null) {
                Alignment.f8582a.getClass();
                alignmentH2 = Alignment.Companion.f8584b;
            }
            this.y = alignmentH2;
        }
        if (measureScope.u0()) {
            final Placeable placeableT = measurable.T(j2);
            long j6 = (((long) placeableT.f9548b) << 32) | (((long) placeableT.f9549c) & BodyPartID.bodyIdMax);
            IntSize.Companion companion = IntSize.f11020b;
            this.x = j6;
            return measureScope.V0((int) (j6 >> 32), (int) (j6 & BodyPartID.bodyIdMax), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    return Unit.f71739a;
                }
            });
        }
        if (!((Boolean) this.v.mo47invoke()).booleanValue()) {
            final Placeable placeableT2 = measurable.T(j2);
            return measureScope.V0(placeableT2.f9548b, placeableT2.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$3$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).j(placeableT2, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    return Unit.f71739a;
                }
            });
        }
        final Function1 function1Init = this.w.init();
        final Placeable placeableT3 = measurable.T(j2);
        long j7 = (((long) placeableT3.f9548b) << 32) | (((long) placeableT3.f9549c) & BodyPartID.bodyIdMax);
        IntSize.Companion companion2 = IntSize.f11020b;
        final long j8 = AnimationModifierKt.c(this.x) ? this.x : j7;
        Transition.DeferredAnimation deferredAnimation = this.q;
        if (deferredAnimation != null) {
            deferredAnimationDataA = deferredAnimation.a(this.z, new Function1<EnterExitState, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Function1 function1;
                    Function1 function2;
                    int i2 = EnterExitTransitionModifierNode.WhenMappings.f3614a[((EnterExitState) obj).ordinal()];
                    long j9 = j8;
                    if (i2 != 1) {
                        EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.f3620c;
                        if (i2 == 2) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.t.getF3628c().f3755c;
                            if (changeSize != null && (function1 = changeSize.f3545b) != null) {
                                j9 = ((IntSize) function1.invoke(new IntSize(j9))).f11021a;
                            }
                        } else {
                            if (i2 != 3) {
                                v40.g();
                                return null;
                            }
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.u.getD().f3755c;
                            if (changeSize2 != null && (function2 = changeSize2.f3545b) != null) {
                                j9 = ((IntSize) function2.invoke(new IntSize(j9))).f11021a;
                            }
                        }
                    }
                    return new IntSize(j9);
                }
            });
        }
        if (deferredAnimationDataA != null) {
            j7 = ((IntSize) deferredAnimationDataA.getF10755b()).f11021a;
        }
        long jD = ConstraintsKt.d(j2, j7);
        Transition.DeferredAnimation deferredAnimation2 = this.r;
        long jA = 0;
        if (deferredAnimation2 != null) {
            j3 = ((IntOffset) deferredAnimation2.a(EnterExitTransitionModifierNode$measure$offsetDelta$1.f3621c, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$offsetDelta$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int i2;
                    EnterExitState enterExitState = (EnterExitState) obj;
                    EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.f3622c;
                    long jC = 0;
                    if (enterExitTransitionModifierNode.y == null || enterExitTransitionModifierNode.h2() == null || Intrinsics.c(enterExitTransitionModifierNode.y, enterExitTransitionModifierNode.h2()) || (i2 = EnterExitTransitionModifierNode.WhenMappings.f3614a[enterExitState.ordinal()]) == 1 || i2 == 2) {
                        IntOffset.f11012b.getClass();
                    } else {
                        if (i2 != 3) {
                            v40.g();
                            return null;
                        }
                        ChangeSize changeSize = enterExitTransitionModifierNode.u.getD().f3755c;
                        if (changeSize != null) {
                            Function1 function1 = changeSize.f3545b;
                            long j9 = j8;
                            long j10 = ((IntSize) function1.invoke(new IntSize(j9))).f11021a;
                            Alignment alignmentH3 = enterExitTransitionModifierNode.h2();
                            alignmentH3.getClass();
                            LayoutDirection layoutDirection = LayoutDirection.Ltr;
                            long jA2 = alignmentH3.a(j9, j10, layoutDirection);
                            Alignment alignment = enterExitTransitionModifierNode.y;
                            alignment.getClass();
                            jC = IntOffset.c(jA2, alignment.a(j9, j10, layoutDirection));
                        } else {
                            IntOffset.f11012b.getClass();
                        }
                    }
                    return new IntOffset(jC);
                }
            }).getF10755b()).f11014a;
        } else {
            IntOffset.f11012b.getClass();
            j3 = 0;
        }
        Transition.DeferredAnimation deferredAnimation3 = this.s;
        if (deferredAnimation3 != null) {
            j4 = ((IntOffset) deferredAnimation3.a(this.A, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$slideOffset$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long j9;
                    long j10;
                    Function1 function1;
                    Function1 function2;
                    EnterExitState enterExitState = (EnterExitState) obj;
                    EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.f3623c;
                    Slide slide = enterExitTransitionModifierNode.t.getF3628c().f3754b;
                    long j11 = j8;
                    long j12 = 0;
                    if (slide == null || (function2 = slide.f3746a) == null) {
                        IntOffset.f11012b.getClass();
                        j9 = 0;
                    } else {
                        j9 = ((IntOffset) function2.invoke(new IntSize(j11))).f11014a;
                    }
                    Slide slide2 = enterExitTransitionModifierNode.u.getD().f3754b;
                    if (slide2 == null || (function1 = slide2.f3746a) == null) {
                        IntOffset.f11012b.getClass();
                        j10 = 0;
                    } else {
                        j10 = ((IntOffset) function1.invoke(new IntSize(j11))).f11014a;
                    }
                    int i2 = EnterExitTransitionModifierNode.WhenMappings.f3614a[enterExitState.ordinal()];
                    if (i2 == 1) {
                        IntOffset.f11012b.getClass();
                    } else if (i2 == 2) {
                        j12 = j9;
                    } else {
                        if (i2 != 3) {
                            v40.g();
                            return null;
                        }
                        j12 = j10;
                    }
                    return new IntOffset(j12);
                }
            }).getF10755b()).f11014a;
        } else {
            IntOffset.f11012b.getClass();
            j4 = 0;
        }
        Alignment alignment = this.y;
        if (alignment != null) {
            long j9 = j8;
            j5 = j4;
            jA = alignment.a(j9, jD, LayoutDirection.Ltr);
        } else {
            j5 = j4;
            IntOffset.f11012b.getClass();
        }
        final long jD2 = IntOffset.d(jA, j5);
        final long j10 = j3;
        return measureScope.V0((int) (jD >> 32), (int) (jD & BodyPartID.bodyIdMax), MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                IntOffset.Companion companion3 = IntOffset.f11012b;
                long j11 = jD2;
                long j12 = j10;
                placementScope.E(placeableT3, ((int) (j11 >> 32)) + ((int) (j12 >> 32)), ((int) (j11 & BodyPartID.bodyIdMax)) + ((int) (j12 & BodyPartID.bodyIdMax)), Call.Parameters.DEFAULT_CAMERA_ZOOM, function1Init);
                return Unit.f71739a;
            }
        });
    }

    public final Alignment h2() {
        Alignment alignment;
        Alignment alignment2;
        if (this.p.f().e(EnterExitState.PreEnter, EnterExitState.Visible)) {
            ChangeSize changeSize = this.t.getF3628c().f3755c;
            if (changeSize != null && (alignment2 = changeSize.f3544a) != null) {
                return alignment2;
            }
            ChangeSize changeSize2 = this.u.getD().f3755c;
            if (changeSize2 != null) {
                return changeSize2.f3544a;
            }
            return null;
        }
        ChangeSize changeSize3 = this.u.getD().f3755c;
        if (changeSize3 != null && (alignment = changeSize3.f3544a) != null) {
            return alignment;
        }
        ChangeSize changeSize4 = this.t.getF3628c().f3755c;
        if (changeSize4 != null) {
            return changeSize4.f3544a;
        }
        return null;
    }
}
