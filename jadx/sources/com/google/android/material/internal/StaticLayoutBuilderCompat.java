package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.ln0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class StaticLayoutBuilderCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f32722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextPaint f32723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32724c;
    public int d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32730k;
    public ln0 m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Layout.Alignment f32725e = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32726f = Integer.MAX_VALUE;
    public float g = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32727h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32728i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f32729j = true;
    public TextUtils.TruncateAt l = null;

    /* JADX INFO: loaded from: classes2.dex */
    public static class StaticLayoutBuilderCompatException extends Exception {
    }

    public StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i2) {
        this.f32722a = charSequence;
        this.f32723b = textPaint;
        this.f32724c = i2;
        this.d = charSequence.length();
    }

    public final StaticLayout a() {
        if (this.f32722a == null) {
            this.f32722a = "";
        }
        int iMax = Math.max(0, this.f32724c);
        CharSequence charSequenceEllipsize = this.f32722a;
        int i2 = this.f32726f;
        TextPaint textPaint = this.f32723b;
        if (i2 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.d);
        this.d = iMin;
        if (this.f32730k && this.f32726f == 1) {
            this.f32725e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
        builderObtain.setAlignment(this.f32725e);
        builderObtain.setIncludePad(this.f32729j);
        builderObtain.setTextDirection(this.f32730k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.l;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f32726f);
        float f2 = this.g;
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || this.f32727h != 1.0f) {
            builderObtain.setLineSpacing(f2, this.f32727h);
        }
        if (this.f32726f > 1) {
            builderObtain.setHyphenationFrequency(this.f32728i);
        }
        ln0 ln0Var = this.m;
        if (ln0Var != null) {
            builderObtain.setBreakStrategy(((TextInputLayout) ln0Var.f76063c).v.getBreakStrategy());
        }
        return builderObtain.build();
    }
}
