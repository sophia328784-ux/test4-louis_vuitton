package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, 0), attributeSet, i2);
        d(attributeSet, i2, 0);
    }

    public final void d(AttributeSet attributeSet, int i2, int i3) {
        Context context = getContext();
        if (MaterialAttributes.b(context, R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context.getTheme();
            int[] iArr = R$styleable.I;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i2, i3);
            int[] iArr2 = {1, 2};
            int iC = -1;
            for (int i4 = 0; i4 < 2 && iC < 0; i4++) {
                iC = MaterialResources.c(context, typedArrayObtainStyledAttributes, iArr2[i4], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (iC != -1) {
                return;
            }
            TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i2, i3);
            int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
            typedArrayObtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, R$styleable.H);
                Context context2 = getContext();
                int[] iArr3 = {2, 4};
                int iC2 = -1;
                for (int i5 = 0; i5 < 2 && iC2 < 0; i5++) {
                    iC2 = MaterialResources.c(context2, typedArrayObtainStyledAttributes3, iArr3[i5], -1);
                }
                typedArrayObtainStyledAttributes3.recycle();
                if (iC2 >= 0) {
                    setLineHeight(iC2);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        if (MaterialAttributes.b(context, R.attr.textAppearanceLineHeightEnabled, true)) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i2, R$styleable.H);
            Context context2 = getContext();
            int[] iArr = {2, 4};
            int iC = -1;
            for (int i3 = 0; i3 < 2 && iC < 0; i3++) {
                iC = MaterialResources.c(context2, typedArrayObtainStyledAttributes, iArr[i3], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (iC >= 0) {
                setLineHeight(iC);
            }
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public MaterialTextView(Context context) {
        this(context, null);
    }

    @Deprecated
    public MaterialTextView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, i3), attributeSet, i2);
        d(attributeSet, i2, i3);
    }
}
