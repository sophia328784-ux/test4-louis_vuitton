package com.otaliastudios.cameraview;

import android.hardware.Camera;
import com.otaliastudios.cameraview.controls.Facing;
import com.otaliastudios.cameraview.engine.mappers.Camera1Mapper;

/* JADX INFO: loaded from: classes3.dex */
public class CameraUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraLogger f38831a = CameraLogger.a("CameraUtils");

    public static boolean a(Facing facing) {
        if (Camera1Mapper.f38910a == null) {
            Camera1Mapper.f38910a = new Camera1Mapper();
        }
        Camera1Mapper.f38910a.getClass();
        int iIntValue = ((Integer) Camera1Mapper.d.get(facing)).intValue();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == iIntValue) {
                return true;
            }
        }
        return false;
    }
}
