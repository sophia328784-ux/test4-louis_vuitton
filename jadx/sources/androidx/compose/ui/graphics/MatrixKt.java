package androidx.compose.ui.graphics;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MatrixKt {
    public static final boolean a(float[] fArr) {
        return fArr.length >= 16 && fArr[0] == 1.0f && fArr[1] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[2] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[3] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[4] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[5] == 1.0f && fArr[6] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[7] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[8] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[9] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[10] == 1.0f && fArr[11] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[12] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[13] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[14] == Call.Parameters.DEFAULT_CAMERA_ZOOM && fArr[15] == 1.0f;
    }
}
