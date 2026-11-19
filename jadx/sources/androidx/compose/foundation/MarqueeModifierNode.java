package androidx.compose.foundation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a2;
import defpackage.pq0;
import defpackage.tb0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B7\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/MarqueeModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "", "iterations", "Landroidx/compose/foundation/MarqueeAnimationMode;", "animationMode", "delayMillis", "initialDelayMillis", "Landroidx/compose/foundation/MarqueeSpacing;", "spacing", "Landroidx/compose/ui/unit/Dp;", "velocity", "<init>", "(IIIILandroidx/compose/foundation/MarqueeSpacing;FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MarqueeModifierNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, FocusEventModifierNode {
    public final State B;
    public int p;
    public int q;
    public int r;
    public float s;
    public Job w;
    public GraphicsLayer x;
    public final MutableState y;
    public final MutableState z;
    public final MutableIntState t = SnapshotIntStateKt.a(0);
    public final MutableIntState u = SnapshotIntStateKt.a(0);
    public final MutableState v = SnapshotStateKt.g(Boolean.FALSE);
    public final Animatable A = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4255a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4255a = iArr;
        }
    }

    public MarqueeModifierNode(int i2, int i3, int i4, int i5, MarqueeSpacing marqueeSpacing, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = i2;
        this.q = i4;
        this.r = i5;
        this.s = f2;
        this.y = SnapshotStateKt.g(marqueeSpacing);
        this.z = SnapshotStateKt.g(new MarqueeAnimationMode(i3));
        this.B = SnapshotStateKt.e(new a(marqueeSpacing, this, 1));
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void E(FocusState focusState) {
        ((SnapshotMutableStateImpl) this.v).setValue(Boolean.valueOf(focusState.b()));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Z1() {
        GraphicsLayer graphicsLayer = this.x;
        GraphicsContext graphicsContext = DelegatableNodeKt.g(this).getGraphicsContext();
        if (graphicsLayer != null) {
            graphicsContext.b(graphicsLayer);
        }
        this.x = graphicsContext.a();
        i2();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void a2() {
        Job job = this.w;
        if (job != null) {
            job.cancel(null);
        }
        this.w = null;
        GraphicsLayer graphicsLayer = this.x;
        if (graphicsLayer != null) {
            DelegatableNodeKt.g(this).getGraphicsContext().b(graphicsLayer);
            this.x = null;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        Placeable placeableT = measurable.T(Constraints.a(j2, 0, Integer.MAX_VALUE, 0, 0, 13));
        int iG = ConstraintsKt.g(placeableT.f9548b, j2);
        SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.u;
        snapshotMutableIntStateImpl.i(iG);
        ((SnapshotMutableIntStateImpl) this.t).i(placeableT.f9548b);
        return measureScope.V0(snapshotMutableIntStateImpl.f(), placeableT.f9549c, MapsKt.c(), new a2(placeableT, 9));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return 0;
    }

    public final int h2() {
        return ((Number) this.B.getF10755b()).intValue();
    }

    public final void i2() {
        Job job = this.w;
        if (job != null) {
            job.cancel(null);
        }
        if (this.o) {
            this.w = BuildersKt.c(V1(), null, null, new MarqueeModifierNode$restartAnimation$1(job, this, null), 3);
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        float f2;
        float fFloatValue;
        int iF;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        int iA = Dp.a(this.s, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        MutableIntState mutableIntState = this.u;
        Animatable animatable = this.A;
        MutableIntState mutableIntState2 = this.t;
        if (iA > 0) {
            int i2 = WhenMappings.f4255a[layoutNodeDrawScope.getLayoutDirection().ordinal()];
            if (i2 == 1) {
                f2 = ((Number) animatable.d()).floatValue();
            } else if (i2 != 2) {
                v40.g();
                return;
            } else {
                fFloatValue = (-((Number) animatable.d()).floatValue()) + (((SnapshotMutableIntStateImpl) mutableIntState2).f() * 2) + h2();
                iF = ((SnapshotMutableIntStateImpl) mutableIntState).f();
                f2 = fFloatValue - iF;
            }
        } else {
            int i3 = WhenMappings.f4255a[layoutNodeDrawScope.getLayoutDirection().ordinal()];
            if (i3 == 1) {
                f2 = (-((Number) animatable.d()).floatValue()) + ((SnapshotMutableIntStateImpl) mutableIntState2).f() + h2();
            } else if (i3 != 2) {
                v40.g();
                return;
            } else {
                fFloatValue = ((Number) animatable.d()).floatValue() + ((SnapshotMutableIntStateImpl) mutableIntState2).f();
                iF = ((SnapshotMutableIntStateImpl) mutableIntState).f();
                f2 = fFloatValue - iF;
            }
        }
        SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) mutableIntState2;
        boolean z = f2 < ((float) snapshotMutableIntStateImpl.f());
        SnapshotMutableIntStateImpl snapshotMutableIntStateImpl2 = (SnapshotMutableIntStateImpl) mutableIntState;
        boolean z2 = ((float) snapshotMutableIntStateImpl2.f()) + f2 > ((float) (snapshotMutableIntStateImpl.f() + h2()));
        float f3 = snapshotMutableIntStateImpl.f() + h2();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax));
        GraphicsLayer graphicsLayer = this.x;
        if (graphicsLayer != null) {
            long jC = (((long) MathKt.c(fIntBitsToFloat)) & BodyPartID.bodyIdMax) | (((long) snapshotMutableIntStateImpl.f()) << 32);
            IntSize.Companion companion = IntSize.f11020b;
            layoutNodeDrawScope.e(jC, graphicsLayer, new tb0(layoutNodeDrawScope, 3));
        }
        float f4 = snapshotMutableIntStateImpl2.f();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax));
        ClipOp.f8864a.getClass();
        int i4 = ClipOp.f8865b;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        long jD = canvasDrawScope$drawContext$1.d();
        canvasDrawScope$drawContext$1.a().p();
        try {
            canvasDrawScope$drawContext$1.f9001a.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, fIntBitsToFloat2, i4);
            float f5 = -f2;
            canvasDrawScope.f8996c.f9001a.g(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            try {
                GraphicsLayer graphicsLayer2 = this.x;
                if (graphicsLayer2 != null) {
                    if (z) {
                        GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer2);
                    }
                    if (z2) {
                        canvasDrawScope.f8996c.f9001a.g(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        try {
                            GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer2);
                            canvasDrawScope.f8996c.f9001a.g(-f3, -0.0f);
                        } catch (Throwable th) {
                            canvasDrawScope.f8996c.f9001a.g(-f3, -0.0f);
                            throw th;
                        }
                    }
                } else {
                    if (z) {
                        layoutNodeDrawScope.R1();
                    }
                    if (z2) {
                        canvasDrawScope.f8996c.f9001a.g(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        try {
                            layoutNodeDrawScope.R1();
                            canvasDrawScope.f8996c.f9001a.g(-f3, -0.0f);
                        } catch (Throwable th2) {
                            canvasDrawScope.f8996c.f9001a.g(-f3, -0.0f);
                            throw th2;
                        }
                    }
                }
                canvasDrawScope.f8996c.f9001a.g(-f5, -0.0f);
                pq0.y(canvasDrawScope$drawContext$1, jD);
            } catch (Throwable th3) {
                canvasDrawScope.f8996c.f9001a.g(-f5, -0.0f);
                throw th3;
            }
        } catch (Throwable th4) {
            pq0.y(canvasDrawScope$drawContext$1, jD);
            throw th4;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return intrinsicMeasurable.H(Integer.MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return intrinsicMeasurable.S(i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        return intrinsicMeasurable.l(Integer.MAX_VALUE);
    }
}
