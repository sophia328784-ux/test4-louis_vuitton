package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DrawStyleSpan_androidKt {
    public static final Paint.Cap a(int i2) {
        StrokeCap.Companion companion = StrokeCap.f8932a;
        companion.getClass();
        if (i2 == 0) {
            return Paint.Cap.BUTT;
        }
        companion.getClass();
        if (i2 == StrokeCap.f8933b) {
            return Paint.Cap.ROUND;
        }
        companion.getClass();
        return i2 == StrokeCap.f8934c ? Paint.Cap.SQUARE : Paint.Cap.BUTT;
    }

    public static final Paint.Join b(int i2) {
        StrokeJoin.Companion companion = StrokeJoin.f8935a;
        companion.getClass();
        if (i2 == 0) {
            return Paint.Join.MITER;
        }
        companion.getClass();
        if (i2 == StrokeJoin.f8936b) {
            return Paint.Join.ROUND;
        }
        companion.getClass();
        return i2 == StrokeJoin.f8937c ? Paint.Join.BEVEL : Paint.Join.MITER;
    }
}
