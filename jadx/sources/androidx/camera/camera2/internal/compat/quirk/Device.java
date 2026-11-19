package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/camera2/internal/compat/quirk/Device;", "", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class Device {
    /* JADX WARN: Code duplicated, block: B:12:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    public static final boolean a() {
        String lowerCase;
        if (Build.VERSION.SDK_INT >= 31 && "Spreadtrum".equalsIgnoreCase(Build.SOC_MANUFACTURER)) {
            return true;
        }
        String str = Build.HARDWARE;
        str.getClass();
        Locale locale = Locale.ROOT;
        String lowerCase2 = str.toLowerCase(locale);
        lowerCase2.getClass();
        if (StringsKt.P(lowerCase2, "ums", false)) {
            return true;
        }
        String str2 = Build.MANUFACTURER;
        str2.getClass();
        if (str2.equalsIgnoreCase("Itel")) {
            lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            if (StringsKt.P(lowerCase, "sp", false)) {
                return true;
            }
        } else {
            String str3 = Build.BRAND;
            str3.getClass();
            if (str3.equalsIgnoreCase("Itel")) {
                lowerCase = str.toLowerCase(locale);
                lowerCase.getClass();
                if (StringsKt.P(lowerCase, "sp", false)) {
                    return true;
                }
            }
        }
        return false;
    }
}
