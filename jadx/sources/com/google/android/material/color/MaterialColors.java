package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MaterialColors {
    public static int a(int i2, int i3) {
        return ColorUtils.e(i2, (Color.alpha(i2) * i3) / 255);
    }

    public static int b(int i2, View view) {
        Context context = view.getContext();
        TypedValue typedValueD = MaterialAttributes.d(view.getContext(), i2, view.getClass().getCanonicalName());
        int i3 = typedValueD.resourceId;
        return i3 != 0 ? ContextCompat.getColor(context, i3) : typedValueD.data;
    }

    public static int c(Context context, int i2, int i3) {
        Integer numE = e(i2, context);
        return numE != null ? numE.intValue() : i3;
    }

    public static int d(Context context, int i2, String str) {
        TypedValue typedValueD = MaterialAttributes.d(context, i2, str);
        int i3 = typedValueD.resourceId;
        return i3 != 0 ? ContextCompat.getColor(context, i3) : typedValueD.data;
    }

    public static Integer e(int i2, Context context) {
        TypedValue typedValueA = MaterialAttributes.a(i2, context);
        if (typedValueA == null) {
            return null;
        }
        int i3 = typedValueA.resourceId;
        return Integer.valueOf(i3 != 0 ? ContextCompat.getColor(context, i3) : typedValueA.data);
    }

    public static boolean f(int i2) {
        if (i2 == 0) {
            return false;
        }
        ThreadLocal threadLocal = ColorUtils.f12052a;
        double[] dArr = (double[]) threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        int iRed = Color.red(i2);
        int iGreen = Color.green(i2);
        int iBlue = Color.blue(i2);
        if (dArr.length != 3) {
            md.n("outXyz must have a length of 3.");
            return false;
        }
        double d = ((double) iRed) / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = ((double) iGreen) / 255.0d;
        double dPow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = ((double) iBlue) / 255.0d;
        double dPow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * 100.0d;
        double d4 = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * 100.0d;
        dArr[1] = d4;
        dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * 100.0d;
        return d4 / 100.0d > 0.5d;
    }

    public static int g(int i2, int i3, float f2) {
        return ColorUtils.c(ColorUtils.e(i3, Math.round(Color.alpha(i3) * f2)), i2);
    }
}
