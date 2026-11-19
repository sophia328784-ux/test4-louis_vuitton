package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.CaptureSessionOnClosedNotCalledQuirk;
import androidx.camera.core.impl.Quirks;

/* JADX INFO: loaded from: classes.dex */
public class ForceCloseCaptureSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CaptureSessionOnClosedNotCalledQuirk f1766a;

    @FunctionalInterface
    public interface OnConfigured {
    }

    public ForceCloseCaptureSession(Quirks quirks) {
        this.f1766a = (CaptureSessionOnClosedNotCalledQuirk) quirks.b(CaptureSessionOnClosedNotCalledQuirk.class);
    }
}
