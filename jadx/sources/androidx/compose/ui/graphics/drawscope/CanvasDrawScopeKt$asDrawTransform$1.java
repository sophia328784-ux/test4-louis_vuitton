package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CanvasDrawScopeKt$asDrawTransform$1 implements DrawTransform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CanvasDrawScope$drawContext$1 f9004a;

    public CanvasDrawScopeKt$asDrawTransform$1(CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1) {
        this.f9004a = canvasDrawScope$drawContext$1;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
    public final void a(float f2, float f3, float f4, float f5, int i2) {
        this.f9004a.a().a(f2, f3, f4, f5, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
    public final long b() {
        return this.f9004a.d();
    }

    public final void c(Path path, int i2) {
        this.f9004a.a().i(path, i2);
    }

    public final void d(float f2, float f3, float f4, float f5) {
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = this.f9004a;
        Canvas canvasA = canvasDrawScope$drawContext$1.a();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope$drawContext$1.d() >> 32)) - (f4 + f2);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (canvasDrawScope$drawContext$1.d() & BodyPartID.bodyIdMax)) - (f5 + f3))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        Size.Companion companion = Size.f8820b;
        if (Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) < Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax)) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Width and height must be greater than or equal to zero");
        }
        canvasDrawScope$drawContext$1.h(jFloatToRawIntBits);
        canvasA.j(f2, f3);
    }

    public final void e(float f2, long j2) {
        Canvas canvasA = this.f9004a.a();
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        canvasA.j(fIntBitsToFloat, Float.intBitsToFloat(i3));
        canvasA.o(f2);
        canvasA.j(-Float.intBitsToFloat(i2), -Float.intBitsToFloat(i3));
    }

    public final void f(float f2, float f3, long j2) {
        Canvas canvasA = this.f9004a.a();
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        canvasA.j(fIntBitsToFloat, Float.intBitsToFloat(i3));
        canvasA.b(f2, f3);
        canvasA.j(-Float.intBitsToFloat(i2), -Float.intBitsToFloat(i3));
    }

    public final void g(float f2, float f3) {
        this.f9004a.a().j(f2, f3);
    }
}
