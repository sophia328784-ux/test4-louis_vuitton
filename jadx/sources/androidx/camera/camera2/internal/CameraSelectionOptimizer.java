package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import com.linkplay.medialib.ContentTree;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class CameraSelectionOptimizer {
    public static String a(CameraManagerCompat cameraManagerCompat, Integer num, ArrayList arrayList) {
        if (num == null || !arrayList.contains(ContentTree.ROOT_ID) || !arrayList.contains("1")) {
            return null;
        }
        if (num.intValue() == 1) {
            if (((Integer) cameraManagerCompat.b(ContentTree.ROOT_ID).a(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
                return "1";
            }
            return null;
        }
        if (num.intValue() == 0 && ((Integer) cameraManagerCompat.b("1").a(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
            return ContentTree.ROOT_ID;
        }
        return null;
    }
}
