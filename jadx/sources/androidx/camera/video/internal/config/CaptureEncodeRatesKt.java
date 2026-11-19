package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"camera-video_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class CaptureEncodeRatesKt {
    public static final boolean a(Rational rational) {
        return Intrinsics.c(rational, Rational.NaN) || Intrinsics.c(rational, Rational.ZERO) || Intrinsics.c(rational, Rational.NEGATIVE_INFINITY) || Intrinsics.c(rational, Rational.POSITIVE_INFINITY);
    }

    public static final int b(Rational rational, int i2) {
        if (rational == null) {
            return i2;
        }
        if (!a(rational)) {
            return MathKt.c(rational.floatValue() * i2);
        }
        rational.toString();
        Logger.c(5, "CaptureEncodeRates");
        return i2;
    }
}
