package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.internal.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.core.impl.Quirks;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TemplateParamsOverride {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1787b;

    public TemplateParamsOverride(Quirks quirks) {
        boolean z;
        Iterator it = quirks.c(CaptureIntentPreviewQuirk.class).iterator();
        while (it.hasNext()) {
            if (((CaptureIntentPreviewQuirk) it.next()).b()) {
                z = true;
                this.f1786a = z;
                this.f1787b = quirks.a(ImageCaptureFailedForVideoSnapshotQuirk.class);
            }
        }
        z = false;
        this.f1786a = z;
        this.f1787b = quirks.a(ImageCaptureFailedForVideoSnapshotQuirk.class);
    }
}
