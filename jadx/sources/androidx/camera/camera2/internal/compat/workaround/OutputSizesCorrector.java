package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ExtraSupportedOutputSizeQuirk;

/* JADX INFO: loaded from: classes.dex */
public class OutputSizesCorrector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExtraSupportedOutputSizeQuirk f1771a = (ExtraSupportedOutputSizeQuirk) DeviceQuirks.f1731a.b(ExtraSupportedOutputSizeQuirk.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExcludedSupportedSizesContainer f1772b;

    public OutputSizesCorrector(String str) {
        this.f1772b = new ExcludedSupportedSizesContainer(str);
    }
}
