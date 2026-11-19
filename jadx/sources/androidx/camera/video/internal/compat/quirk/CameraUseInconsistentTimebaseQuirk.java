package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class CameraUseInconsistentTimebaseQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f2944a = new HashSet(Arrays.asList("samsungexynos7570", "samsungexynos7870", "qcom"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashSet f2945b = new HashSet(Arrays.asList("sm4350", "sm6375", "sm7325"));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashSet f2946c = new HashSet(Arrays.asList("m2007j20cg", "m2007j20ct"));

    public static boolean f() {
        if (Build.VERSION.SDK_INT >= 31) {
            if (f2945b.contains(Build.SOC_MODEL.toLowerCase())) {
                return true;
            }
        }
        if ("SAMSUNG".equalsIgnoreCase(Build.BRAND)) {
            if (f2944a.contains(Build.HARDWARE.toLowerCase())) {
                return true;
            }
        }
        return f2946c.contains(Build.MODEL.toLowerCase());
    }
}
