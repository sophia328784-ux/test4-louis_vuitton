package androidx.camera.core;

import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.StreamSpecsCalculator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;", "Landroidx/camera/core/CameraUseCaseAdapterProvider;", "Landroidx/camera/core/impl/CameraRepository;", "cameraRepository", "Landroidx/camera/core/concurrent/CameraCoordinator;", "cameraCoordinator", "Landroidx/camera/core/impl/UseCaseConfigFactory;", "useCaseConfigFactory", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "streamSpecsCalculator", "<init>", "(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/internal/StreamSpecsCalculator;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CameraUseCaseAdapterProviderImpl implements CameraUseCaseAdapterProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraRepository f1895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCoordinator f1896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UseCaseConfigFactory f1897c;
    public final StreamSpecsCalculator d;

    public CameraUseCaseAdapterProviderImpl(CameraRepository cameraRepository, CameraCoordinator cameraCoordinator, UseCaseConfigFactory useCaseConfigFactory, StreamSpecsCalculator streamSpecsCalculator) {
        cameraRepository.getClass();
        cameraCoordinator.getClass();
        useCaseConfigFactory.getClass();
        streamSpecsCalculator.getClass();
        this.f1895a = cameraRepository;
        this.f1896b = cameraCoordinator;
        this.f1897c = useCaseConfigFactory;
        this.d = streamSpecsCalculator;
    }

    @Override // androidx.camera.core.CameraUseCaseAdapterProvider
    public final CameraUseCaseAdapter a(String str) {
        str.getClass();
        CameraInternal cameraInternalF = this.f1895a.f(str);
        AdapterCameraInfo adapterCameraInfo = new AdapterCameraInfo(cameraInternalF.k(), CameraConfigs.f2229a);
        CompositionSettings compositionSettings = CompositionSettings.f1909c;
        return new CameraUseCaseAdapter(cameraInternalF, null, adapterCameraInfo, null, compositionSettings, compositionSettings, this.f1896b, this.d, this.f1897c);
    }
}
