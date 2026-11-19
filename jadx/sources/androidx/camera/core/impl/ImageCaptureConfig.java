package androidx.camera.core.impl;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.resolutionselector.ResolutionSelector;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCaptureConfig implements UseCaseConfig<ImageCapture>, ImageOutputConfig, IoConfig {
    public static final Config.Option N;
    public static final Config.Option O;
    public static final Config.Option P;
    public static final Config.Option Q;
    public static final Config.Option R;
    public static final Config.Option S;
    public static final Config.Option T;
    public static final Config.Option U;
    public static final Config.Option V;
    public static final Config.Option W;
    public static final Config.Option X;
    public static final Config.Option Y;
    public final OptionsBundle M;

    static {
        Class cls = Integer.TYPE;
        N = new AutoValue_Config_Option(cls, null, "camerax.core.imageCapture.captureMode");
        O = new AutoValue_Config_Option(cls, null, "camerax.core.imageCapture.flashMode");
        P = new AutoValue_Config_Option(CaptureBundle.class, null, "camerax.core.imageCapture.captureBundle");
        Q = new AutoValue_Config_Option(Integer.class, null, "camerax.core.imageCapture.bufferFormat");
        R = new AutoValue_Config_Option(Integer.class, null, "camerax.core.imageCapture.outputFormat");
        new AutoValue_Config_Option(Integer.class, null, "camerax.core.imageCapture.maxCaptureStages");
        S = new AutoValue_Config_Option(ImageReaderProxyProvider.class, null, "camerax.core.imageCapture.imageReaderProxyProvider");
        T = new AutoValue_Config_Option(Boolean.TYPE, null, "camerax.core.imageCapture.useSoftwareJpegEncoder");
        U = new AutoValue_Config_Option(cls, null, "camerax.core.imageCapture.flashType");
        V = new AutoValue_Config_Option(cls, null, "camerax.core.imageCapture.jpegCompressionQuality");
        W = new AutoValue_Config_Option(ImageCapture.ScreenFlash.class, null, "camerax.core.imageCapture.screenFlash");
        X = new AutoValue_Config_Option(ResolutionSelector.class, null, "camerax.core.useCase.postviewResolutionSelector");
        Y = new AutoValue_Config_Option(Boolean.class, null, "camerax.core.useCase.isPostviewEnabled");
    }

    public ImageCaptureConfig(OptionsBundle optionsBundle) {
        this.M = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final int m() {
        return ((Integer) a(ImageInputConfig.f2303h)).intValue();
    }
}
