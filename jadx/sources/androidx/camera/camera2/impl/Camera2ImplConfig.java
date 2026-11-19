package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ImplConfig extends CaptureRequestOptions {
    public static final Config.Option N = Config.Option.a(Integer.TYPE, "camera2.captureRequest.templateType");
    public static final Config.Option O = Config.Option.a(Long.TYPE, "camera2.cameraCaptureSession.streamUseCase");
    public static final Config.Option P = Config.Option.a(CameraDevice.StateCallback.class, "camera2.cameraDevice.stateCallback");
    public static final Config.Option Q = Config.Option.a(CameraCaptureSession.StateCallback.class, "camera2.cameraCaptureSession.stateCallback");
    public static final Config.Option R = Config.Option.a(CameraCaptureSession.CaptureCallback.class, "camera2.cameraCaptureSession.captureCallback");
    public static final Config.Option S;

    public static final class Builder implements ExtendableBuilder<Camera2ImplConfig> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f1383a = MutableOptionsBundle.d0();

        @Override // androidx.camera.core.ExtendableBuilder
        public final MutableConfig a() {
            throw null;
        }

        public final Camera2ImplConfig b() {
            return new Camera2ImplConfig(OptionsBundle.c0(this.f1383a));
        }

        public final void c(CaptureRequest.Key key, Object obj) {
            this.f1383a.o(Camera2ImplConfig.c0(key), obj);
        }

        public final void e(CaptureRequest.Key key, Object obj, Config.OptionPriority optionPriority) {
            this.f1383a.f0(Camera2ImplConfig.c0(key), optionPriority, obj);
        }
    }

    static {
        Config.Option.a(Object.class, "camera2.captureRequest.tag");
        S = Config.Option.a(String.class, "camera2.cameraCaptureSession.physicalCameraId");
    }

    public Camera2ImplConfig(Config config) {
        super(config);
    }

    public static Config.Option c0(CaptureRequest.Key key) {
        return Config.Option.b("camera2.captureRequest.option." + key.getName(), key);
    }
}
