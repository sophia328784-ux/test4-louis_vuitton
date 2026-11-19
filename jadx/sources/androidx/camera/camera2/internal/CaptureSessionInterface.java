package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import androidx.camera.core.impl.SessionConfig;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface CaptureSessionInterface {
    ListenableFuture a(SessionConfig sessionConfig, CameraDevice cameraDevice, SynchronizedCaptureSession.Opener opener);

    void b(List list);

    boolean c();

    void close();

    void d();

    void e(HashMap map);

    List f();

    SessionConfig g();

    void h(SessionConfig sessionConfig);

    ListenableFuture release();
}
