package com.google.android.material.shape;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class EdgeTreatment {
    public boolean a() {
        return this instanceof MarkerEdgeTreatment;
    }

    public void b(float f2, float f3, float f4, ShapePath shapePath) {
        shapePath.d(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}
