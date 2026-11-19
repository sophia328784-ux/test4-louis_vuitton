package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;

/* JADX INFO: loaded from: classes.dex */
public interface ImageInputConfig extends ReadableConfig {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Config.Option f2303h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Config.Option f2304i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Config.Option f2305j;

    public interface Builder<B> {
    }

    static {
        Class cls = Integer.TYPE;
        f2303h = new AutoValue_Config_Option(cls, null, "camerax.core.imageInput.inputFormat");
        f2304i = new AutoValue_Config_Option(cls, null, "camerax.core.imageInput.secondaryInputFormat");
        f2305j = new AutoValue_Config_Option(DynamicRange.class, null, "camerax.core.imageInput.inputDynamicRange");
    }

    default DynamicRange I() {
        DynamicRange dynamicRange = (DynamicRange) f(f2305j, DynamicRange.f1913c);
        dynamicRange.getClass();
        return dynamicRange;
    }

    default boolean K() {
        return b(f2305j);
    }

    default int V() {
        return ((Integer) f(f2304i, 0)).intValue();
    }

    default int m() {
        return ((Integer) a(f2303h)).intValue();
    }
}
