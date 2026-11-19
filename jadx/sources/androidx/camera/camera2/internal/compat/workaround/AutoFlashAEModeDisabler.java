package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ImageCaptureFailWithAutoFlashQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class AutoFlashAEModeDisabler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1762b;

    public AutoFlashAEModeDisabler(Quirks quirks) {
        this.f1761a = quirks.a(ImageCaptureFailWithAutoFlashQuirk.class);
        this.f1762b = DeviceQuirks.f1731a.b(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class) != null;
    }
}
