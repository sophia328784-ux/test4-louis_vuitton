package com.cyberlink.clgpuimage.util;

import com.cyberlink.clgpuimage.Rotation;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TextureRotationUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f25839a = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f25840b = {1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float[] f25841c = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
    public static final float[] d = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    public static float a(float f2) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 1.0f;
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static float[] b(Rotation rotation, boolean z, boolean z2) {
        float[] fArr;
        int i2 = a.f25842a[rotation.ordinal()];
        if (i2 == 1) {
            fArr = f25840b;
        } else if (i2 != 2) {
            fArr = i2 != 3 ? f25839a : d;
        } else {
            fArr = f25841c;
        }
        if (z) {
            fArr = new float[]{a(fArr[0]), fArr[1], a(fArr[2]), fArr[3], a(fArr[4]), fArr[5], a(fArr[6]), fArr[7]};
        }
        return z2 ? new float[]{fArr[0], a(fArr[1]), fArr[2], a(fArr[3]), fArr[4], a(fArr[5]), fArr[6], a(fArr[7])} : fArr;
    }
}
