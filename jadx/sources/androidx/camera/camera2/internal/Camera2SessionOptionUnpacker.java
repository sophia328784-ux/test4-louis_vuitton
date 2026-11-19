package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.PreviewPixelHDRnetQuirk;
import androidx.camera.camera2.internal.compat.workaround.PreviewPixelHDRnet;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class Camera2SessionOptionUnpacker implements SessionConfig.OptionUnpacker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Camera2SessionOptionUnpacker f1532a = new Camera2SessionOptionUnpacker();

    @Override // androidx.camera.core.impl.SessionConfig.OptionUnpacker
    public final void a(Size size, UseCaseConfig useCaseConfig, SessionConfig.Builder builder) {
        SessionConfig sessionConfigL = useCaseConfig.L();
        Config config = OptionsBundle.O;
        int i2 = SessionConfig.a().g.f2270c;
        if (sessionConfigL != null) {
            i2 = sessionConfigL.g.f2270c;
            Iterator it = sessionConfigL.f2327c.iterator();
            while (it.hasNext()) {
                builder.d((CameraDevice.StateCallback) it.next());
            }
            Iterator it2 = sessionConfigL.d.iterator();
            while (it2.hasNext()) {
                builder.h((CameraCaptureSession.StateCallback) it2.next());
            }
            builder.b(sessionConfigL.g.f2271e);
            config = sessionConfigL.g.f2269b;
        }
        builder.r(config);
        if (useCaseConfig instanceof PreviewConfig) {
            Rational rational = PreviewPixelHDRnet.f1775a;
            if (((PreviewPixelHDRnetQuirk) DeviceQuirks.f1731a.b(PreviewPixelHDRnetQuirk.class)) != null && !PreviewPixelHDRnet.f1775a.equals(new Rational(size.getWidth(), size.getHeight()))) {
                Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
                builder2.c(CaptureRequest.TONEMAP_MODE, 2);
                builder.e(builder2.b());
            }
        }
        Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(useCaseConfig);
        builder.w(((Integer) camera2ImplConfig.M.f(Camera2ImplConfig.N, Integer.valueOf(i2))).intValue());
        builder.d((CameraDevice.StateCallback) camera2ImplConfig.M.f(Camera2ImplConfig.P, new CameraDeviceStateCallbacks.NoOpDeviceStateCallback()));
        builder.h((CameraCaptureSession.StateCallback) camera2ImplConfig.M.f(Camera2ImplConfig.Q, new CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback()));
        builder.c(new CaptureCallbackContainer((CameraCaptureSession.CaptureCallback) camera2ImplConfig.M.f(Camera2ImplConfig.R, new Camera2CaptureCallbacks.NoOpSessionCaptureCallback())));
        builder.x(useCaseConfig.w());
        builder.u(useCaseConfig.B());
        MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
        Config.Option option = Camera2ImplConfig.S;
        mutableOptionsBundleD0.o(option, (String) camera2ImplConfig.M.f(option, null));
        Config.Option option2 = Camera2ImplConfig.O;
        Long l = (Long) camera2ImplConfig.M.f(option2, -1L);
        l.getClass();
        mutableOptionsBundleD0.o(option2, l);
        builder.e(mutableOptionsBundleD0);
        builder.e(CaptureRequestOptions.Builder.c(camera2ImplConfig.M).b());
    }
}
