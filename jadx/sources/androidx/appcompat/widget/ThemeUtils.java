package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class ThemeUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f1302a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1303b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1304c = {R.attr.state_focused};
    public static final int[] d = {R.attr.state_pressed};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1305e = {R.attr.state_checked};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f1306f = new int[0];
    public static final int[] g = new int[1];

    public static void a(Context context, View view) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R$styleable.f783j);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(117)) {
                view.getClass().toString();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(int i2, Context context) {
        ColorStateList colorStateListD = d(i2, context);
        if (colorStateListD != null && colorStateListD.isStateful()) {
            return colorStateListD.getColorForState(f1303b, colorStateListD.getDefaultColor());
        }
        ThreadLocal threadLocal = f1302a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f2 = typedValue.getFloat();
        int iC = c(i2, context);
        return ColorUtils.e(iC, Math.round(Color.alpha(iC) * f2));
    }

    public static int c(int i2, Context context) {
        int[] iArr = g;
        iArr[0] = i2;
        TintTypedArray tintTypedArrayF = TintTypedArray.f(context, null, iArr);
        try {
            return tintTypedArrayF.f1313b.getColor(0, 0);
        } finally {
            tintTypedArrayF.g();
        }
    }

    public static ColorStateList d(int i2, Context context) {
        int[] iArr = g;
        iArr[0] = i2;
        TintTypedArray tintTypedArrayF = TintTypedArray.f(context, null, iArr);
        try {
            return tintTypedArrayF.a(0);
        } finally {
            tintTypedArrayF.g();
        }
    }
}
