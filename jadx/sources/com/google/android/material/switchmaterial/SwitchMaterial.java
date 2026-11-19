package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SwitchMaterial extends SwitchCompat {
    private static final int DEF_STYLE_RES = 2132084007;
    private static final int[][] ENABLED_CHECKED_STATES = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private final ElevationOverlayProvider elevationOverlayProvider;
    private ColorStateList materialThemeColorsThumbTintList;
    private ColorStateList materialThemeColorsTrackTintList;
    private boolean useMaterialThemeColors;

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(Context context, AttributeSet attributeSet, int i2) {
        int i3 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.b(context, attributeSet, i2, i3), attributeSet, i2);
        Context context2 = getContext();
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.U, i2, i3, new int[0]);
        this.useMaterialThemeColors = typedArrayD.getBoolean(0, false);
        typedArrayD.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.materialThemeColorsThumbTintList == null) {
            int iB = MaterialColors.b(com.vuitton.android.R.attr.colorSurface, this);
            int iB2 = MaterialColors.b(com.vuitton.android.R.attr.colorControlActivated, this);
            float dimension = getResources().getDimension(com.vuitton.android.R.dimen.mtrl_switch_thumb_elevation);
            if (this.elevationOverlayProvider.f32610a) {
                float elevation = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                    elevation += ((View) parent).getElevation();
                }
                dimension += elevation;
            }
            int iA = this.elevationOverlayProvider.a(dimension, iB);
            int[][] iArr = ENABLED_CHECKED_STATES;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = MaterialColors.g(iB, iB2, 1.0f);
            iArr2[1] = iA;
            iArr2[2] = MaterialColors.g(iB, iB2, 0.38f);
            iArr2[3] = iA;
            this.materialThemeColorsThumbTintList = new ColorStateList(iArr, iArr2);
        }
        return this.materialThemeColorsThumbTintList;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.materialThemeColorsTrackTintList == null) {
            int[][] iArr = ENABLED_CHECKED_STATES;
            int[] iArr2 = new int[iArr.length];
            int iB = MaterialColors.b(com.vuitton.android.R.attr.colorSurface, this);
            int iB2 = MaterialColors.b(com.vuitton.android.R.attr.colorControlActivated, this);
            int iB3 = MaterialColors.b(com.vuitton.android.R.attr.colorOnSurface, this);
            iArr2[0] = MaterialColors.g(iB, iB2, 0.54f);
            iArr2[1] = MaterialColors.g(iB, iB3, 0.32f);
            iArr2[2] = MaterialColors.g(iB, iB2, 0.12f);
            iArr2[3] = MaterialColors.g(iB, iB3, 0.12f);
            this.materialThemeColorsTrackTintList = new ColorStateList(iArr, iArr2);
        }
        return this.materialThemeColorsTrackTintList;
    }

    public boolean isUseMaterialThemeColors() {
        return this.useMaterialThemeColors;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.useMaterialThemeColors && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.useMaterialThemeColors = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.switchStyle);
    }

    public SwitchMaterial(Context context) {
        this(context, null);
    }
}
