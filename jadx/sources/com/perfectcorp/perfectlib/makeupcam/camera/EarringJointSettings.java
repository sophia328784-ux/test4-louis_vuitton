package com.perfectcorp.perfectlib.makeupcam.camera;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class EarringJointSettings {
    public static final int MAX_JOINT_COUNT = 50;
    int index1 = -1;
    int index2 = -1;
    float position_x = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float position_y = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    float position_z = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    public void Copy(EarringJointSettings earringJointSettings) {
        if (earringJointSettings == null) {
            return;
        }
        this.index1 = earringJointSettings.index1;
        this.index2 = earringJointSettings.index2;
        this.position_x = earringJointSettings.position_x;
        this.position_y = earringJointSettings.position_y;
        this.position_z = earringJointSettings.position_z;
    }
}
