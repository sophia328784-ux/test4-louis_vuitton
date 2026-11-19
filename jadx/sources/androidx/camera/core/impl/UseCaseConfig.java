package androidx.camera.core.impl;

import android.util.Range;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.UseCase;
import androidx.camera.core.imagecapture.ImageCaptureControl;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.internal.TargetConfig;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface UseCaseConfig<T extends UseCase> extends TargetConfig<T>, ImageInputConfig {
    public static final Config.Option A;
    public static final Config.Option B;
    public static final Config.Option C;
    public static final Config.Option D;
    public static final Config.Option E;
    public static final Config.Option F;
    public static final Config.Option G;
    public static final Config.Option H;
    public static final Config.Option I;
    public static final Config.Option u = new AutoValue_Config_Option(SessionConfig.class, null, "camerax.core.useCase.defaultSessionConfig");
    public static final Config.Option v = new AutoValue_Config_Option(CaptureConfig.class, null, "camerax.core.useCase.defaultCaptureConfig");
    public static final Config.Option w = new AutoValue_Config_Option(SessionConfig.OptionUnpacker.class, null, "camerax.core.useCase.sessionConfigUnpacker");
    public static final Config.Option x = new AutoValue_Config_Option(CaptureConfig.OptionUnpacker.class, null, "camerax.core.useCase.captureConfigUnpacker");
    public static final Config.Option y;
    public static final Config.Option z;

    public interface Builder<T extends UseCase, C extends UseCaseConfig<T>, B> extends TargetConfig.Builder<T, B>, ExtendableBuilder<T> {
        UseCaseConfig d();
    }

    static {
        Class cls = Integer.TYPE;
        y = new AutoValue_Config_Option(cls, null, "camerax.core.useCase.surfaceOccupancyPriority");
        z = new AutoValue_Config_Option(cls, null, "camerax.core.useCase.sessionType");
        A = new AutoValue_Config_Option(Range.class, null, "camerax.core.useCase.targetFrameRate");
        B = new AutoValue_Config_Option(Boolean.class, null, "camerax.core.useCase.isStrictFrameRateRequired");
        Class cls2 = Boolean.TYPE;
        C = new AutoValue_Config_Option(cls2, null, "camerax.core.useCase.zslDisabled");
        D = new AutoValue_Config_Option(cls2, null, "camerax.core.useCase.highResolutionDisabled");
        E = new AutoValue_Config_Option(UseCaseConfigFactory.CaptureType.class, null, "camerax.core.useCase.captureType");
        F = new AutoValue_Config_Option(cls, null, "camerax.core.useCase.previewStabilizationMode");
        G = new AutoValue_Config_Option(cls, null, "camerax.core.useCase.videoStabilizationMode");
        H = new AutoValue_Config_Option(TakePictureManager.Provider.class, null, "camerax.core.useCase.takePictureManagerProvider");
        I = new AutoValue_Config_Option(StreamUseCase.class, null, "camerax.core.useCase.streamUseCase");
    }

    default int B() {
        return ((Integer) f(F, 0)).intValue();
    }

    default boolean C() {
        Boolean bool = (Boolean) f(B, Boolean.FALSE);
        Objects.requireNonNull(bool);
        return bool.booleanValue();
    }

    default boolean F() {
        return ((Boolean) f(C, Boolean.FALSE)).booleanValue();
    }

    default SessionConfig L() {
        return (SessionConfig) f(u, null);
    }

    default int M() {
        return ((Integer) f(y, 0)).intValue();
    }

    default SessionConfig.OptionUnpacker N() {
        return (SessionConfig.OptionUnpacker) f(w, null);
    }

    default SessionConfig Q() {
        return (SessionConfig) a(u);
    }

    default StreamUseCase R() {
        StreamUseCase streamUseCase = (StreamUseCase) f(I, StreamUseCase.DEFAULT);
        Objects.requireNonNull(streamUseCase);
        return streamUseCase;
    }

    default UseCaseConfigFactory.CaptureType S() {
        return (UseCaseConfigFactory.CaptureType) a(E);
    }

    default int T() {
        return ((Integer) f(z, 0)).intValue();
    }

    default CaptureConfig W() {
        return (CaptureConfig) f(v, null);
    }

    default boolean a0() {
        return b(A);
    }

    default TakePictureManager.Provider n() {
        TakePictureManager.Provider provider = (TakePictureManager.Provider) f(H, new TakePictureManager.Provider() { // from class: androidx.camera.core.impl.UseCaseConfig.1
            @Override // androidx.camera.core.imagecapture.TakePictureManager.Provider
            public final TakePictureManagerImpl a(ImageCaptureControl imageCaptureControl) {
                return new TakePictureManagerImpl(imageCaptureControl);
            }
        });
        Objects.requireNonNull(provider);
        return provider;
    }

    default boolean p() {
        return ((Boolean) f(D, Boolean.FALSE)).booleanValue();
    }

    default int w() {
        return ((Integer) f(G, 0)).intValue();
    }

    default Range y(Range range) {
        return (Range) f(A, range);
    }
}
