package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[][] f32863h = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f32864f;
    public boolean g;

    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet, i2);
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.D, i2, com.vuitton.android.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayD.hasValue(0)) {
            setButtonTintList(MaterialResources.a(context2, typedArrayD, 0));
        }
        this.g = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f32864f == null) {
            int iB = MaterialColors.b(com.vuitton.android.R.attr.colorControlActivated, this);
            int iB2 = MaterialColors.b(com.vuitton.android.R.attr.colorOnSurface, this);
            int iB3 = MaterialColors.b(com.vuitton.android.R.attr.colorSurface, this);
            this.f32864f = new ColorStateList(f32863h, new int[]{MaterialColors.g(iB3, iB, 1.0f), MaterialColors.g(iB3, iB2, 0.54f), MaterialColors.g(iB3, iB2, 0.38f), MaterialColors.g(iB3, iB2, 0.38f)});
        }
        return this.f32864f;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.g && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.g = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.radioButtonStyle);
    }

    public MaterialRadioButton(Context context) {
        this(context, null);
    }
}
