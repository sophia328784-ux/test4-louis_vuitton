package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import defpackage.a2;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004BE\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcoil3/compose/internal/AbstractContentPainterNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "", "clipToBounds", "", "contentDescription", "Lcoil3/compose/ConstraintsSizeResolver;", "constraintSizeResolver", "<init>", "(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class AbstractContentPainterNode extends Modifier.Node implements DrawModifierNode, LayoutModifierNode, SemanticsModifierNode {
    public Alignment p;
    public ContentScale q;
    public float r;
    public ColorFilter s;
    public boolean t;
    public String u;
    public ConstraintsSizeResolver v;

    public AbstractContentPainterNode(Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, boolean z, String str, ConstraintsSizeResolver constraintsSizeResolver) {
        this.p = alignment;
        this.q = contentScale;
        this.r = f2;
        this.s = colorFilter;
        this.t = z;
        this.u = str;
        this.v = constraintsSizeResolver;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        String str = this.u;
        if (str != null) {
            SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
            Role.f10289b.getClass();
            SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.g);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        ConstraintsSizeResolver constraintsSizeResolver = this.v;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.v(j2);
        }
        Placeable placeableT = measurable.T(j2(j2));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 0));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jB = ConstraintsKt.b(0, 0, 0, i2, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.v;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.v(jB);
        }
        if (i2().getR() == 9205357640488583168L) {
            return intrinsicMeasurable.M(i2);
        }
        long jJ2 = j2(jB);
        return Math.max(Constraints.j(jJ2), intrinsicMeasurable.M(i2));
    }

    public final long h2(long j2) {
        if (Size.e(j2)) {
            Size.f8820b.getClass();
            return 0L;
        }
        long r = i2().getR();
        if (r != 9205357640488583168L) {
            float fIntBitsToFloat = Float.intBitsToFloat((int) (r >> 32));
            if (Math.abs(fIntBitsToFloat) > Float.MAX_VALUE) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            }
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (r & BodyPartID.bodyIdMax));
            if (Math.abs(fIntBitsToFloat2) > Float.MAX_VALUE) {
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
            }
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
            long jA = this.q.a(jFloatToRawIntBits, j2);
            if (Math.abs(Float.intBitsToFloat((int) (jA >> 32))) <= Float.MAX_VALUE && Math.abs(Float.intBitsToFloat((int) (BodyPartID.bodyIdMax & jA))) <= Float.MAX_VALUE) {
                return ScaleFactorKt.a(jFloatToRawIntBits, jA);
            }
        }
        return j2;
    }

    public abstract Painter i2();

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        long jH2 = h2(canvasDrawScope.b());
        long jA = this.p.a(UtilsKt.f(jH2), UtilsKt.f(canvasDrawScope.b()), layoutNodeDrawScope.getLayoutDirection());
        IntOffset.Companion companion = IntOffset.f11012b;
        int i2 = (int) (jA >> 32);
        int i3 = (int) (jA & BodyPartID.bodyIdMax);
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        long jD = canvasDrawScope$drawContext$1.d();
        canvasDrawScope$drawContext$1.a().p();
        try {
            CanvasDrawScopeKt$asDrawTransform$1 canvasDrawScopeKt$asDrawTransform$1 = canvasDrawScope$drawContext$1.f9001a;
            if (this.t) {
                int i4 = 31 & 4;
                float fIntBitsToFloat = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float fIntBitsToFloat2 = i4 != 0 ? Float.intBitsToFloat((int) (canvasDrawScopeKt$asDrawTransform$1.b() >> 32)) : 0.0f;
                if ((31 & 8) != 0) {
                    fIntBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScopeKt$asDrawTransform$1.b() & BodyPartID.bodyIdMax));
                }
                ClipOp.f8864a.getClass();
                canvasDrawScopeKt$asDrawTransform$1.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat2, fIntBitsToFloat, ClipOp.f8865b);
            } else {
                jH2 = jH2;
            }
            canvasDrawScopeKt$asDrawTransform$1.g(i2, i3);
            i2().e(layoutNodeDrawScope, jH2, this.r, this.s);
            canvasDrawScope$drawContext$1.a().restore();
            canvasDrawScope$drawContext$1.h(jD);
            layoutNodeDrawScope.R1();
        } catch (Throwable th) {
            pq0.y(canvasDrawScope$drawContext$1, jD);
            throw th;
        }
    }

    public final long j2(long j2) {
        float fJ;
        int i2;
        float fC;
        boolean zF = Constraints.f(j2);
        boolean zE = Constraints.e(j2);
        if (!zF || !zE) {
            Painter painterI2 = i2();
            boolean z = Constraints.d(j2) && Constraints.c(j2);
            long r = painterI2.getR();
            if (r != 9205357640488583168L) {
                if (!z || (!zF && !zE)) {
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (r >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (r & BodyPartID.bodyIdMax));
                    if (Math.abs(fIntBitsToFloat) <= Float.MAX_VALUE) {
                        MeasurePolicy measurePolicy = UtilsKt.f21339a;
                        fJ = RangesKt.c(fIntBitsToFloat, Constraints.j(j2), Constraints.h(j2));
                    } else {
                        fJ = Constraints.j(j2);
                    }
                    if (Math.abs(fIntBitsToFloat2) <= Float.MAX_VALUE) {
                        MeasurePolicy measurePolicy2 = UtilsKt.f21339a;
                        fC = RangesKt.c(fIntBitsToFloat2, Constraints.i(j2), Constraints.g(j2));
                    } else {
                        i2 = Constraints.i(j2);
                    }
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fC)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fJ)) << 32);
                    Size.Companion companion = Size.f8820b;
                    long jH2 = h2(jFloatToRawIntBits);
                    return Constraints.a(j2, ConstraintsKt.g(MathKt.c(Float.intBitsToFloat((int) (jH2 >> 32))), j2), 0, ConstraintsKt.f(MathKt.c(Float.intBitsToFloat((int) (jH2 & BodyPartID.bodyIdMax))), j2), 0, 10);
                }
                fJ = Constraints.h(j2);
                i2 = Constraints.g(j2);
                fC = i2;
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fC)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(fJ)) << 32);
                Size.Companion companion2 = Size.f8820b;
                long jH3 = h2(jFloatToRawIntBits2);
                return Constraints.a(j2, ConstraintsKt.g(MathKt.c(Float.intBitsToFloat((int) (jH3 >> 32))), j2), 0, ConstraintsKt.f(MathKt.c(Float.intBitsToFloat((int) (jH3 & BodyPartID.bodyIdMax))), j2), 0, 10);
            }
            if (z && (!(painterI2 instanceof AsyncImagePainter) || ((AsyncImagePainter.State) ((AsyncImagePainter) painterI2).x.getValue()).getF21282a() != null)) {
                return Constraints.a(j2, Constraints.h(j2), 0, Constraints.g(j2), 0, 10);
            }
        }
        return j2;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jB = ConstraintsKt.b(0, i2, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.v;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.v(jB);
        }
        if (i2().getR() == 9205357640488583168L) {
            return intrinsicMeasurable.H(i2);
        }
        long jJ2 = j2(jB);
        return Math.max(Constraints.i(jJ2), intrinsicMeasurable.H(i2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jB = ConstraintsKt.b(0, 0, 0, i2, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.v;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.v(jB);
        }
        if (i2().getR() == 9205357640488583168L) {
            return intrinsicMeasurable.S(i2);
        }
        long jJ2 = j2(jB);
        return Math.max(Constraints.j(jJ2), intrinsicMeasurable.S(i2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        long jB = ConstraintsKt.b(0, i2, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.v;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.v(jB);
        }
        if (i2().getR() == 9205357640488583168L) {
            return intrinsicMeasurable.l(i2);
        }
        long jJ2 = j2(jB);
        return Math.max(Constraints.i(jJ2), intrinsicMeasurable.l(i2));
    }
}
