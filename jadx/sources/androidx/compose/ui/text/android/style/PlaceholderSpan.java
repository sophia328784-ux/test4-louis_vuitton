package androidx.compose.ui.text.android.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.os;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001:\u0001\rB9\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/android/style/PlaceholderSpan;", "Landroid/text/style/ReplacementSpan;", "", "width", "", "widthUnit", "height", "heightUnit", "Landroidx/compose/ui/unit/Density;", "density", "verticalAlign", "<init>", "(FIFILandroidx/compose/ui/unit/Density;I)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlaceholderSpan extends ReplacementSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10644c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f10646f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Paint.FontMetricsInt f10648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10650k;
    public boolean l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\u000e\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004¨\u0006\u0010"}, d2 = {"Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion;", "", "", "ALIGN_ABOVE_BASELINE", "I", "ALIGN_TOP", "ALIGN_BOTTOM", "ALIGN_CENTER", "ALIGN_TEXT_TOP", "ALIGN_TEXT_BOTTOM", "ALIGN_TEXT_CENTER", "UNIT_SP", "UNIT_EM", "UNIT_UNSPECIFIED", "VerticalAlign", "Unit", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion$Unit;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @Retention(RetentionPolicy.SOURCE)
        @kotlin.annotation.Retention
        public @interface Unit {
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/android/style/PlaceholderSpan$Companion$VerticalAlign;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        @Retention(RetentionPolicy.SOURCE)
        @kotlin.annotation.Retention
        public @interface VerticalAlign {
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public PlaceholderSpan(float f2, int i2, float f3, int i3, Density density, int i4) {
        float fE0 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fE1 = i2 == 0 ? density.E0(TextUnitKt.d(f2, 4294967296L)) : 0.0f;
        fE0 = i3 == 0 ? density.E0(TextUnitKt.d(f3, 4294967296L)) : fE0;
        this.f10643b = f2;
        this.f10644c = i2;
        this.d = f3;
        this.f10645e = i3;
        this.f10646f = fE1;
        this.g = fE0;
        this.f10647h = i4;
    }

    public final Paint.FontMetricsInt a() {
        Paint.FontMetricsInt fontMetricsInt = this.f10648i;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.h("fontMetrics");
        throw null;
    }

    public final int b() {
        if (!this.l) {
            InlineClassHelperKt.c("PlaceholderSpan is not laid out yet.");
        }
        return this.f10650k;
    }

    public final int c() {
        if (!this.l) {
            InlineClassHelperKt.c("PlaceholderSpan is not laid out yet.");
        }
        return this.f10649j;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        float f2;
        float f3;
        this.l = true;
        float textSize = paint.getTextSize();
        this.f10648i = paint.getFontMetricsInt();
        if (a().descent <= a().ascent) {
            InlineClassHelperKt.a("Invalid fontMetrics: line height can not be negative.");
        }
        int i4 = this.f10644c;
        if (i4 == 0) {
            f2 = this.f10646f;
        } else {
            if (i4 != 1) {
                InlineClassHelperKt.b("Unsupported unit.");
                os.d();
                return 0;
            }
            f2 = this.f10643b * textSize;
        }
        this.f10649j = (int) Math.ceil(f2);
        int i5 = this.f10645e;
        if (i5 == 0) {
            f3 = this.g;
        } else {
            if (i5 != 1) {
                InlineClassHelperKt.b("Unsupported unit.");
                os.d();
                return 0;
            }
            f3 = this.d * textSize;
        }
        this.f10650k = (int) Math.ceil(f3);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = a().ascent;
            fontMetricsInt.descent = a().descent;
            fontMetricsInt.leading = a().leading;
            switch (this.f10647h) {
                case 0:
                    if (fontMetricsInt.ascent > (-b())) {
                        fontMetricsInt.ascent = -b();
                    }
                    break;
                case 1:
                case 4:
                    if (b() + fontMetricsInt.ascent > fontMetricsInt.descent) {
                        fontMetricsInt.descent = b() + fontMetricsInt.ascent;
                    }
                    break;
                case 2:
                case 5:
                    if (fontMetricsInt.ascent > fontMetricsInt.descent - b()) {
                        fontMetricsInt.ascent = fontMetricsInt.descent - b();
                    }
                    break;
                case 3:
                case 6:
                    if (fontMetricsInt.descent - fontMetricsInt.ascent < b()) {
                        int iB = fontMetricsInt.ascent - ((b() - (fontMetricsInt.descent - fontMetricsInt.ascent)) / 2);
                        fontMetricsInt.ascent = iB;
                        fontMetricsInt.descent = b() + iB;
                    }
                    break;
                default:
                    InlineClassHelperKt.a("Unknown verticalAlign.");
                    break;
            }
            fontMetricsInt.top = Math.min(a().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(a().bottom, fontMetricsInt.descent);
        }
        return c();
    }
}
