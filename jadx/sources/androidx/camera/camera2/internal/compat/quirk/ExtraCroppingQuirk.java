package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.HashMap;
import java.util.Locale;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class ExtraCroppingQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f1732a;

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.compat.quirk.ExtraCroppingQuirk$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1733a;

        static {
            int[] iArr = new int[SurfaceConfig.ConfigType.values().length];
            f1733a = iArr;
            try {
                iArr[SurfaceConfig.ConfigType.PRIV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1733a[SurfaceConfig.ConfigType.YUV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1733a[SurfaceConfig.ConfigType.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        HashMap map = new HashMap();
        f1732a = map;
        map.put("SM-T580", null);
        map.put("SM-J710MN", new Range(21, 26));
        map.put("SM-A320FL", null);
        map.put("SM-G570M", null);
        map.put("SM-G610F", null);
        map.put("SM-G610M", new Range(21, 26));
    }

    public static Size f(SurfaceConfig.ConfigType configType) {
        if (!g()) {
            return null;
        }
        int i2 = AnonymousClass1.f1733a[configType.ordinal()];
        if (i2 == 1) {
            return new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW);
        }
        if (i2 == 2) {
            return new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW);
        }
        if (i2 != 3) {
            return null;
        }
        return new Size(3264, 1836);
    }

    public static boolean g() {
        if (!"samsung".equalsIgnoreCase(Build.BRAND)) {
            return false;
        }
        String str = Build.MODEL;
        Locale locale = Locale.US;
        String upperCase = str.toUpperCase(locale);
        HashMap map = f1732a;
        if (!map.containsKey(upperCase)) {
            return false;
        }
        Range range = (Range) map.get(str.toUpperCase(locale));
        if (range == null) {
            return true;
        }
        return range.contains(Integer.valueOf(Build.VERSION.SDK_INT));
    }
}
