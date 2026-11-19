package androidx.camera.camera2.internal.compat.workaround;

import androidx.camera.camera2.internal.compat.quirk.ConfigureSurfaceToSecondarySessionFailQuirk;
import androidx.camera.camera2.internal.compat.quirk.PreviewOrientationIncorrectQuirk;
import androidx.camera.camera2.internal.compat.quirk.TextureViewIsClosedQuirk;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.Quirks;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ForceCloseDeferrableSurface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1769c;

    public ForceCloseDeferrableSurface(Quirks quirks, Quirks quirks2) {
        this.f1767a = quirks2.a(TextureViewIsClosedQuirk.class);
        this.f1768b = quirks.a(PreviewOrientationIncorrectQuirk.class);
        this.f1769c = quirks.a(ConfigureSurfaceToSecondarySessionFailQuirk.class);
    }

    public final void a(ArrayList arrayList) {
        if ((this.f1767a || this.f1768b || this.f1769c) && arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((DeferrableSurface) it.next()).a();
            }
            Logger.c(3, "ForceCloseDeferrableSurface");
        }
    }
}
