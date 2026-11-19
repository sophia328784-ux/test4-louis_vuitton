package com.google.android.material.shape;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class RoundedCornerTreatment extends CornerTreatment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f32958a;

    public RoundedCornerTreatment() {
        this.f32958a = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public final void a(ShapePath shapePath, float f2, float f3) {
        float f4 = f3 * f2;
        shapePath.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, 180.0f, 90.0f);
        float f5 = f4 * 2.0f;
        shapePath.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, f5, 180.0f, 90.0f);
    }

    @Deprecated
    public RoundedCornerTreatment(float f2) {
        this.f32958a = f2;
    }
}
