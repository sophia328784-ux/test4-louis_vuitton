package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.material.elevation.ElevationOverlayProvider;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MaterialShapeUtils {
    public static CornerTreatment a(int i2) {
        if (i2 != 0 && i2 == 1) {
            return new CutCornerTreatment();
        }
        return new RoundedCornerTreatment();
    }

    public static void b(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.f32936c.f32947c;
        if (elevationOverlayProvider == null || !elevationOverlayProvider.f32610a) {
            return;
        }
        float elevation = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ((View) parent).getElevation();
        }
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f32936c;
        if (materialShapeDrawableState.m != elevation) {
            materialShapeDrawableState.m = elevation;
            materialShapeDrawable.C();
        }
    }

    public static void c(ViewGroup viewGroup) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            b(viewGroup, (MaterialShapeDrawable) background);
        }
    }
}
