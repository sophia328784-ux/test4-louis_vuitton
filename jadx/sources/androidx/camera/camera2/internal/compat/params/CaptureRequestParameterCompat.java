package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.Config;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/camera2/internal/compat/params/CaptureRequestParameterCompat;", "", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class CaptureRequestParameterCompat {
    public static final void a(Camera2ImplConfig.Builder builder, Config.OptionPriority optionPriority) {
        optionPriority.getClass();
        if (Build.VERSION.SDK_INT >= 34) {
            builder.e(CaptureRequest.CONTROL_SETTINGS_OVERRIDE, 1, optionPriority);
        }
    }
}
