package com.google.android.material.shape;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f32934b;

    public MarkerEdgeTreatment(float f2) {
        this.f32934b = f2 - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public final void b(float f2, float f3, float f4, ShapePath shapePath) {
        double d = this.f32934b;
        float fSqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(fSqrt, 2.0d));
        shapePath.e(f3 - fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2, 270.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        shapePath.d(f3, (float) (-((Math.sqrt(2.0d) * d) - d)));
        shapePath.d(f3 + fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2);
    }
}
