package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B)\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/BackgroundNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/ObserverModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/graphics/Color;", "color", "Landroidx/compose/ui/graphics/Brush;", "brush", "", "alpha", "Landroidx/compose/ui/graphics/Shape;", "shape", "<init>", "(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class BackgroundNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, SemanticsModifierNode {
    public long p;
    public Brush q;
    public float r;
    public Shape s;
    public long t;
    public LayoutDirection u;
    public Outline v;
    public Shape w;
    public Outline x;

    public BackgroundNode(long j2, Brush brush, float f2, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this.p = j2;
        this.q = brush;
        this.r = f2;
        this.s = shape;
        Size.f8820b.getClass();
        this.t = Size.f8821c;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void L1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.q(semanticsPropertyReceiver, this.s);
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        Outline outline;
        Brush brush;
        Path path;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        if (this.s == RectangleShapeKt.f8913a) {
            long j2 = this.p;
            Color.f8866b.getClass();
            if (!Color.c(j2, Color.f8871i)) {
                DrawScope.k0(layoutNodeDrawScope, this.p, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 126);
            }
            Brush brush2 = this.q;
            if (brush2 != null) {
                DrawScope.q1(layoutNodeDrawScope, brush2, 0L, 0L, this.r, null, null, 0, 118);
            }
        } else {
            if (Size.a(canvasDrawScope.b(), this.t) && layoutNodeDrawScope.getLayoutDirection() == this.u && Intrinsics.c(this.w, this.s)) {
                outline = this.v;
                outline.getClass();
            } else {
                ObserverModifierNodeKt.a(this, new a(this, layoutNodeDrawScope, 0));
                outline = this.x;
                this.x = null;
            }
            this.v = outline;
            this.t = canvasDrawScope.b();
            this.u = layoutNodeDrawScope.getLayoutDirection();
            this.w = this.s;
            outline.getClass();
            long j3 = this.p;
            Color.f8866b.getClass();
            if (!Color.c(j3, Color.f8871i)) {
                OutlineKt.a(layoutNodeDrawScope, outline, this.p);
            }
            Brush brush3 = this.q;
            if (brush3 != null) {
                float f2 = this.r;
                if ((56 & 4) != 0) {
                    f2 = 1.0f;
                }
                float f3 = f2;
                Fill fill = Fill.f9010a;
                DrawScope.a0.getClass();
                int i2 = DrawScope.Companion.f9007b;
                if (outline instanceof Outline.Rectangle) {
                    Rect rect = ((Outline.Rectangle) outline).f8903a;
                    float f4 = rect.f8811a;
                    float f5 = rect.f8812b;
                    long jFloatToRawIntBits = Float.floatToRawIntBits(f4);
                    long jFloatToRawIntBits2 = BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(f5));
                    Offset.Companion companion = Offset.f8806b;
                    layoutNodeDrawScope.U0(brush3, jFloatToRawIntBits2 | (jFloatToRawIntBits << 32), OutlineKt.b(rect), f3, fill, null, i2);
                } else if (outline instanceof Outline.Rounded) {
                    Outline.Rounded rounded = (Outline.Rounded) outline;
                    path = rounded.f8905b;
                    if (path != null) {
                        brush = brush3;
                        layoutNodeDrawScope.v0(path, brush, f3, fill, null, i2);
                    } else {
                        brush = brush3;
                        RoundRect roundRect = rounded.f8904a;
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.f8819h >> 32));
                        long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(roundRect.f8814a)) << 32) | (((long) Float.floatToRawIntBits(roundRect.f8815b)) & BodyPartID.bodyIdMax);
                        Offset.Companion companion2 = Offset.f8806b;
                        float fB = roundRect.b();
                        long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(roundRect.a())) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fB) << 32);
                        Size.Companion companion3 = Size.f8820b;
                        layoutNodeDrawScope.o1(brush, jFloatToRawIntBits3, jFloatToRawIntBits4, (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32), f3, fill, null, i2);
                    }
                } else if (outline instanceof Outline.Generic) {
                    brush = brush3;
                    path = ((Outline.Generic) outline).f8902a;
                    layoutNodeDrawScope.v0(path, brush, f3, fill, null, i2);
                } else {
                    v40.g();
                }
            }
        }
        layoutNodeDrawScope.R1();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void y0() {
        Size.f8820b.getClass();
        this.t = Size.f8821c;
        this.u = null;
        this.v = null;
        this.w = null;
        DrawModifierNodeKt.a(this);
    }
}
