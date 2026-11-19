package com.google.android.material.dialog;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MaterialDialogs {
    public static Rect a(Context context, int i2, int i3) {
        TypedArray typedArrayD = ThemeEnforcement.d(context, null, R$styleable.u, i2, i3, new int[0]);
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(2, context.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
        int dimensionPixelSize2 = typedArrayD.getDimensionPixelSize(3, context.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
        int dimensionPixelSize3 = typedArrayD.getDimensionPixelSize(1, context.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
        int dimensionPixelSize4 = typedArrayD.getDimensionPixelSize(0, context.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
        typedArrayD.recycle();
        int layoutDirection = context.getResources().getConfiguration().getLayoutDirection();
        int i4 = layoutDirection == 1 ? dimensionPixelSize3 : dimensionPixelSize;
        if (layoutDirection != 1) {
            dimensionPixelSize = dimensionPixelSize3;
        }
        return new Rect(i4, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize4);
    }
}
