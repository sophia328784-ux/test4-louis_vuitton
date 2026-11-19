package androidx.core.widget;

import android.os.Build;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class TextViewCompat {

    public static class Api34Impl {
        public static void a(TextView textView, int i2, float f2) {
            textView.setLineHeight(i2, f2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutoSizeTextType {
    }

    public static void a(TextView textView, int i2) {
        Preconditions.d(i2);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i2 != fontMetricsInt) {
            textView.setLineSpacing(i2 - fontMetricsInt, 1.0f);
        }
    }

    public static void b(TextView textView, int i2, float f2) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.a(textView, i2, f2);
        } else {
            a(textView, Math.round(TypedValue.applyDimension(i2, f2, textView.getResources().getDisplayMetrics())));
        }
    }
}
