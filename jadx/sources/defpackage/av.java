package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Paint;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class av implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f20641c;
    public final /* synthetic */ long d;

    public /* synthetic */ av(long j2, float f2) {
        this.f20640b = 2;
        this.d = j2;
        this.f20641c = f2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f20640b;
        float f2 = this.f20641c;
        switch (i2) {
            case 0:
                DrawScope drawScope = (DrawScope) obj;
                float fU1 = drawScope.u1(f2);
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(drawScope.u1(f2) / 2.0f)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                DrawScope.x0(drawScope, this.d, jFloatToRawIntBits, (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(drawScope.u1(f2) / 2.0f)) & BodyPartID.bodyIdMax), fU1, 0, null, 496);
                return Unit.f71739a;
            case 1:
                long j2 = this.d;
                DrawScope drawScope2 = (DrawScope) obj;
                drawScope2.getClass();
                AndroidPath androidPathA = AndroidPath_androidKt.a();
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(-1.0f)) & BodyPartID.bodyIdMax);
                Offset.Companion companion2 = Offset.f8806b;
                long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.b() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(drawScope2.u1(f2))) & BodyPartID.bodyIdMax);
                Size.Companion companion3 = Size.f8820b;
                Rect rectA = RectKt.a(jFloatToRawIntBits2, jFloatToRawIntBits3);
                float fU2 = drawScope2.u1(f2);
                long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(drawScope2.u1(f2))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fU2) << 32);
                CornerRadius.Companion companion4 = CornerRadius.f8802a;
                androidPathA.s(RoundRectKt.b(rectA, (((long) Float.floatToRawIntBits(drawScope2.u1(f2))) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(drawScope2.u1(f2)))), jFloatToRawIntBits4), Path.Direction.CounterClockwise);
                ClipOp.f8864a.getClass();
                CanvasDrawScope$drawContext$1 f8996c = drawScope2.getF8996c();
                long jD = f8996c.d();
                f8996c.a().p();
                try {
                    f8996c.f9001a.c(androidPathA, 0);
                    Offset.f8806b.getClass();
                    long jB = drawScope2.b();
                    Fill fill = Fill.f9010a;
                    DrawScope.a0.getClass();
                    drawScope2.M0(j2, 0L, jB, 1.0f, fill, DrawScope.Companion.f9007b);
                    return Unit.f71739a;
                } finally {
                    pq0.y(f8996c, jD);
                }
            default:
                DrawScope drawScope3 = (DrawScope) obj;
                drawScope3.getClass();
                Canvas canvasA = drawScope3.getF8996c().a();
                AndroidPaint androidPaint = new AndroidPaint();
                BlurMaskFilter blurMaskFilter = new BlurMaskFilter(40.0f, BlurMaskFilter.Blur.INNER);
                Paint paint = androidPaint.f8835a;
                paint.setMaskFilter(blurMaskFilter);
                paint.setColor(ColorKt.i(this.d));
                canvasA.v(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (drawScope3.b() >> 32)), Float.intBitsToFloat((int) (drawScope3.b() & BodyPartID.bodyIdMax)), drawScope3.u1(f2), drawScope3.u1(f2), androidPaint);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ av(long j2, int i2, float f2) {
        this.f20640b = i2;
        this.f20641c = f2;
        this.d = j2;
    }
}
