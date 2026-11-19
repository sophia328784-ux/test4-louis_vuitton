package androidx.compose.ui.text.android;

import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/android/LayoutIntrinsics;", "", "", "charSequence", "Landroid/text/TextPaint;", "textPaint", "", "textDirectionHeuristic", "<init>", "(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayoutIntrinsics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f10589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextPaint f10590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10591c;
    public float d = Float.NaN;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f10592e = Float.NaN;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BoringLayout.Metrics f10593f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f10594h;

    public LayoutIntrinsics(CharSequence charSequence, TextPaint textPaint, int i2) {
        this.f10589a = charSequence;
        this.f10590b = textPaint;
        this.f10591c = i2;
    }

    public final BoringLayout.Metrics a() {
        BoringLayout.Metrics metricsIsBoring;
        if (!this.g) {
            TextDirectionHeuristic textDirectionHeuristicB = TextLayout_androidKt.b(this.f10591c);
            int i2 = Build.VERSION.SDK_INT;
            CharSequence charSequence = this.f10589a;
            TextPaint textPaint = this.f10590b;
            if (i2 >= 33) {
                metricsIsBoring = BoringLayoutFactory33.a(charSequence, textPaint, textDirectionHeuristicB);
            } else {
                metricsIsBoring = !textDirectionHeuristicB.isRtl(charSequence, 0, charSequence.length()) ? BoringLayout.isBoring(charSequence, textPaint, null) : null;
            }
            this.f10593f = metricsIsBoring;
            this.g = true;
        }
        return this.f10593f;
    }

    public final CharSequence b() {
        CharSequence charSequence = this.f10594h;
        if (charSequence != null) {
            charSequence.getClass();
            return charSequence;
        }
        CharSequence charSequence2 = this.f10589a;
        if (charSequence2 instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence2;
            if (SpannedExtensions_androidKt.a(spanned, CharacterStyle.class)) {
                CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(0, charSequence2.length(), CharacterStyle.class);
                if (characterStyleArr != null && characterStyleArr.length != 0) {
                    SpannableString spannableString = null;
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        if (!(characterStyle instanceof MetricAffectingSpan)) {
                            if (spannableString == null) {
                                spannableString = new SpannableString(charSequence2);
                            }
                            spannableString.removeSpan(characterStyle);
                        }
                    }
                    if (spannableString != null) {
                        charSequence2 = spannableString;
                    }
                }
            }
        }
        this.f10594h = charSequence2;
        return charSequence2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0051  */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    public final float c() {
        if (!Float.isNaN(this.d)) {
            return this.d;
        }
        BoringLayout.Metrics metricsA = a();
        float fCeil = metricsA != null ? metricsA.width : -1;
        TextPaint textPaint = this.f10590b;
        if (fCeil < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fCeil = (float) Math.ceil(Layout.getDesiredWidth(b(), 0, b().length(), textPaint));
        }
        if (fCeil != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            CharSequence charSequence = this.f10589a;
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                if (SpannedExtensions_androidKt.a(spanned, LetterSpacingSpanPx.class) || SpannedExtensions_androidKt.a(spanned, LetterSpacingSpanEm.class)) {
                    fCeil += 0.5f;
                } else if (textPaint.getLetterSpacing() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fCeil += 0.5f;
                }
            } else if (textPaint.getLetterSpacing() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fCeil += 0.5f;
            }
        }
        this.d = fCeil;
        return fCeil;
    }
}
