package androidx.camera.core.impl;

import androidx.camera.core.CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraControlInternal extends CameraControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraControlInternal f2230a = new AnonymousClass2();

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraControlInternal$2, reason: invalid class name */
    public class AnonymousClass2 implements CameraControlInternal {
        @Override // androidx.camera.core.CameraControl
        public final ListenableFuture b(float f2) {
            return Futures.g(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void c(int i2) {
        }

        @Override // androidx.camera.core.CameraControl
        public final ListenableFuture d(boolean z) {
            return Futures.g(null);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final Config e() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void g(Config config) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void h() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void i(SessionConfig.Builder builder) {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final ListenableFuture j(int i2, int i3, List list) {
            return Futures.g(Collections.EMPTY_LIST);
        }

        @Override // androidx.camera.core.impl.CameraControlInternal
        public final void l() {
        }
    }

    public interface ControlUpdateCallback {
    }

    default void a() {
    }

    void c(int i2);

    Config e();

    default void f() {
    }

    void g(Config config);

    void h();

    void i(SessionConfig.Builder builder);

    ListenableFuture j(int i2, int i3, List list);

    default void k(ImageCapture.ScreenFlash screenFlash) {
    }

    void l();

    default ListenableFuture m(int i2) {
        return Futures.g(new CameraCapturePipeline() { // from class: androidx.camera.core.impl.CameraControlInternal.1
            @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
            public final ListenableFuture a() {
                return Futures.g(null);
            }

            @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
            public final ListenableFuture b() {
                return Futures.g(null);
            }
        });
    }

    public static final class CameraControlException extends Exception {
        public CameraControlException(CameraCaptureFailure cameraCaptureFailure) {
        }

        public CameraControlException(CameraCaptureFailure cameraCaptureFailure, Throwable th) {
            super(th);
        }
    }
}
