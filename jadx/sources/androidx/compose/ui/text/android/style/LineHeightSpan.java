package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/android/style/LineHeightSpan;", "Landroid/text/style/LineHeightSpan;", "", "lineHeight", "<init>", "(F)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LineHeightSpan implements android.text.style.LineHeightSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10634b;

    public LineHeightSpan(float f2) {
        this.f10634b = f2;
    }

    @Override // android.text.style.LineHeightSpan
    public final void chooseHeight(CharSequence charSequence, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        int i6 = fontMetricsInt.descent - fontMetricsInt.ascent;
        if (i6 <= 0) {
            return;
        }
        int iCeil = (int) Math.ceil(this.f10634b);
        int iCeil2 = (int) Math.ceil(((double) fontMetricsInt.descent) * ((double) ((iCeil * 1.0f) / i6)));
        fontMetricsInt.descent = iCeil2;
        fontMetricsInt.ascent = iCeil2 - iCeil;
    }
}
