package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import com.vuitton.android.R;
import defpackage.d20;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialAttributes {
    public static TypedValue a(int i2, Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean b(Context context, int i2, boolean z) {
        TypedValue typedValueA = a(i2, context);
        if (typedValueA == null || typedValueA.type != 18) {
            return z;
        }
        return typedValueA.data != 0;
    }

    public static int c(Context context) {
        TypedValue typedValueA = a(R.attr.minTouchTargetSize, context);
        return (int) ((typedValueA == null || typedValueA.type != 5) ? context.getResources().getDimension(R.dimen.mtrl_min_touch_target_size) : typedValueA.getDimension(context.getResources().getDisplayMetrics()));
    }

    public static TypedValue d(Context context, int i2, String str) {
        TypedValue typedValueA = a(i2, context);
        if (typedValueA != null) {
            return typedValueA;
        }
        d20.j("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i2)});
        return null;
    }
}
