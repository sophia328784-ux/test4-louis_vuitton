package com.perfectcorp.perfectlib.makeupcam.camera;

/* JADX INFO: loaded from: classes3.dex */
public final class LipShapeParameters {
    public boolean is_lip_shape_enabled;
    public int lip_shape_height_intensity;
    public int lip_shape_height_lower_intensity;
    public int lip_shape_height_upper_intensity;
    public int lip_shape_mshaped_intensity;
    public int lip_shape_size_intensity;
    public int lip_shape_width_intensity;

    public LipShapeParameters(boolean z, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.is_lip_shape_enabled = z;
        this.lip_shape_mshaped_intensity = i2;
        this.lip_shape_width_intensity = i3;
        this.lip_shape_size_intensity = i4;
        this.lip_shape_height_intensity = i5;
        this.lip_shape_height_upper_intensity = i6;
        this.lip_shape_height_lower_intensity = i7;
    }

    public LipShapeParameters() {
        this(false, 0, 0, 0, 0, 0, 0);
    }
}
