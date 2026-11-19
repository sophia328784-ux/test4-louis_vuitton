package androidx.camera.core.impl.utils;

import androidx.camera.core.Logger;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraOrientationUtil {
    public static int a(int i2, int i3, boolean z) {
        int i4 = z ? ((i3 - i2) + 360) % 360 : (i3 + i2) % 360;
        if (Logger.c(2, "CameraOrientationUtil")) {
            StringBuilder sbP = fc.p(i2, i3, "getRelativeImageRotation: destRotationDegrees=", ", sourceRotationDegrees=", ", isOppositeFacing=");
            sbP.append(z);
            sbP.append(", result=");
            sbP.append(i4);
            Logger.c(3, "CameraOrientationUtil");
        }
        return i4;
    }

    public static int b(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 90;
        }
        if (i2 == 2) {
            return Sink.ORIENTATION_180;
        }
        if (i2 == 3) {
            return Sink.ORIENTATION_270;
        }
        md.n(pq0.k(i2, "Unsupported surface rotation: "));
        return 0;
    }
}
