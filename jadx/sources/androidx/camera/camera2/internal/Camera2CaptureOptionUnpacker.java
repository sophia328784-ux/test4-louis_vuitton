package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;

/* JADX INFO: loaded from: classes.dex */
class Camera2CaptureOptionUnpacker implements CaptureConfig.OptionUnpacker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Camera2CaptureOptionUnpacker f1480a = new Camera2CaptureOptionUnpacker();

    @Override // androidx.camera.core.impl.CaptureConfig.OptionUnpacker
    public void a(UseCaseConfig useCaseConfig, CaptureConfig.Builder builder) {
        CaptureConfig captureConfigW = useCaseConfig.W();
        OptionsBundle optionsBundle = OptionsBundle.O;
        Config.Option option = CaptureConfig.f2265i;
        int i2 = new CaptureConfig.Builder().e().f2270c;
        if (captureConfigW != null) {
            i2 = captureConfigW.f2270c;
            builder.a(captureConfigW.f2271e);
            optionsBundle = captureConfigW.f2269b;
        }
        builder.f2275b = MutableOptionsBundle.e0(optionsBundle);
        Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(useCaseConfig);
        Config.Option option2 = Camera2ImplConfig.N;
        Integer numValueOf = Integer.valueOf(i2);
        Config config = camera2ImplConfig.M;
        builder.f2276c = ((Integer) config.f(option2, numValueOf)).intValue();
        builder.b(new CaptureCallbackContainer((CameraCaptureSession.CaptureCallback) config.f(Camera2ImplConfig.R, new Camera2CaptureCallbacks.NoOpSessionCaptureCallback())));
        builder.c(CaptureRequestOptions.Builder.c(config).b());
    }
}
