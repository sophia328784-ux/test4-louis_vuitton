package androidx.camera.video.impl;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class VideoCaptureConfig<T extends VideoOutput> implements UseCaseConfig<VideoCapture<T>>, ImageOutputConfig, ThreadConfig {
    public static final Config.Option N = Config.Option.a(VideoOutput.class, "camerax.video.VideoCapture.videoOutput");
    public static final Config.Option O = Config.Option.a(VideoEncoderInfo.Finder.class, "camerax.video.VideoCapture.videoEncoderInfoFinder");
    public static final Config.Option P = Config.Option.a(Boolean.class, "camerax.video.VideoCapture.forceEnableSurfaceProcessing");
    public final OptionsBundle M;

    public VideoCaptureConfig(OptionsBundle optionsBundle) {
        Preconditions.a(optionsBundle.M.containsKey(N));
        this.M = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public final Config l() {
        return this.M;
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final int m() {
        return 34;
    }
}
