package androidx.camera.core.impl;

import android.util.Size;
import androidx.camera.core.AspectRatio;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ImageOutputConfig extends ReadableConfig {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Config.Option f2306k = new AutoValue_Config_Option(AspectRatio.class, null, "camerax.core.imageOutput.targetAspectRatio");
    public static final Config.Option l;
    public static final Config.Option m;
    public static final Config.Option n;
    public static final Config.Option o;
    public static final Config.Option p;
    public static final Config.Option q;
    public static final Config.Option r;
    public static final Config.Option s;
    public static final Config.Option t;

    public interface Builder<B> {
        Object b(int i2);

        Object c(Size size);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OptionalRotationValue {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RotationDegreesValue {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RotationValue {
    }

    static {
        Class cls = Integer.TYPE;
        l = new AutoValue_Config_Option(cls, null, "camerax.core.imageOutput.targetRotation");
        m = new AutoValue_Config_Option(cls, null, "camerax.core.imageOutput.appTargetRotation");
        n = new AutoValue_Config_Option(cls, null, "camerax.core.imageOutput.mirrorMode");
        o = new AutoValue_Config_Option(Size.class, null, "camerax.core.imageOutput.targetResolution");
        p = new AutoValue_Config_Option(Size.class, null, "camerax.core.imageOutput.defaultResolution");
        q = new AutoValue_Config_Option(Size.class, null, "camerax.core.imageOutput.maxResolution");
        r = new AutoValue_Config_Option(List.class, null, "camerax.core.imageOutput.supportedResolutions");
        s = new AutoValue_Config_Option(ResolutionSelector.class, null, "camerax.core.imageOutput.resolutionSelector");
        t = new AutoValue_Config_Option(List.class, null, "camerax.core.imageOutput.customOrderedResolutions");
    }

    static void u(ImageOutputConfig imageOutputConfig) {
        boolean z = imageOutputConfig.z();
        boolean z2 = imageOutputConfig.v() != null;
        if (z && z2) {
            md.n("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
        } else if (imageOutputConfig.k() != null) {
            if (z || z2) {
                md.n("Cannot use setTargetResolution or setTargetAspectRatio with setResolutionSelector on the same config.");
            }
        }
    }

    default int A() {
        return ((Integer) a(f2306k)).intValue();
    }

    default Size E() {
        return (Size) f(q, null);
    }

    default int G(int i2) {
        return ((Integer) f(l, Integer.valueOf(i2))).intValue();
    }

    default int J() {
        return ((Integer) f(n, -1)).intValue();
    }

    default ArrayList P() {
        List list = (List) f(t, null);
        if (list != null) {
            return new ArrayList(list);
        }
        return null;
    }

    default int b0() {
        return ((Integer) f(m, -1)).intValue();
    }

    default List j() {
        return (List) f(r, null);
    }

    default ResolutionSelector k() {
        return (ResolutionSelector) f(s, null);
    }

    default ResolutionSelector q() {
        return (ResolutionSelector) a(s);
    }

    default Size s() {
        return (Size) f(p, null);
    }

    default Size v() {
        return (Size) f(o, null);
    }

    default boolean z() {
        return b(f2306k);
    }
}
