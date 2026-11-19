package androidx.camera.camera2.internal.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.TorchIsClosedAfterImageCapturingQuirk;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TorchStateReset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1788a;

    public TorchStateReset() {
        this.f1788a = DeviceQuirks.f1731a.b(TorchIsClosedAfterImageCapturingQuirk.class) != null;
    }

    public static CaptureConfig a(CaptureConfig captureConfig) {
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        builder.f2276c = captureConfig.f2270c;
        Iterator it = Collections.unmodifiableList(captureConfig.f2268a).iterator();
        while (it.hasNext()) {
            builder.d((DeferrableSurface) it.next());
        }
        builder.c(captureConfig.f2269b);
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        builder2.c(CaptureRequest.FLASH_MODE, 0);
        builder.c(builder2.b());
        return builder.e();
    }

    public final boolean b(ArrayList arrayList, boolean z) {
        if (!this.f1788a || !z) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) ((CaptureRequest) it.next()).get(CaptureRequest.FLASH_MODE);
            if (num != null && num.intValue() == 2) {
                return true;
            }
        }
        return false;
    }
}
