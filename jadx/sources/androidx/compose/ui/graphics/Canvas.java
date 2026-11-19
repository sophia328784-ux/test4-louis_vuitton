package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/Canvas;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Canvas {
    static void g(Canvas canvas, Rect rect) {
        ClipOp.f8864a.getClass();
        canvas.s(rect, ClipOp.f8865b);
    }

    static void h(Canvas canvas, float f2, float f3, float f4, float f5) {
        ClipOp.f8864a.getClass();
        canvas.a(f2, f3, f4, f5, ClipOp.f8865b);
    }

    static void k(Canvas canvas, Path path) {
        ClipOp.f8864a.getClass();
        canvas.i(path, ClipOp.f8865b);
    }

    void a(float f2, float f3, float f4, float f5, int i2);

    void b(float f2, float f3);

    void c(float f2, float f3, float f4, float f5, Paint paint);

    void d(ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, Paint paint);

    void e(ImageBitmap imageBitmap, long j2, Paint paint);

    void f(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint);

    void i(Path path, int i2);

    void j(float f2, float f3);

    void l();

    void m(Rect rect, Paint paint);

    void n(long j2, long j3, Paint paint);

    void o(float f2);

    void p();

    void q();

    void r(float[] fArr);

    void restore();

    default void s(Rect rect, int i2) {
        a(rect.f8811a, rect.f8812b, rect.f8813c, rect.d, i2);
    }

    void t(Path path, Paint paint);

    void u(float f2, long j2, Paint paint);

    void v(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint);
}
