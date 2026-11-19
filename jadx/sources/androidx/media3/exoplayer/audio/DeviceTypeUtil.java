package androidx.media3.exoplayer.audio;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
abstract class DeviceTypeUtil {
    public static boolean a(int i2) {
        if (i2 == 8 || i2 == 7) {
            return true;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 31 || !(i2 == 26 || i2 == 27)) {
            return i3 >= 33 && i2 == 30;
        }
        return true;
    }
}
