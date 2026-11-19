package com.perfectcorp.perfectlib.makeupcam.camera;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class EarringChainSettings {
    public static final int MAX_CHAIN_COUNT = 50;
    int anchor = -1;
    float base_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float base_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float base_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis1_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis1_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis1_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis2_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis2_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis2_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis3_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis3_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis3_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis_scale_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis_scale_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float axis_scale_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    public void Copy(EarringChainSettings earringChainSettings) {
        if (earringChainSettings == null) {
            return;
        }
        this.anchor = earringChainSettings.anchor;
        this.base_x = earringChainSettings.base_x;
        this.base_y = earringChainSettings.base_y;
        this.base_z = earringChainSettings.base_z;
        this.axis1_x = earringChainSettings.axis1_x;
        this.axis1_y = earringChainSettings.axis1_y;
        this.axis1_z = earringChainSettings.axis1_z;
        this.axis2_x = earringChainSettings.axis2_x;
        this.axis2_y = earringChainSettings.axis2_y;
        this.axis2_z = earringChainSettings.axis2_z;
        this.axis3_x = earringChainSettings.axis3_x;
        this.axis3_y = earringChainSettings.axis3_y;
        this.axis3_z = earringChainSettings.axis3_z;
        this.axis_scale_x = earringChainSettings.axis_scale_x;
        this.axis_scale_y = earringChainSettings.axis_scale_y;
        this.axis_scale_z = earringChainSettings.axis_scale_z;
    }
}
