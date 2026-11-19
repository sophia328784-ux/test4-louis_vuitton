package androidx.camera.core.impl.utils;

import android.opengl.Matrix;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class MatrixExt {
    public static void a(float f2, float[] fArr) {
        Matrix.translateM(fArr, 0, 0.5f, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Matrix.rotateM(fArr, 0, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        Matrix.translateM(fArr, 0, -0.5f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public static void b(float[] fArr) {
        Matrix.translateM(fArr, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Matrix.scaleM(fArr, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr, 0, -0.0f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}
