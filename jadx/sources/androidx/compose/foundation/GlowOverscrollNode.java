package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.Metadata;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/GlowOverscrollNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/DelegatableNode;", "pointerInputNode", "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "overscrollEffect", "Landroidx/compose/foundation/EdgeEffectWrapper;", "edgeEffectWrapper", "Landroidx/compose/foundation/layout/PaddingValues;", "glowDrawPadding", "<init>", "(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;Landroidx/compose/foundation/layout/PaddingValues;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GlowOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final AndroidEdgeEffectOverscrollEffect r;
    public final EdgeEffectWrapper s;
    public final PaddingValues t;

    public GlowOverscrollNode(DelegatableNode delegatableNode, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper, PaddingValues paddingValues) {
        this.r = androidEdgeEffectOverscrollEffect;
        this.s = edgeEffectWrapper;
        this.t = paddingValues;
        h2(delegatableNode);
    }

    public static boolean k2(float f2, long j2, EdgeEffect edgeEffect, Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(f2);
        canvas.translate(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean zK2;
        char c2;
        long j2;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        long jB = canvasDrawScope.b();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.r;
        androidEdgeEffectOverscrollEffect.h(jB);
        if (Size.e(canvasDrawScope.b())) {
            layoutNodeDrawScope.R1();
            return;
        }
        layoutNodeDrawScope.R1();
        ((SnapshotMutableStateImpl) androidEdgeEffectOverscrollEffect.d).getF10755b();
        Canvas canvasA = AndroidCanvas_androidKt.a(canvasDrawScope.f8996c.a());
        EdgeEffectWrapper edgeEffectWrapper = this.s;
        boolean zF = EdgeEffectWrapper.f(edgeEffectWrapper.f4204f);
        PaddingValues paddingValues = this.t;
        if (zF) {
            EdgeEffect edgeEffectC = edgeEffectWrapper.c();
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(layoutNodeDrawScope.u1(paddingValues.b(layoutNodeDrawScope.getLayoutDirection())))) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (canvasDrawScope.b() & BodyPartID.bodyIdMax)))) << 32);
            Offset.Companion companion = Offset.f8806b;
            zK2 = k2(270.0f, jFloatToRawIntBits, edgeEffectC, canvasA);
        } else {
            zK2 = false;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
            EdgeEffect edgeEffectE = edgeEffectWrapper.e();
            c2 = ' ';
            j2 = 4294967295L;
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(layoutNodeDrawScope.u1(paddingValues.getF5031b()))) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            zK2 = k2(Call.Parameters.DEFAULT_CAMERA_ZOOM, jFloatToRawIntBits2, edgeEffectE, canvasA) || zK2;
        } else {
            c2 = ' ';
            j2 = 4294967295L;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
            EdgeEffect edgeEffectD = edgeEffectWrapper.d();
            long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(layoutNodeDrawScope.u1(paddingValues.c(layoutNodeDrawScope.getLayoutDirection())) + (-MathKt.c(Float.intBitsToFloat((int) (canvasDrawScope.b() >> c2)))))) & j2) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << c2);
            Offset.Companion companion3 = Offset.f8806b;
            zK2 = k2(90.0f, jFloatToRawIntBits3, edgeEffectD, canvasA) || zK2;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
            EdgeEffect edgeEffectB = edgeEffectWrapper.b();
            long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(-Float.intBitsToFloat((int) (canvasDrawScope.b() >> c2)))) << c2) | (((long) Float.floatToRawIntBits((-Float.intBitsToFloat((int) (canvasDrawScope.b() & j2))) + layoutNodeDrawScope.u1(paddingValues.getD()))) & j2);
            Offset.Companion companion4 = Offset.f8806b;
            zK2 = k2(180.0f, jFloatToRawIntBits4, edgeEffectB, canvasA) || zK2;
        }
        if (zK2) {
            androidEdgeEffectOverscrollEffect.c();
        }
    }
}
