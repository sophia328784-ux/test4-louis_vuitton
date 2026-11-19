package androidx.camera.core.internal.compat.workaround;

import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.ImageCaptureFailedForSpecificCombinationQuirk;
import androidx.camera.core.internal.compat.quirk.PreviewGreenTintQuirk;

/* JADX INFO: loaded from: classes.dex */
public class StreamSharingForceEnabler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageCaptureFailedForSpecificCombinationQuirk f2509a = (ImageCaptureFailedForSpecificCombinationQuirk) DeviceQuirks.f2499a.b(ImageCaptureFailedForSpecificCombinationQuirk.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PreviewGreenTintQuirk f2510b = (PreviewGreenTintQuirk) DeviceQuirks.f2499a.b(PreviewGreenTintQuirk.class);
}
