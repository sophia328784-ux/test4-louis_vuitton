package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.AutoFlashUnderExposedQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class OverrideAeModeForStillCapture {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1774b = false;

    public OverrideAeModeForStillCapture(Quirks quirks) {
        this.f1773a = quirks.b(AutoFlashUnderExposedQuirk.class) != null;
    }
}
