package androidx.camera.core.internal.compat.workaround;

import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.SurfaceOrderQuirk;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceSorter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2511a;

    public SurfaceSorter() {
        this.f2511a = DeviceQuirks.f2499a.b(SurfaceOrderQuirk.class) != null;
    }
}
