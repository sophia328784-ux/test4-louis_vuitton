package androidx.camera.camera2.interop;

import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraControl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Camera2CameraControlImpl f1850c;
    public final Executor d;
    public CallbackToFutureAdapter.Completer g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1848a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1849b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1851e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Camera2ImplConfig.Builder f1852f = new Camera2ImplConfig.Builder();

    public Camera2CameraControl(Camera2CameraControlImpl camera2CameraControlImpl, Executor executor) {
        this.f1850c = camera2CameraControlImpl;
        this.d = executor;
    }
}
