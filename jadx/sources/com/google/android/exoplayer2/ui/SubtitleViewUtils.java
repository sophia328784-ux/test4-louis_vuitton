package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.google.android.exoplayer2.text.Cue;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
abstract class SubtitleViewUtils {
    public static void a(Cue.Builder builder) {
        builder.f28349h = -3.4028235E38f;
        builder.g = Integer.MIN_VALUE;
        CharSequence charSequence = builder.f28344a;
        if (charSequence instanceof Spanned) {
            if (!(charSequence instanceof Spannable)) {
                builder.f28344a = SpannableString.valueOf(charSequence);
            }
            CharSequence charSequence2 = builder.f28344a;
            charSequence2.getClass();
            Spannable spannable = (Spannable) charSequence2;
            for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                if ((obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan)) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    public static float b(int i2, int i3, int i4, float f2) {
        float f3;
        if (f2 != -3.4028235E38f) {
            if (i2 == 0) {
                f3 = i4;
            } else if (i2 == 1) {
                f3 = i3;
            } else if (i2 == 2) {
                return f2;
            }
            return f2 * f3;
        }
        return -3.4028235E38f;
    }
}
