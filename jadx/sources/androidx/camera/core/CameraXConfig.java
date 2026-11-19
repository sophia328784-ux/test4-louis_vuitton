package androidx.camera.core;

import android.os.Handler;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import defpackage.b21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CameraXConfig implements TargetConfig<CameraX> {
    public static final Config.Option N = Config.Option.a(CameraFactory.Provider.class, "camerax.core.appConfig.cameraFactoryProvider");
    public static final Config.Option O = Config.Option.a(CameraDeviceSurfaceManager.Provider.class, "camerax.core.appConfig.deviceSurfaceManagerProvider");
    public static final Config.Option P = Config.Option.a(UseCaseConfigFactory.Provider.class, "camerax.core.appConfig.useCaseConfigFactoryProvider");
    public static final Config.Option Q = Config.Option.a(Executor.class, "camerax.core.appConfig.cameraExecutor");
    public static final Config.Option R = Config.Option.a(Handler.class, "camerax.core.appConfig.schedulerHandler");
    public static final Config.Option S;
    public static final Config.Option T;
    public static final Config.Option U;
    public static final Config.Option V;
    public static final Config.Option W;
    public static final Config.Option X;
    public static final Config.Option Y;
    public final OptionsBundle M;

    public static final class Builder implements TargetConfig.Builder<CameraX, Builder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f1907a;

        public Builder() {
            MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
            this.f1907a = mutableOptionsBundleD0;
            Config.Option option = TargetConfig.L;
            Class cls = (Class) mutableOptionsBundleD0.f(option, null);
            if (cls != null && !cls.equals(CameraX.class)) {
                b21.s("Invalid target class configuration for ", this, ": ", cls);
                throw null;
            }
            mutableOptionsBundleD0.o(option, CameraX.class);
            Config.Option option2 = TargetConfig.K;
            if (mutableOptionsBundleD0.f(option2, null) == null) {
                mutableOptionsBundleD0.o(option2, CameraX.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImplType {
    }

    public interface Provider {
        CameraXConfig getCameraXConfig();
    }

    static {
        Class cls = Integer.TYPE;
        S = Config.Option.a(cls, "camerax.core.appConfig.minimumLoggingLevel");
        T = Config.Option.a(CameraSelector.class, "camerax.core.appConfig.availableCamerasLimiter");
        U = Config.Option.a(Long.TYPE, "camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming");
        V = Config.Option.a(RetryPolicy.class, "camerax.core.appConfig.cameraProviderInitRetryPolicy");
        W = Config.Option.a(QuirkSettings.class, "camerax.core.appConfig.quirksSettings");
        X = Config.Option.a(cls, "camerax.core.appConfig.configImplType");
        Y = Config.Option.a(Boolean.TYPE, "camerax.core.appConfig.repeatingStreamForced");
    }

    public CameraXConfig(OptionsBundle optionsBundle) {
        this.M = optionsBundle;
    }

    public final CameraSelector c0() {
        return (CameraSelector) this.M.f(T, null);
    }

    public final CameraFactory.Provider d0() {
        return (CameraFactory.Provider) this.M.f(N, null);
    }

    public final long e0() {
        return ((Long) this.M.f(U, -1L)).longValue();
    }

    public final CameraDeviceSurfaceManager.Provider f0() {
        return (CameraDeviceSurfaceManager.Provider) this.M.f(O, null);
    }

    public final UseCaseConfigFactory.Provider g0() {
        return (UseCaseConfigFactory.Provider) this.M.f(P, null);
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }
}
