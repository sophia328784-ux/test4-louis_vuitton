package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.camera2.internal.Camera2CameraFactory;
import androidx.camera.camera2.internal.Camera2PresenceSource;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public interface CameraFactory extends CameraPresenceMonitor {

    public interface Provider {
        Camera2CameraFactory a(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j2, CameraXConfig cameraXConfig, StreamSpecsCalculatorImpl streamSpecsCalculatorImpl);
    }

    CameraManagerCompat a();

    CameraInternal b(String str);

    Camera2PresenceSource c();

    LinkedHashSet d();

    Camera2CameraCoordinator f();

    default void shutdown() {
    }
}
