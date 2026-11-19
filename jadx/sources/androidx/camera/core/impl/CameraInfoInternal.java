package androidx.camera.core.impl;

import android.graphics.Rect;
import android.util.Range;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface CameraInfoInternal extends CameraInfo {
    Set a();

    String b();

    void e(Executor executor, CameraCaptureCallback cameraCaptureCallback);

    Rect f();

    default CameraInfoInternal getImplementation() {
        return this;
    }

    Object h();

    Quirks j();

    List k(int i2);

    default Set l() {
        return Collections.EMPTY_SET;
    }

    void m(CameraCaptureCallback cameraCaptureCallback);

    boolean n();

    default boolean o(ResolvedFeatureGroup resolvedFeatureGroup, LegacySessionConfig legacySessionConfig) {
        for (GroupableFeature groupableFeature : resolvedFeatureGroup.f2024a) {
            if (!groupableFeature.b(this, legacySessionConfig)) {
                groupableFeature.toString();
                Logger.c(3, "CameraInfoInternal");
                return false;
            }
        }
        try {
            UseCaseAdditionSimulator.a(this, legacySessionConfig, resolvedFeatureGroup);
            return true;
        } catch (CameraUseCaseAdapter.CameraException | IllegalArgumentException unused) {
            Logger.c(3, "CameraInfoInternal");
            return false;
        }
    }

    List p(Range range);

    boolean q();

    Timebase r();

    EncoderProfilesProvider u();

    List v();

    default void x(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider) {
        cameraUseCaseAdapterProvider.getClass();
        UseCaseAdditionSimulator.f2365a = cameraUseCaseAdapterProvider;
    }

    Set y();
}
