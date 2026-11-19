package defpackage;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zg implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f81620c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f81621e;

    public /* synthetic */ zg(float f2, float f3, long j2, int i2) {
        this.f81619b = i2;
        this.f81620c = f2;
        this.d = f3;
        this.f81621e = j2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81619b;
        float f2 = this.d;
        float f3 = this.f81620c;
        switch (i2) {
            case 0:
                long j2 = this.f81621e;
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                AndroidPath androidPathA = AndroidPath_androidKt.a();
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(-1.0f)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(drawScope.u1(f3))) & BodyPartID.bodyIdMax);
                Size.Companion companion2 = Size.f8820b;
                Rect rectA = RectKt.a(jFloatToRawIntBits, jFloatToRawIntBits2);
                float fU1 = drawScope.u1(f2);
                long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(drawScope.u1(f2))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fU1) << 32);
                CornerRadius.Companion companion3 = CornerRadius.f8802a;
                float fU2 = drawScope.u1(f2);
                androidPathA.s(RoundRectKt.b(rectA, (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(drawScope.u1(f2)))) | (Float.floatToRawIntBits(fU2) << 32), jFloatToRawIntBits3), Path.Direction.CounterClockwise);
                ClipOp.f8864a.getClass();
                CanvasDrawScope$drawContext$1 f8996c = drawScope.getF8996c();
                long jD = f8996c.d();
                f8996c.a().p();
                try {
                    f8996c.f9001a.c(androidPathA, 0);
                    Offset.f8806b.getClass();
                    long jB = drawScope.b();
                    Fill fill = Fill.f9010a;
                    DrawScope.a0.getClass();
                    drawScope.M0(j2, 0L, jB, 1.0f, fill, DrawScope.Companion.f9007b);
                    return Unit.f71739a;
                } finally {
                    pq0.y(f8996c, jD);
                }
            default:
                DrawScope drawScope2 = (DrawScope) obj;
                float f4 = LVCalendarKt.f50961a;
                drawScope2.getClass();
                float fU3 = drawScope2.u1(f3);
                float fU4 = drawScope2.u1(f2) + (fU3 / 2.0f);
                long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(fU4)) << 32) | (((long) Float.floatToRawIntBits(fU4)) & BodyPartID.bodyIdMax);
                Offset.Companion companion4 = Offset.f8806b;
                float f5 = fU4 * 2.0f;
                long jFloatToRawIntBits5 = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.b() >> 32)) - f5)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope2.b() & BodyPartID.bodyIdMax)) - f5)) & BodyPartID.bodyIdMax);
                Size.Companion companion5 = Size.f8820b;
                Stroke stroke = new Stroke(fU3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null);
                Dp.Companion companion6 = Dp.f11004c;
                float fU5 = drawScope2.u1(4.0f);
                long jFloatToRawIntBits6 = (((long) Float.floatToRawIntBits(fU5)) << 32) | (((long) Float.floatToRawIntBits(fU5)) & BodyPartID.bodyIdMax);
                CornerRadius.Companion companion7 = CornerRadius.f8802a;
                DrawScope.H0(drawScope2, this.f81621e, jFloatToRawIntBits4, jFloatToRawIntBits5, jFloatToRawIntBits6, stroke, BERTags.FLAGS);
                return Unit.f71739a;
        }
    }
}
