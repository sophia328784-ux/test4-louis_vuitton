package androidx.camera.core.internal.compat.workaround;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.LargeJpegImageQuirk;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class InvalidJpegDataParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LargeJpegImageQuirk f2507a = (LargeJpegImageQuirk) DeviceQuirks.f2499a.b(LargeJpegImageQuirk.class);

    /* JADX WARN: Code duplicated, block: B:35:0x006e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    public final int a(byte[] bArr) {
        int i2;
        byte b2;
        if (this.f2507a == null || !(("Samsung".equalsIgnoreCase(Build.BRAND) && LargeJpegImageQuirk.f2502a.contains(Build.MODEL.toUpperCase(Locale.US))) || LargeJpegImageQuirk.f() || bArr.length > 10000000)) {
            return bArr.length;
        }
        int i3 = 2;
        while (i3 + 4 <= bArr.length && (b2 = bArr[i3]) == -1) {
            int i4 = i3 + 2;
            int i5 = ((bArr[i4] & 255) << 8) | (bArr[i3 + 3] & 255);
            if (b2 == -1 && bArr[i3 + 1] == -38) {
                while (true) {
                    i2 = i4 + 2;
                    if (i2 > bArr.length) {
                        break;
                    }
                    if (bArr[i4] != -1 || bArr[i4 + 1] != -39) {
                        i4++;
                    }
                    if (i2 != -1) {
                        return i2;
                    }
                    return bArr.length;
                }
            }
            i3 += i5 + 2;
        }
        i2 = -1;
        if (i2 != -1) {
            return i2;
        }
        return bArr.length;
    }
}
