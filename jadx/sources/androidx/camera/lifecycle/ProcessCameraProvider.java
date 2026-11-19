package androidx.camera.lifecycle;

import android.os.Trace;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraFactory;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/lifecycle/ProcessCameraProvider;", "Landroidx/camera/core/CameraProvider;", "Companion", "camera-lifecycle_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProcessCameraProvider implements CameraProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f2704b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ProcessCameraProvider f2705c = new ProcessCameraProvider(new LifecycleCameraProviderImpl());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LifecycleCameraProviderImpl f2706a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;", "", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "sAppInstance", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "camera-lifecycle_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ProcessCameraProvider(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        this.f2706a = lifecycleCameraProviderImpl;
    }

    public final Camera a(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCaseGroup useCaseGroup) {
        int iC;
        lifecycleOwner.getClass();
        cameraSelector.getClass();
        useCaseGroup.getClass();
        LifecycleCameraProviderImpl lifecycleCameraProviderImpl = this.f2706a;
        Trace.beginSection(androidx.tracing.Trace.b("CX:bindToLifecycle-UseCaseGroup"));
        try {
            CameraX cameraX = lifecycleCameraProviderImpl.f2691e;
            if (cameraX == null) {
                iC = 0;
            } else {
                CameraFactory cameraFactory = cameraX.g;
                if (cameraFactory == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                iC = cameraFactory.f().c();
            }
            if (iC == 2) {
                throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first.");
            }
            CameraX cameraX2 = lifecycleCameraProviderImpl.f2691e;
            if (cameraX2 != null) {
                CameraFactory cameraFactory2 = cameraX2.g;
                if (cameraFactory2 == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                Camera2CameraCoordinator camera2CameraCoordinatorF = cameraFactory2.f();
                synchronized (camera2CameraCoordinatorF.f1794a) {
                    try {
                        int i2 = camera2CameraCoordinatorF.g;
                        if (1 != i2) {
                            camera2CameraCoordinatorF.g = 1;
                            ArrayList arrayList = new ArrayList(camera2CameraCoordinatorF.f1796c);
                            if (i2 == 2) {
                                camera2CameraCoordinatorF.f1798f.clear();
                            }
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((CameraCoordinator.ConcurrentCameraModeListener) it.next()).a(i2, 1);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            LifecycleCamera lifecycleCameraB = LifecycleCameraProviderImpl.b(lifecycleCameraProviderImpl, lifecycleOwner, cameraSelector, new LegacySessionConfig(useCaseGroup));
            Trace.endSection();
            return lifecycleCameraB;
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }
}
