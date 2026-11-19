package androidx.compose.ui.text.platform;

import android.graphics.Shader;
import android.text.TextPaint;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import defpackage.k6;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidTextPaint;", "Landroid/text/TextPaint;", "", "flags", "", "density", "<init>", "(IF)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidTextPaint extends TextPaint {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f10886j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AndroidPaint f10887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextDecoration f10888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10889c;
    public Shadow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Color f10890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Brush f10891f;
    public State g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Size f10892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DrawStyle f10893i;

    public AndroidTextPaint(int i2, float f2) {
        super(i2);
        ((TextPaint) this).density = f2;
        TextDecoration.f10965b.getClass();
        this.f10888b = TextDecoration.f10966c;
        DrawScope.a0.getClass();
        this.f10889c = DrawScope.Companion.f9007b;
        Shadow.d.getClass();
        this.d = Shadow.f8925e;
    }

    public final Paint a() {
        AndroidPaint androidPaint = this.f10887a;
        if (androidPaint != null) {
            return androidPaint;
        }
        AndroidPaint androidPaint2 = new AndroidPaint(this);
        this.f10887a = androidPaint2;
        return androidPaint2;
    }

    public final void b(int i2) {
        int i3 = this.f10889c;
        BlendMode.Companion companion = BlendMode.f8847a;
        if (i2 == i3) {
            return;
        }
        ((AndroidPaint) a()).k(i2);
        this.f10889c = i2;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    /* JADX WARN: Code duplicated, block: B:21:0x0041  */
    public final void c(Brush brush, long j2, float f2) {
        if (brush == null) {
            this.g = null;
            this.f10891f = null;
            this.f10892h = null;
            setShader(null);
            return;
        }
        if (brush instanceof SolidColor) {
            d(TextDrawStyleKt.b(f2, ((SolidColor) brush).f8931b));
            return;
        }
        if (!(brush instanceof ShaderBrush)) {
            v40.g();
            return;
        }
        if (Intrinsics.c(this.f10891f, brush)) {
            Size size = this.f10892h;
            if (!(size == null ? false : Size.a(size.f8822a, j2))) {
                if (j2 != 9205357640488583168L) {
                    this.f10891f = brush;
                    this.f10892h = new Size(j2);
                    this.g = SnapshotStateKt.e(new k6(brush, j2, 0));
                }
            }
        } else if (j2 != 9205357640488583168L) {
            this.f10891f = brush;
            this.f10892h = new Size(j2);
            this.g = SnapshotStateKt.e(new k6(brush, j2, 0));
        }
        Paint paintA = a();
        State state = this.g;
        ((AndroidPaint) paintA).f(state != null ? (Shader) state.getF10755b() : null);
        this.f10890e = null;
        AndroidTextPaint_androidKt.a(this, f2);
    }

    public final void d(long j2) {
        Color color = this.f10890e;
        if ((color == null ? false : Color.c(color.f8872a, j2)) || j2 == 16) {
            return;
        }
        this.f10890e = new Color(j2);
        setColor(ColorKt.i(j2));
        this.g = null;
        this.f10891f = null;
        this.f10892h = null;
        setShader(null);
    }

    public final void e(DrawStyle drawStyle) {
        if (drawStyle == null || Intrinsics.c(this.f10893i, drawStyle)) {
            return;
        }
        this.f10893i = drawStyle;
        if (drawStyle.equals(Fill.f9010a)) {
            setStyle(android.graphics.Paint.Style.FILL);
            return;
        }
        if (!(drawStyle instanceof Stroke)) {
            v40.g();
            return;
        }
        Paint paintA = a();
        PaintingStyle.f8906a.getClass();
        ((AndroidPaint) paintA).s(PaintingStyle.f8907b);
        Stroke stroke = (Stroke) drawStyle;
        ((AndroidPaint) a()).r(stroke.f9012a);
        ((AndroidPaint) a()).q(stroke.f9013b);
        ((AndroidPaint) a()).p(stroke.d);
        ((AndroidPaint) a()).o(stroke.f9014c);
        ((AndroidPaint) a()).n(stroke.f9015e);
    }

    public final void f(Shadow shadow) {
        if (shadow == null || Intrinsics.c(this.d, shadow)) {
            return;
        }
        this.d = shadow;
        Shadow.d.getClass();
        if (shadow.equals(Shadow.f8925e)) {
            clearShadowLayer();
            return;
        }
        Shadow shadow2 = this.d;
        float f2 = shadow2.f8928c;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = Float.MIN_VALUE;
        }
        setShadowLayer(f2, Float.intBitsToFloat((int) (shadow2.f8927b >> 32)), Float.intBitsToFloat((int) (this.d.f8927b & BodyPartID.bodyIdMax)), ColorKt.i(this.d.f8926a));
    }

    public final void g(TextDecoration textDecoration) {
        if (textDecoration == null || Intrinsics.c(this.f10888b, textDecoration)) {
            return;
        }
        this.f10888b = textDecoration;
        TextDecoration.Companion companion = TextDecoration.f10965b;
        companion.getClass();
        setUnderlineText(textDecoration.a(TextDecoration.d));
        TextDecoration textDecoration2 = this.f10888b;
        companion.getClass();
        setStrikeThruText(textDecoration2.a(TextDecoration.f10967e));
    }
}
