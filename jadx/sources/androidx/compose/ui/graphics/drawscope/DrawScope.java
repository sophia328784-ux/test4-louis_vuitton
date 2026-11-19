package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPathEffect;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@DrawScopeMarker
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Landroidx/compose/ui/unit/Density;", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DrawScope extends Density {
    public static final Companion a0 = Companion.f9006a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f9006a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f9007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f9008c;

        static {
            BlendMode.f8847a.getClass();
            f9007b = BlendMode.d;
            FilterQuality.f8878a.getClass();
            f9008c = FilterQuality.f8879b;
        }
    }

    static void G0(DrawScope drawScope, Path path, Brush brush, float f2, Stroke stroke, ColorFilter colorFilter, int i2, int i3) {
        if ((i3 & 4) != 0) {
            f2 = 1.0f;
        }
        float f3 = f2;
        DrawStyle drawStyle = stroke;
        if ((i3 & 8) != 0) {
            drawStyle = Fill.f9010a;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i3 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i3 & 32) != 0) {
            a0.getClass();
            i2 = Companion.f9007b;
        }
        drawScope.v0(path, brush, f3, drawStyle2, colorFilter2, i2);
    }

    static void H0(DrawScope drawScope, long j2, long j3, long j4, long j5, Stroke stroke, int i2) {
        long j6;
        if ((i2 & 2) != 0) {
            Offset.f8806b.getClass();
            j6 = 0;
        } else {
            j6 = j3;
        }
        long jN1 = (i2 & 4) != 0 ? n1(drawScope.b(), j6) : j4;
        DrawStyle drawStyle = (i2 & 16) != 0 ? Fill.f9010a : stroke;
        a0.getClass();
        drawScope.z1(j2, j6, jN1, j5, drawStyle, Companion.f9007b);
    }

    static void P1(DrawScope drawScope, Brush brush, long j2, long j3, long j4, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3) {
        long j5;
        int i4;
        if ((i3 & 2) != 0) {
            Offset.f8806b.getClass();
            j5 = 0;
        } else {
            j5 = j2;
        }
        long jN1 = (i3 & 4) != 0 ? n1(drawScope.b(), j5) : j3;
        float f3 = (i3 & 16) != 0 ? 1.0f : f2;
        DrawStyle drawStyle2 = (i3 & 32) != 0 ? Fill.f9010a : drawStyle;
        ColorFilter colorFilter2 = (i3 & 64) != 0 ? null : colorFilter;
        if ((i3 & 128) != 0) {
            a0.getClass();
            i4 = Companion.f9007b;
        } else {
            i4 = i2;
        }
        drawScope.o1(brush, j5, jN1, j4, f3, drawStyle2, colorFilter2, i4);
    }

    static void U(DrawScope drawScope, Path path, long j2, Stroke stroke, int i2) {
        DrawStyle drawStyle = stroke;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.f9010a;
        }
        a0.getClass();
        drawScope.a0(path, j2, drawStyle, Companion.f9007b);
    }

    static void X(DrawScope drawScope, ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3, int i4) {
        long j6;
        long j7;
        int i5;
        int i6;
        if ((i4 & 2) != 0) {
            IntOffset.f11012b.getClass();
            j6 = 0;
        } else {
            j6 = j2;
        }
        if ((i4 & 8) != 0) {
            IntOffset.f11012b.getClass();
            j7 = 0;
        } else {
            j7 = j4;
        }
        long j8 = (i4 & 16) != 0 ? j3 : j5;
        float f3 = (i4 & 32) != 0 ? 1.0f : f2;
        DrawStyle drawStyle2 = (i4 & 64) != 0 ? Fill.f9010a : drawStyle;
        int i7 = i4 & 256;
        Companion companion = a0;
        if (i7 != 0) {
            companion.getClass();
            i5 = Companion.f9007b;
        } else {
            i5 = i2;
        }
        if ((i4 & 512) != 0) {
            companion.getClass();
            i6 = Companion.f9008c;
        } else {
            i6 = i3;
        }
        drawScope.J1(imageBitmap, j6, j3, j7, j8, f3, drawStyle2, colorFilter, i5, i6);
    }

    static void Y(DrawScope drawScope, ImageBitmap imageBitmap, long j2, float f2, ColorFilter colorFilter, int i2, int i3) {
        if ((i3 & 2) != 0) {
            Offset.f8806b.getClass();
            j2 = 0;
        }
        long j3 = j2;
        if ((i3 & 4) != 0) {
            f2 = 1.0f;
        }
        float f3 = f2;
        Fill fill = Fill.f9010a;
        if ((i3 & 32) != 0) {
            a0.getClass();
            i2 = Companion.f9007b;
        }
        drawScope.Q0(imageBitmap, j3, f3, fill, colorFilter, i2);
    }

    static void k0(DrawScope drawScope, long j2, long j3, long j4, float f2, Stroke stroke, int i2) {
        long j5;
        int i3;
        if ((i2 & 2) != 0) {
            Offset.f8806b.getClass();
            j5 = 0;
        } else {
            j5 = j3;
        }
        long jN1 = (i2 & 4) != 0 ? n1(drawScope.b(), j5) : j4;
        float f3 = (i2 & 8) != 0 ? 1.0f : f2;
        DrawStyle drawStyle = (i2 & 16) != 0 ? Fill.f9010a : stroke;
        if ((i2 & 64) != 0) {
            a0.getClass();
            i3 = Companion.f9007b;
        } else {
            i3 = 0;
        }
        drawScope.M0(j2, j5, jN1, f3, drawStyle, i3);
    }

    static long n1(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) - Float.intBitsToFloat((int) (j3 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
        Size.Companion companion = Size.f8820b;
        return jFloatToRawIntBits;
    }

    static void q1(DrawScope drawScope, Brush brush, long j2, long j3, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3) {
        int i4;
        if ((i3 & 2) != 0) {
            Offset.f8806b.getClass();
            j2 = 0;
        }
        long j4 = j2;
        long jN1 = (i3 & 4) != 0 ? n1(drawScope.b(), j4) : j3;
        float f3 = (i3 & 8) != 0 ? 1.0f : f2;
        DrawStyle drawStyle2 = (i3 & 16) != 0 ? Fill.f9010a : drawStyle;
        ColorFilter colorFilter2 = (i3 & 32) != 0 ? null : colorFilter;
        if ((i3 & 64) != 0) {
            a0.getClass();
            i4 = Companion.f9007b;
        } else {
            i4 = i2;
        }
        drawScope.U0(brush, j4, jN1, f3, drawStyle2, colorFilter2, i4);
    }

    static void r0(DrawScope drawScope, long j2, float f2, long j3, DrawStyle drawStyle, int i2) {
        if ((i2 & 2) != 0) {
            f2 = Size.c(drawScope.b()) / 2.0f;
        }
        float f3 = f2;
        if ((i2 & 4) != 0) {
            j3 = drawScope.G1();
        }
        long j4 = j3;
        if ((i2 & 16) != 0) {
            drawStyle = Fill.f9010a;
        }
        a0.getClass();
        drawScope.V(j2, f3, j4, drawStyle, Companion.f9007b);
    }

    static void x0(DrawScope drawScope, long j2, long j3, long j4, float f2, int i2, AndroidPathEffect androidPathEffect, int i3) {
        int i4;
        float f3 = (i3 & 8) != 0 ? 0.0f : f2;
        if ((i3 & 16) != 0) {
            Stroke.f9011f.getClass();
            i4 = 0;
        } else {
            i4 = i2;
        }
        AndroidPathEffect androidPathEffect2 = (i3 & 32) != 0 ? null : androidPathEffect;
        a0.getClass();
        drawScope.b0(j2, j3, j4, f3, i4, androidPathEffect2, Companion.f9007b);
    }

    void G(long j2, float f2, float f3, long j3, long j4, DrawStyle drawStyle, int i2);

    default long G1() {
        return SizeKt.a(getF8996c().d());
    }

    default void J1(ImageBitmap imageBitmap, long j2, long j3, long j4, long j5, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2, int i3) {
        X(this, imageBitmap, j2, j3, j4, j5, f2, drawStyle, colorFilter, i2, 0, 512);
    }

    void M0(long j2, long j3, long j4, float f2, DrawStyle drawStyle, int i2);

    void Q0(ImageBitmap imageBitmap, long j2, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2);

    void U0(Brush brush, long j2, long j3, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2);

    void V(long j2, float f2, long j3, DrawStyle drawStyle, int i2);

    void a0(Path path, long j2, DrawStyle drawStyle, int i2);

    default long b() {
        return getF8996c().d();
    }

    void b0(long j2, long j3, long j4, float f2, int i2, PathEffect pathEffect, int i3);

    LayoutDirection getLayoutDirection();

    void m1(Brush brush, long j2, long j3, float f2, float f3, int i2);

    void o1(Brush brush, long j2, long j3, long j4, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2);

    void v0(Path path, Brush brush, float f2, DrawStyle drawStyle, ColorFilter colorFilter, int i2);

    /* JADX INFO: renamed from: x1 */
    CanvasDrawScope$drawContext$1 getF8996c();

    void z1(long j2, long j3, long j4, long j5, DrawStyle drawStyle, int i2);
}
