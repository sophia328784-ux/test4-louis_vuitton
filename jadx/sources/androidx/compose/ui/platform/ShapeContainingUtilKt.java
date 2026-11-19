package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import defpackage.v40;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ShapeContainingUtilKt {
    public static final boolean a(Outline outline, float f2, float f3) {
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).f8903a;
            if (rect.f8811a <= f2 && f2 < rect.f8813c && rect.f8812b <= f3 && f3 < rect.d) {
                return true;
            }
        } else {
            if (!(outline instanceof Outline.Rounded)) {
                if (outline instanceof Outline.Generic) {
                    return b(((Outline.Generic) outline).f8902a, f2, f3);
                }
                v40.g();
                return false;
            }
            RoundRect roundRect = ((Outline.Rounded) outline).f8904a;
            float f4 = roundRect.f8814a;
            long j2 = roundRect.f8818f;
            long j3 = roundRect.f8819h;
            long j4 = roundRect.g;
            float f5 = roundRect.d;
            float f6 = roundRect.f8815b;
            float f7 = roundRect.f8816c;
            long j5 = roundRect.f8817e;
            if (f2 >= f4 && f2 < f7 && f3 >= f6 && f3 < f5) {
                int i2 = (int) (j5 >> 32);
                int i3 = (int) (j2 >> 32);
                if (Float.intBitsToFloat(i3) + Float.intBitsToFloat(i2) <= roundRect.b()) {
                    int i4 = (int) (j3 >> 32);
                    int i5 = (int) (j4 >> 32);
                    if (Float.intBitsToFloat(i5) + Float.intBitsToFloat(i4) <= roundRect.b()) {
                        int i6 = (int) (j5 & BodyPartID.bodyIdMax);
                        float fIntBitsToFloat = Float.intBitsToFloat(i6);
                        int i7 = (int) (j3 & BodyPartID.bodyIdMax);
                        if (Float.intBitsToFloat(i7) + fIntBitsToFloat <= roundRect.a()) {
                            int i8 = (int) (j2 & BodyPartID.bodyIdMax);
                            float fIntBitsToFloat2 = Float.intBitsToFloat(i8);
                            int i9 = (int) (j4 & BodyPartID.bodyIdMax);
                            if (Float.intBitsToFloat(i9) + fIntBitsToFloat2 <= roundRect.a()) {
                                float fIntBitsToFloat3 = Float.intBitsToFloat(i2) + f4;
                                float fIntBitsToFloat4 = Float.intBitsToFloat(i6) + f6;
                                float fIntBitsToFloat5 = f7 - Float.intBitsToFloat(i3);
                                float fIntBitsToFloat6 = Float.intBitsToFloat(i8) + f6;
                                float fIntBitsToFloat7 = f7 - Float.intBitsToFloat(i5);
                                float fIntBitsToFloat8 = f5 - Float.intBitsToFloat(i9);
                                float fIntBitsToFloat9 = f5 - Float.intBitsToFloat(i7);
                                float fIntBitsToFloat10 = Float.intBitsToFloat(i4) + f4;
                                if (f2 < fIntBitsToFloat3 && f3 < fIntBitsToFloat4) {
                                    return c(f2, f3, fIntBitsToFloat3, fIntBitsToFloat4, roundRect.f8817e);
                                }
                                if (f2 < fIntBitsToFloat10 && f3 > fIntBitsToFloat9) {
                                    return c(f2, f3, fIntBitsToFloat10, fIntBitsToFloat9, roundRect.f8819h);
                                }
                                if (f2 > fIntBitsToFloat5 && f3 < fIntBitsToFloat6) {
                                    return c(f2, f3, fIntBitsToFloat5, fIntBitsToFloat6, roundRect.f8818f);
                                }
                                if (f2 <= fIntBitsToFloat7 || f3 <= fIntBitsToFloat8) {
                                    return true;
                                }
                                return c(f2, f3, fIntBitsToFloat7, fIntBitsToFloat8, roundRect.g);
                            }
                        }
                    }
                }
                AndroidPath androidPathA = AndroidPath_androidKt.a();
                androidPathA.s(roundRect, Path.Direction.CounterClockwise);
                return b(androidPathA, f2, f3);
            }
        }
        return false;
    }

    public static final boolean b(Path path, float f2, float f3) {
        Rect rect = new Rect(f2 - 0.005f, f3 - 0.005f, f2 + 0.005f, f3 + 0.005f);
        AndroidPath androidPathA = AndroidPath_androidKt.a();
        androidPathA.j(rect, Path.Direction.CounterClockwise);
        AndroidPath androidPathA2 = AndroidPath_androidKt.a();
        PathOperation.f8910a.getClass();
        androidPathA2.p(path, androidPathA, PathOperation.f8911b);
        boolean zIsEmpty = androidPathA2.f8841a.isEmpty();
        androidPathA2.reset();
        androidPathA.reset();
        return !zIsEmpty;
    }

    public static final boolean c(float f2, float f3, float f4, float f5, long j2) {
        float f6 = f2 - f4;
        float f7 = f3 - f5;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return ((f7 * f7) / (fIntBitsToFloat2 * fIntBitsToFloat2)) + ((f6 * f6) / (fIntBitsToFloat * fIntBitsToFloat)) <= 1.0f;
    }
}
