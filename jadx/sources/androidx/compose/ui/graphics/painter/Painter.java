package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/painter/Painter;", "", "<init>", "()V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Painter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AndroidPaint f9051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9052c;
    public ColorFilter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f9053e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LayoutDirection f9054f = LayoutDirection.Ltr;

    public Painter() {
        new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.graphics.painter.Painter$drawLambda$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f9055c.h((DrawScope) obj);
                return Unit.f71739a;
            }
        };
    }

    public boolean a(float f2) {
        return false;
    }

    public boolean b(ColorFilter colorFilter) {
        return false;
    }

    public void c(LayoutDirection layoutDirection) {
    }

    public final void e(DrawScope drawScope, long j2, float f2, ColorFilter colorFilter) {
        if (this.f9053e != f2) {
            if (!a(f2)) {
                AndroidPaint androidPaint = this.f9051b;
                if (f2 == 1.0f) {
                    if (androidPaint != null) {
                        androidPaint.d(f2);
                    }
                    this.f9052c = false;
                } else {
                    if (androidPaint == null) {
                        androidPaint = new AndroidPaint();
                        this.f9051b = androidPaint;
                    }
                    androidPaint.d(f2);
                    this.f9052c = true;
                }
            }
            this.f9053e = f2;
        }
        if (!Intrinsics.c(this.d, colorFilter)) {
            if (!b(colorFilter)) {
                AndroidPaint androidPaint2 = this.f9051b;
                if (colorFilter == null) {
                    if (androidPaint2 != null) {
                        androidPaint2.l(null);
                    }
                    this.f9052c = false;
                } else {
                    if (androidPaint2 == null) {
                        androidPaint2 = new AndroidPaint();
                        this.f9051b = androidPaint2;
                    }
                    androidPaint2.l(colorFilter);
                    this.f9052c = true;
                }
            }
            this.d = colorFilter;
        }
        LayoutDirection layoutDirection = drawScope.getLayoutDirection();
        if (this.f9054f != layoutDirection) {
            c(layoutDirection);
            this.f9054f = layoutDirection;
        }
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() >> 32)) - Float.intBitsToFloat(i2);
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax));
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat3 = fIntBitsToFloat2 - Float.intBitsToFloat(i3);
        drawScope.getF8996c().f9001a.d(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fIntBitsToFloat, fIntBitsToFloat3);
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            try {
                if (Float.intBitsToFloat(i2) > Call.Parameters.DEFAULT_CAMERA_ZOOM && Float.intBitsToFloat(i3) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (this.f9052c) {
                        Offset.f8806b.getClass();
                        float fIntBitsToFloat4 = Float.intBitsToFloat(i2);
                        float fIntBitsToFloat5 = Float.intBitsToFloat(i3);
                        long jFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat4);
                        long jFloatToRawIntBits2 = ((long) Float.floatToRawIntBits(fIntBitsToFloat5)) & BodyPartID.bodyIdMax;
                        Size.Companion companion = Size.f8820b;
                        Rect rectA = RectKt.a(0L, jFloatToRawIntBits2 | (jFloatToRawIntBits << 32));
                        Canvas canvasA = drawScope.getF8996c().a();
                        AndroidPaint androidPaint3 = this.f9051b;
                        if (androidPaint3 == null) {
                            androidPaint3 = new AndroidPaint();
                            this.f9051b = androidPaint3;
                        }
                        try {
                            canvasA.m(rectA, androidPaint3);
                            h(drawScope);
                            canvasA.restore();
                        } catch (Throwable th) {
                            canvasA.restore();
                            throw th;
                        }
                    } else {
                        h(drawScope);
                    }
                }
            } catch (Throwable th2) {
                drawScope.getF8996c().f9001a.d(-0.0f, -0.0f, -fIntBitsToFloat, -fIntBitsToFloat3);
                throw th2;
            }
        }
        drawScope.getF8996c().f9001a.d(-0.0f, -0.0f, -fIntBitsToFloat, -fIntBitsToFloat3);
    }

    public abstract long g();

    public abstract void h(DrawScope drawScope);
}
