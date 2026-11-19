package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import defpackage.v40;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class OutlineKt {
    public static void a(DrawScope drawScope, Outline outline, long j2) {
        Fill fill = Fill.f9010a;
        DrawScope.a0.getClass();
        int i2 = DrawScope.Companion.f9007b;
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).f8903a;
            float f2 = rect.f8811a;
            float f3 = rect.f8812b;
            long jFloatToRawIntBits = Float.floatToRawIntBits(f2);
            long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax;
            Offset.Companion companion = Offset.f8806b;
            drawScope.M0(j2, jFloatToRawIntBits2 | (jFloatToRawIntBits << 32), b(rect), 1.0f, fill, i2);
            return;
        }
        if (!(outline instanceof Outline.Rounded)) {
            if (outline instanceof Outline.Generic) {
                drawScope.a0(((Outline.Generic) outline).f8902a, j2, fill, i2);
                return;
            } else {
                v40.g();
                return;
            }
        }
        Outline.Rounded rounded = (Outline.Rounded) outline;
        AndroidPath androidPath = rounded.f8905b;
        if (androidPath != null) {
            drawScope.a0(androidPath, j2, fill, i2);
            return;
        }
        RoundRect roundRect = rounded.f8904a;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (roundRect.f8819h >> 32));
        float f4 = roundRect.f8814a;
        long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(roundRect.f8815b)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f4) << 32);
        Offset.Companion companion2 = Offset.f8806b;
        long jFloatToRawIntBits4 = (((long) Float.floatToRawIntBits(roundRect.b())) << 32) | (((long) Float.floatToRawIntBits(roundRect.a())) & BodyPartID.bodyIdMax);
        Size.Companion companion3 = Size.f8820b;
        drawScope.z1(j2, jFloatToRawIntBits3, jFloatToRawIntBits4, (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax), fill, i2);
    }

    public static final long b(Rect rect) {
        float f2 = rect.f8813c - rect.f8811a;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(rect.d - rect.f8812b)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }
}
