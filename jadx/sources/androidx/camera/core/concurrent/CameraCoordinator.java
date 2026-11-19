package androidx.camera.core.concurrent;

import androidx.camera.core.impl.InternalCameraPresenceListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface CameraCoordinator extends InternalCameraPresenceListener {

    @Retention(RetentionPolicy.SOURCE)
    public @interface CameraOperatingMode {
    }

    public interface ConcurrentCameraModeListener {
        void a(int i2, int i3);
    }

    String b(String str);

    int c();
}
