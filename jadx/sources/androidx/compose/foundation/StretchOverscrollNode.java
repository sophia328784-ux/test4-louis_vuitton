package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/StretchOverscrollNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/DelegatableNode;", "pointerInputNode", "Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "overscrollEffect", "Landroidx/compose/foundation/EdgeEffectWrapper;", "edgeEffectWrapper", "<init>", "(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StretchOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public final AndroidEdgeEffectOverscrollEffect r;
    public final EdgeEffectWrapper s;
    public RenderNode t;

    public StretchOverscrollNode(DelegatableNode delegatableNode, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper) {
        this.r = androidEdgeEffectOverscrollEffect;
        this.s = edgeEffectWrapper;
        h2(delegatableNode);
    }

    public static boolean k2(float f2, EdgeEffect edgeEffect, Canvas canvas) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return edgeEffect.draw(canvas);
        }
        int iSave = canvas.save();
        canvas.rotate(f2);
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean zK2;
        char c2;
        float f2;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
        long jB = canvasDrawScope.b();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.r;
        androidEdgeEffectOverscrollEffect.h(jB);
        Canvas canvasA = AndroidCanvas_androidKt.a(canvasDrawScope.f8996c.a());
        ((SnapshotMutableStateImpl) androidEdgeEffectOverscrollEffect.d).getF10755b();
        if (Size.e(canvasDrawScope.b())) {
            layoutNodeDrawScope.R1();
            return;
        }
        boolean zIsHardwareAccelerated = canvasA.isHardwareAccelerated();
        EdgeEffectWrapper edgeEffectWrapper = this.s;
        if (!zIsHardwareAccelerated) {
            EdgeEffect edgeEffect = edgeEffectWrapper.d;
            if (edgeEffect != null) {
                edgeEffect.finish();
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.f4203e;
            if (edgeEffect2 != null) {
                edgeEffect2.finish();
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.f4204f;
            if (edgeEffect3 != null) {
                edgeEffect3.finish();
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
            if (edgeEffect4 != null) {
                edgeEffect4.finish();
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.f4205h;
            if (edgeEffect5 != null) {
                edgeEffect5.finish();
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.f4206i;
            if (edgeEffect6 != null) {
                edgeEffect6.finish();
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.f4207j;
            if (edgeEffect7 != null) {
                edgeEffect7.finish();
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.f4208k;
            if (edgeEffect8 != null) {
                edgeEffect8.finish();
            }
            layoutNodeDrawScope.R1();
            return;
        }
        float fU1 = layoutNodeDrawScope.u1(ClipScrollableContainerKt.f4166a);
        boolean z = EdgeEffectWrapper.f(edgeEffectWrapper.d) || EdgeEffectWrapper.g(edgeEffectWrapper.f4205h) || EdgeEffectWrapper.f(edgeEffectWrapper.f4203e) || EdgeEffectWrapper.g(edgeEffectWrapper.f4206i);
        boolean z2 = EdgeEffectWrapper.f(edgeEffectWrapper.f4204f) || EdgeEffectWrapper.g(edgeEffectWrapper.f4207j) || EdgeEffectWrapper.f(edgeEffectWrapper.g) || EdgeEffectWrapper.g(edgeEffectWrapper.f4208k);
        if (z && z2) {
            l2().setPosition(0, 0, canvasA.getWidth(), canvasA.getHeight());
        } else if (z) {
            l2().setPosition(0, 0, (MathKt.c(fU1) * 2) + canvasA.getWidth(), canvasA.getHeight());
        } else {
            if (!z2) {
                layoutNodeDrawScope.R1();
                return;
            }
            l2().setPosition(0, 0, canvasA.getWidth(), (MathKt.c(fU1) * 2) + canvasA.getHeight());
        }
        RecordingCanvas recordingCanvasBeginRecording = l2().beginRecording();
        if (EdgeEffectWrapper.g(edgeEffectWrapper.f4207j)) {
            EdgeEffect edgeEffectA = edgeEffectWrapper.f4207j;
            if (edgeEffectA == null) {
                edgeEffectA = edgeEffectWrapper.a(Orientation.Horizontal);
                edgeEffectWrapper.f4207j = edgeEffectA;
            }
            k2(90.0f, edgeEffectA, recordingCanvasBeginRecording);
            edgeEffectA.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
            EdgeEffect edgeEffectC = edgeEffectWrapper.c();
            zK2 = k2(270.0f, edgeEffectC, recordingCanvasBeginRecording);
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f4204f)) {
                float fIntBitsToFloat = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.b() & BodyPartID.bodyIdMax));
                EdgeEffect edgeEffectA2 = edgeEffectWrapper.f4207j;
                if (edgeEffectA2 == null) {
                    edgeEffectA2 = edgeEffectWrapper.a(Orientation.Horizontal);
                    edgeEffectWrapper.f4207j = edgeEffectA2;
                }
                EdgeEffectCompat.d(edgeEffectA2, EdgeEffectCompat.b(edgeEffectC), 1.0f - fIntBitsToFloat);
            }
        } else {
            zK2 = false;
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.f4205h)) {
            EdgeEffect edgeEffectA3 = edgeEffectWrapper.f4205h;
            if (edgeEffectA3 == null) {
                edgeEffectA3 = edgeEffectWrapper.a(Orientation.Vertical);
                edgeEffectWrapper.f4205h = edgeEffectA3;
            }
            k2(180.0f, edgeEffectA3, recordingCanvasBeginRecording);
            edgeEffectA3.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
            EdgeEffect edgeEffectE = edgeEffectWrapper.e();
            zK2 = k2(Call.Parameters.DEFAULT_CAMERA_ZOOM, edgeEffectE, recordingCanvasBeginRecording) || zK2;
            c2 = ' ';
            if (EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.b() >> 32));
                EdgeEffect edgeEffectA4 = edgeEffectWrapper.f4205h;
                if (edgeEffectA4 == null) {
                    edgeEffectA4 = edgeEffectWrapper.a(Orientation.Vertical);
                    edgeEffectWrapper.f4205h = edgeEffectA4;
                }
                EdgeEffectCompat.d(edgeEffectA4, EdgeEffectCompat.b(edgeEffectE), fIntBitsToFloat2);
            }
        } else {
            c2 = ' ';
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.f4208k)) {
            EdgeEffect edgeEffectA5 = edgeEffectWrapper.f4208k;
            if (edgeEffectA5 == null) {
                edgeEffectA5 = edgeEffectWrapper.a(Orientation.Horizontal);
                edgeEffectWrapper.f4208k = edgeEffectA5;
            }
            k2(270.0f, edgeEffectA5, recordingCanvasBeginRecording);
            edgeEffectA5.finish();
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
            EdgeEffect edgeEffectD = edgeEffectWrapper.d();
            zK2 = k2(90.0f, edgeEffectD, recordingCanvasBeginRecording) || zK2;
            if (EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                float fIntBitsToFloat3 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.b() & BodyPartID.bodyIdMax));
                EdgeEffect edgeEffectA6 = edgeEffectWrapper.f4208k;
                if (edgeEffectA6 == null) {
                    edgeEffectA6 = edgeEffectWrapper.a(Orientation.Horizontal);
                    edgeEffectWrapper.f4208k = edgeEffectA6;
                }
                EdgeEffectCompat.d(edgeEffectA6, EdgeEffectCompat.b(edgeEffectD), fIntBitsToFloat3);
            }
        }
        if (EdgeEffectWrapper.g(edgeEffectWrapper.f4206i)) {
            EdgeEffect edgeEffectA7 = edgeEffectWrapper.f4206i;
            if (edgeEffectA7 == null) {
                edgeEffectA7 = edgeEffectWrapper.a(Orientation.Vertical);
                edgeEffectWrapper.f4206i = edgeEffectA7;
            }
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            k2(Call.Parameters.DEFAULT_CAMERA_ZOOM, edgeEffectA7, recordingCanvasBeginRecording);
            edgeEffectA7.finish();
        } else {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
            EdgeEffect edgeEffectB = edgeEffectWrapper.b();
            boolean z3 = k2(180.0f, edgeEffectB, recordingCanvasBeginRecording) || zK2;
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f4203e)) {
                float fIntBitsToFloat4 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.b() >> c2));
                EdgeEffect edgeEffectA8 = edgeEffectWrapper.f4206i;
                if (edgeEffectA8 == null) {
                    edgeEffectA8 = edgeEffectWrapper.a(Orientation.Vertical);
                    edgeEffectWrapper.f4206i = edgeEffectA8;
                }
                EdgeEffectCompat.d(edgeEffectA8, EdgeEffectCompat.b(edgeEffectB), 1.0f - fIntBitsToFloat4);
            }
            zK2 = z3;
        }
        if (zK2) {
            androidEdgeEffectOverscrollEffect.c();
        }
        float f3 = z2 ? f2 : fU1;
        if (z) {
            fU1 = f2;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.f8823a = recordingCanvasBeginRecording;
        long jB2 = canvasDrawScope.b();
        Density densityB = canvasDrawScope.f8996c.b();
        LayoutDirection layoutDirectionC = canvasDrawScope.f8996c.c();
        androidx.compose.ui.graphics.Canvas canvasA2 = canvasDrawScope.f8996c.a();
        long jD = canvasDrawScope.f8996c.d();
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.f8996c;
        GraphicsLayer graphicsLayer = canvasDrawScope$drawContext$1.f9002b;
        canvasDrawScope$drawContext$1.f(layoutNodeDrawScope);
        canvasDrawScope$drawContext$1.g(layoutDirection);
        canvasDrawScope$drawContext$1.e(androidCanvas);
        canvasDrawScope$drawContext$1.h(jB2);
        canvasDrawScope$drawContext$1.f9002b = null;
        androidCanvas.p();
        try {
            canvasDrawScope.f8996c.f9001a.g(f3, fU1);
            try {
                layoutNodeDrawScope.R1();
                float f4 = -f3;
                float f5 = -fU1;
                canvasDrawScope.f8996c.f9001a.g(f4, f5);
                androidCanvas.restore();
                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$2 = canvasDrawScope.f8996c;
                canvasDrawScope$drawContext$2.f(densityB);
                canvasDrawScope$drawContext$2.g(layoutDirectionC);
                canvasDrawScope$drawContext$2.e(canvasA2);
                canvasDrawScope$drawContext$2.h(jD);
                canvasDrawScope$drawContext$2.f9002b = graphicsLayer;
                l2().endRecording();
                int iSave = canvasA.save();
                canvasA.translate(f4, f5);
                canvasA.drawRenderNode(l2());
                canvasA.restoreToCount(iSave);
            } catch (Throwable th) {
                canvasDrawScope.f8996c.f9001a.g(-f3, -fU1);
                throw th;
            }
        } catch (Throwable th2) {
            androidCanvas.restore();
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$3 = canvasDrawScope.f8996c;
            canvasDrawScope$drawContext$3.f(densityB);
            canvasDrawScope$drawContext$3.g(layoutDirectionC);
            canvasDrawScope$drawContext$3.e(canvasA2);
            canvasDrawScope$drawContext$3.h(jD);
            canvasDrawScope$drawContext$3.f9002b = graphicsLayer;
            throw th2;
        }
    }

    public final RenderNode l2() {
        RenderNode renderNode = this.t;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode renderNode2 = new RenderNode("AndroidEdgeEffectOverscrollEffect");
        this.t = renderNode2;
        return renderNode2;
    }
}
