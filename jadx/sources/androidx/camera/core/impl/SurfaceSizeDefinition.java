package androidx.camera.core.impl;

import android.util.Size;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class SurfaceSizeDefinition {
    public static SurfaceSizeDefinition a(Size size, Map map, Size size2, Map map2, Size size3, Map map3, Map map4, Map map5, Map map6) {
        return new AutoValue_SurfaceSizeDefinition(size, map, size2, map2, size3, map3, map4, map5, map6);
    }

    public abstract Size b();

    public abstract Map c();

    public abstract Map d();

    public final Size e(int i2) {
        return (Size) ((AutoValue_SurfaceSizeDefinition) this).f2219f.get(Integer.valueOf(i2));
    }

    public abstract Map f();

    public abstract Size g();

    public abstract Map h();

    public abstract Map i();

    public abstract Map j();
}
