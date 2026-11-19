package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002BC\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u001c\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006R\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/VeilModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "transition", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/animation/core/AnimationVector4D;", "veilAnimation", "Landroidx/compose/animation/EnterTransition;", "enter", "Landroidx/compose/animation/ExitTransition;", "exit", "<init>", "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class VeilModifierNode extends Modifier.Node implements DrawModifierNode {
    public Transition.DeferredAnimation p;
    public EnterTransition q;
    public ExitTransition r;

    public VeilModifierNode(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition) {
        this.p = deferredAnimation;
        this.q = enterTransition;
        this.r = exitTransition;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        long jFloatToRawIntBits;
        layoutNodeDrawScope.R1();
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA = this.p.a(new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.animation.VeilModifierNode$draw$veilColor$1
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
                VeilModifierNode veilModifierNode = this.f3764c;
                if (zE) {
                    Veil veil = veilModifierNode.q.getF3628c().f3756e;
                    return (veil == null || (finiteAnimationSpec2 = veil.f3760c) == null) ? EnterExitTransitionKt.f3581c : finiteAnimationSpec2;
                }
                if (!segment.e(enterExitState2, EnterExitState.PostExit)) {
                    return EnterExitTransitionKt.f3581c;
                }
                Veil veil2 = veilModifierNode.r.getD().f3756e;
                return (veil2 == null || (finiteAnimationSpec = veil2.f3760c) == null) ? EnterExitTransitionKt.f3581c : finiteAnimationSpec;
            }
        }, new Function1<EnterExitState, Color>() { // from class: androidx.compose.animation.VeilModifierNode$draw$veilColor$2

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f3766a;

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
                    f3766a = iArr;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2;
                int i2 = WhenMappings.f3766a[((EnterExitState) obj).ordinal()];
                VeilModifierNode veilModifierNode = this.f3765c;
                if (i2 == 1) {
                    Veil veil = veilModifierNode.q.getF3628c().f3756e;
                    if (veil != null) {
                        j2 = veil.f3759b;
                    } else {
                        Veil veil2 = veilModifierNode.r.getD().f3756e;
                        if (veil2 != null) {
                            j2 = veil2.f3758a;
                        } else {
                            Color.f8866b.getClass();
                            j2 = Color.f8870h;
                        }
                    }
                } else if (i2 == 2) {
                    Veil veil3 = veilModifierNode.q.getF3628c().f3756e;
                    if (veil3 != null) {
                        j2 = veil3.f3758a;
                    } else {
                        Color.f8866b.getClass();
                        j2 = Color.f8870h;
                    }
                } else {
                    if (i2 != 3) {
                        v40.g();
                        return null;
                    }
                    Veil veil4 = veilModifierNode.r.getD().f3756e;
                    if (veil4 != null) {
                        j2 = veil4.f3759b;
                    } else {
                        Color.f8866b.getClass();
                        j2 = Color.f8870h;
                    }
                }
                return new Color(j2);
            }
        });
        if (Color.d(((Color) deferredAnimationDataA.getF10755b()).f8872a) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        Veil veil = this.q.getF3628c().f3756e;
        if (veil == null) {
            veil = this.r.getD().f3756e;
        }
        if (veil == null || !veil.d) {
            DrawScope.k0(layoutNodeDrawScope, ((Color) deferredAnimationDataA.getF10755b()).f8872a, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 126);
            return;
        }
        NodeCoordinator nodeCoordinatorE = DelegatableNodeKt.e(this);
        LayoutCoordinates layoutCoordinatesD0 = nodeCoordinatorE.d0();
        if (layoutCoordinatesD0 != null) {
            long j2 = ((NodeCoordinator) layoutCoordinatesD0).d;
            float f2 = (int) (j2 >> 32);
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
            Size.Companion companion = Size.f8820b;
        } else {
            Size.f8820b.getClass();
            jFloatToRawIntBits = 0;
        }
        long j3 = jFloatToRawIntBits;
        long jD = LayoutCoordinatesKt.d(nodeCoordinatorE);
        Offset.Companion companion2 = Offset.f8806b;
        DrawScope.k0(layoutNodeDrawScope, ((Color) deferredAnimationDataA.getF10755b()).f8872a, jD ^ (-9223372034707292160L), j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 120);
    }
}
