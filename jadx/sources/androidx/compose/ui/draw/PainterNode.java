package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BA\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/draw/PainterNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/graphics/painter/Painter;", "painter", "", "sizeToIntrinsics", "Landroidx/compose/ui/Alignment;", "alignment", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "", "alpha", "Landroidx/compose/ui/graphics/ColorFilter;", "colorFilter", "<init>", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    public Painter p;
    public boolean q;
    public Alignment r;
    public ContentScale s;
    public float t;
    public ColorFilter u;

    /* JADX WARN: Illegal instructions before constructor call */
    public PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 4) != 0) {
            Alignment.f8582a.getClass();
            alignment = Alignment.Companion.f8587f;
        }
        Alignment alignment2 = alignment;
        if ((i2 & 8) != 0) {
            ContentScale.f9447a.getClass();
            contentScale = ContentScale.Companion.f9452f;
        }
        this(painter, z, alignment2, contentScale, (i2 & 16) != 0 ? 1.0f : f2, (i2 & 32) != 0 ? null : colorFilter);
    }

    public static boolean i2(long j2) {
        Size.f8820b.getClass();
        return !Size.a(j2, Size.f8821c) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))) & Integer.MAX_VALUE) < 2139095040;
    }

    public static boolean j2(long j2) {
        Size.f8820b.getClass();
        return !Size.a(j2, Size.f8821c) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 >> 32))) & Integer.MAX_VALUE) < 2139095040;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        final Placeable placeableT = measurable.T(k2(j2));
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.draw.PainterNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope.y((Placeable.PlacementScope) obj, placeableT, 0, 0);
                return Unit.f71739a;
            }
        });
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int f(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!h2()) {
            return intrinsicMeasurable.M(i2);
        }
        long jK2 = k2(ConstraintsKt.b(0, 0, 0, i2, 7));
        return Math.max(Constraints.j(jK2), intrinsicMeasurable.M(i2));
    }

    public final boolean h2() {
        return this.q && this.p.getR() != 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        long jA;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        long jG = this.p.getR();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(j2(jG) ? Float.intBitsToFloat((int) (jG >> 32)) : Float.intBitsToFloat((int) (canvasDrawScope.b() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(i2(jG) ? Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax)) : Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat((int) (canvasDrawScope.b() >> 32)) == Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Size.f8820b.getClass();
            jA = 0;
        } else {
            jA = ScaleFactorKt.a(jFloatToRawIntBits, this.s.a(jFloatToRawIntBits, canvasDrawScope.b()));
        }
        Alignment alignment = this.r;
        long jRound = (((long) Math.round(Float.intBitsToFloat((int) (jA >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (jA & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        long jA2 = alignment.a(jRound, (((long) Math.round(Float.intBitsToFloat((int) (canvasDrawScope.b() >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax), layoutNodeDrawScope.getLayoutDirection());
        IntOffset.Companion companion2 = IntOffset.f11012b;
        float f2 = (int) (jA2 >> 32);
        float f3 = (int) (jA2 & BodyPartID.bodyIdMax);
        canvasDrawScope.f8996c.f9001a.g(f2, f3);
        try {
            this.p.e(layoutNodeDrawScope, jA, this.t, this.u);
            canvasDrawScope.f8996c.f9001a.g(-f2, -f3);
            layoutNodeDrawScope.R1();
        } catch (Throwable th) {
            canvasDrawScope.f8996c.f9001a.g(-f2, -f3);
            throw th;
        }
    }

    public final long k2(long j2) {
        boolean z = false;
        boolean z2 = Constraints.d(j2) && Constraints.c(j2);
        if (Constraints.f(j2) && Constraints.e(j2)) {
            z = true;
        }
        if ((!h2() && z2) || z) {
            return Constraints.a(j2, Constraints.h(j2), 0, Constraints.g(j2), 0, 10);
        }
        long jG = this.p.getR();
        int iRound = j2(jG) ? Math.round(Float.intBitsToFloat((int) (jG >> 32))) : Constraints.j(j2);
        int iRound2 = i2(jG) ? Math.round(Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax))) : Constraints.i(j2);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(ConstraintsKt.f(iRound2, j2))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(ConstraintsKt.g(iRound, j2))) << 32);
        if (h2()) {
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(!j2(this.p.getR()) ? Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) : Float.intBitsToFloat((int) (this.p.getR() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(!i2(this.p.getR()) ? Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)) : Float.intBitsToFloat((int) (this.p.getR() & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
            if (Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) == Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                Size.f8820b.getClass();
                jFloatToRawIntBits = 0;
            } else {
                jFloatToRawIntBits = ScaleFactorKt.a(jFloatToRawIntBits2, this.s.a(jFloatToRawIntBits2, jFloatToRawIntBits));
            }
        }
        return Constraints.a(j2, ConstraintsKt.g(Math.round(Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32))), j2), 0, ConstraintsKt.f(Math.round(Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax))), j2), 0, 10);
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.p + ", sizeToIntrinsics=" + this.q + ", alignment=" + this.r + ", alpha=" + this.t + ", colorFilter=" + this.u + ')';
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int u(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!h2()) {
            return intrinsicMeasurable.H(i2);
        }
        long jK2 = k2(ConstraintsKt.b(0, i2, 0, 0, 13));
        return Math.max(Constraints.i(jK2), intrinsicMeasurable.H(i2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int y(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!h2()) {
            return intrinsicMeasurable.S(i2);
        }
        long jK2 = k2(ConstraintsKt.b(0, 0, 0, i2, 7));
        return Math.max(Constraints.j(jK2), intrinsicMeasurable.S(i2));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int z(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i2) {
        if (!h2()) {
            return intrinsicMeasurable.l(i2);
        }
        long jK2 = k2(ConstraintsKt.b(0, i2, 0, 0, 13));
        return Math.max(Constraints.i(jK2), intrinsicMeasurable.l(i2));
    }

    public PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter) {
        this.p = painter;
        this.q = z;
        this.r = alignment;
        this.s = contentScale;
        this.t = f2;
        this.u = colorFilter;
    }
}
