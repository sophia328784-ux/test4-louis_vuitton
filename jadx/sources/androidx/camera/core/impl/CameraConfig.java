package androidx.camera.core.impl;

import defpackage.ti;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface CameraConfig extends ReadableConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Config.Option f2224a = new AutoValue_Config_Option(UseCaseConfigFactory.class, null, "camerax.core.camera.useCaseConfigFactory");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Config.Option f2225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Config.Option f2226c;
    public static final Config.Option d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Config.Option f2227e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Config.Option f2228f;
    public static final ti g;

    public interface Builder<B> {
    }

    public interface PostviewFormatSelector {
        int a(ArrayList arrayList);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RequiredRule {
    }

    static {
        new AutoValue_Config_Option(Identifier.class, null, "camerax.core.camera.compatibilityId");
        f2225b = new AutoValue_Config_Option(Integer.class, null, "camerax.core.camera.useCaseCombinationRequiredRule");
        f2226c = new AutoValue_Config_Option(SessionProcessor.class, null, "camerax.core.camera.SessionProcessor");
        new AutoValue_Config_Option(Boolean.class, null, "camerax.core.camera.isZslDisabled");
        d = new AutoValue_Config_Option(Boolean.class, null, "camerax.core.camera.isPostviewSupported");
        f2227e = new AutoValue_Config_Option(PostviewFormatSelector.class, null, "camerax.core.camera.PostviewFormatSelector");
        f2228f = new AutoValue_Config_Option(Boolean.class, null, "camerax.core.camera.isCaptureProcessProgressSupported");
        g = new ti();
    }

    default PostviewFormatSelector D() {
        return (PostviewFormatSelector) f(f2227e, g);
    }

    default void O() {
        ((Boolean) f(d, Boolean.FALSE)).getClass();
    }

    Identifier Y();

    default void Z() {
        ((Boolean) f(f2228f, Boolean.FALSE)).getClass();
    }

    default UseCaseConfigFactory i() {
        return (UseCaseConfigFactory) f(f2224a, UseCaseConfigFactory.f2373a);
    }

    default int t() {
        return ((Integer) f(f2225b, 0)).intValue();
    }

    default SessionProcessor x() {
        return (SessionProcessor) f(f2226c, null);
    }
}
