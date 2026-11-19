package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.DynamicRange;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AttachedSurfaceInfo {
    public static AttachedSurfaceInfo a(SurfaceConfig surfaceConfig, int i2, Size size, DynamicRange dynamicRange, List list, Config config, int i3, Range range, boolean z) {
        return new AutoValue_AttachedSurfaceInfo(surfaceConfig, i2, size, dynamicRange, list, config, i3, range, z);
    }

    public abstract List b();

    public abstract DynamicRange c();

    public abstract int d();

    public abstract Config e();

    public abstract int f();

    public abstract Size g();

    public abstract SurfaceConfig h();

    public abstract Range i();

    public abstract boolean j();

    public final StreamSpec k(Camera2ImplConfig camera2ImplConfig) {
        AutoValue_AttachedSurfaceInfo autoValue_AttachedSurfaceInfo = (AutoValue_AttachedSurfaceInfo) this;
        AutoValue_StreamSpec.Builder builder = (AutoValue_StreamSpec.Builder) StreamSpec.a(autoValue_AttachedSurfaceInfo.f2163c);
        builder.d = Integer.valueOf(autoValue_AttachedSurfaceInfo.g);
        builder.c(autoValue_AttachedSurfaceInfo.f2166h);
        builder.b(autoValue_AttachedSurfaceInfo.d);
        builder.f2214f = camera2ImplConfig;
        return builder.a();
    }
}
