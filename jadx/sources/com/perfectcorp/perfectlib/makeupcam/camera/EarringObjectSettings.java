package com.perfectcorp.perfectlib.makeupcam.camera;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class EarringObjectSettings {
    public static final int MAX_OBJECT_COUNT = 50;
    public boolean is_valid = false;
    float mass = 1.0f;
    float length = 1.0f;
    float radius_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float radius_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float radius_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float rotation = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float damping = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    int parent_index = -1;
    float base_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float base_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float base_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float center_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float center_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float center_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    public final void Copy(EarringObjectSettings earringObjectSettings) {
        if (earringObjectSettings == null) {
            return;
        }
        this.is_valid = earringObjectSettings.is_valid;
        this.mass = earringObjectSettings.mass;
        this.length = earringObjectSettings.length;
        this.radius_x = earringObjectSettings.radius_x;
        this.radius_y = earringObjectSettings.radius_y;
        this.radius_z = earringObjectSettings.radius_z;
        this.rotation = earringObjectSettings.rotation;
        this.damping = earringObjectSettings.damping;
        this.parent_index = earringObjectSettings.parent_index;
        this.base_x = earringObjectSettings.base_x;
        this.base_y = earringObjectSettings.base_y;
        this.base_z = earringObjectSettings.base_z;
        this.center_x = earringObjectSettings.center_x;
        this.center_y = earringObjectSettings.center_y;
        this.center_z = earringObjectSettings.center_z;
    }
}
