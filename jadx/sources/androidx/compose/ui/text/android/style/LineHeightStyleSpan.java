package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\b\u0001\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;", "Landroid/text/style/LineHeightSpan;", "", "lineHeight", "", "startIndex", "endIndex", "", "trimFirstLineTop", "trimLastLineBottom", "topRatio", "Landroidx/compose/ui/text/style/LineHeightStyle$Mode;", "mode", "<init>", "(FIIZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LineHeightStyleSpan implements android.text.style.LineHeightSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10636c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f10637e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f10638f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10640i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10641j = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10642k = Integer.MIN_VALUE;
    public int l = Integer.MIN_VALUE;
    public int m;
    public int n;

    public LineHeightStyleSpan(float f2, int i2, int i3, boolean z, boolean z2, float f3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10635b = f2;
        this.f10636c = i2;
        this.d = i3;
        this.f10637e = z;
        this.f10638f = z2;
        this.g = f3;
        this.f10639h = i4;
        if ((Call.Parameters.DEFAULT_CAMERA_ZOOM > f3 || f3 > 1.0f) && f3 != -1.0f) {
            InlineClassHelperKt.c("topRatio should be in [0..1] range or -1");
        }
    }

    @Override // android.text.style.LineHeightSpan
    public final void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt.descent - fontMetricsInt.ascent <= 0) {
            return;
        }
        boolean z = i2 == this.f10636c;
        boolean z2 = i3 == this.d;
        int i6 = this.f10639h;
        boolean z3 = this.f10638f;
        boolean z4 = this.f10637e;
        if (z && z2 && z4 && z3) {
            LineHeightStyle.Mode.f10952b.getClass();
            if (i6 != LineHeightStyle.Mode.d) {
                return;
            }
        }
        if (this.f10640i == Integer.MIN_VALUE) {
            int i7 = fontMetricsInt.descent - fontMetricsInt.ascent;
            int iCeil = (int) Math.ceil(this.f10635b);
            int i8 = iCeil - i7;
            LineHeightStyle.Mode.f10952b.getClass();
            if (i6 != LineHeightStyle.Mode.f10953c || i8 > 0) {
                float fAbs = this.g;
                if (fAbs == -1.0f) {
                    fAbs = Math.abs(fontMetricsInt.ascent) / (fontMetricsInt.descent - fontMetricsInt.ascent);
                }
                int iCeil2 = (int) (i8 <= 0 ? Math.ceil(i8 * fAbs) : Math.ceil((1.0f - fAbs) * i8));
                int i9 = fontMetricsInt.descent;
                int i10 = iCeil2 + i9;
                this.f10642k = i10;
                int i11 = i10 - iCeil;
                this.f10641j = i11;
                if (i6 == 0 || i8 >= 0) {
                    if (z4) {
                        i11 = fontMetricsInt.ascent;
                    }
                    this.f10640i = i11;
                    if (z3) {
                        i10 = i9;
                    }
                    this.l = i10;
                    this.m = fontMetricsInt.ascent - i11;
                    this.n = i10 - i9;
                } else if (i6 == LineHeightStyle.Mode.d) {
                    int i12 = fontMetricsInt.ascent;
                    this.f10640i = z4 ? Math.max(i12, i11) : Math.min(i12, i11);
                    int i13 = fontMetricsInt.descent;
                    int i14 = this.f10642k;
                    this.l = z3 ? Math.min(i13, i14) : Math.max(i13, i14);
                    this.m = 0;
                    this.n = 0;
                }
            } else {
                int i15 = fontMetricsInt.ascent;
                this.f10641j = i15;
                int i16 = fontMetricsInt.descent;
                this.f10642k = i16;
                this.f10640i = i15;
                this.l = i16;
                this.m = 0;
                this.n = 0;
            }
        }
        fontMetricsInt.ascent = z ? this.f10640i : this.f10641j;
        fontMetricsInt.descent = z2 ? this.l : this.f10642k;
    }
}
