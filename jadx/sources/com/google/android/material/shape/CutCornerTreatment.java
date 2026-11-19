package com.google.android.material.shape;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CutCornerTreatment extends CornerTreatment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32933a;

    public CutCornerTreatment() {
        this.f32933a = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public final void a(ShapePath shapePath, float f2, float f3) {
        float f4 = f3 * f2;
        shapePath.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, 180.0f, 90.0f);
        double d = f4;
        shapePath.d((float) (Math.sin(Math.toRadians(90.0d)) * d), (float) (Math.sin(Math.toRadians(0.0d)) * d));
    }

    @Deprecated
    public CutCornerTreatment(float f2) {
        this.f32933a = f2;
    }
}
