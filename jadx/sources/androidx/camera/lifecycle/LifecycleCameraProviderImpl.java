package androidx.camera.lifecycle;

import android.content.Context;
import android.os.Trace;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraUseCaseAdapterProviderImpl;
import androidx.camera.core.CameraX;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.Identifier;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;", "Landroidx/camera/lifecycle/LifecycleCameraProvider;", "<init>", "()V", "camera-lifecycle_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LifecycleCameraProviderImpl implements LifecycleCameraProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FutureChain f2689b;
    public final LifecycleCameraRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CameraX f2691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f2692f;
    public final HashMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashSet f2693h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2688a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ListenableFuture f2690c = Futures.g(null);

    public LifecycleCameraProviderImpl() {
        LifecycleCameraRepository lifecycleCameraRepository;
        synchronized (LifecycleCameraRepository.f2697f) {
            try {
                if (LifecycleCameraRepository.g == null) {
                    LifecycleCameraRepository.g = new LifecycleCameraRepository();
                }
                lifecycleCameraRepository = LifecycleCameraRepository.g;
            } catch (Throwable th) {
                throw th;
            }
        }
        lifecycleCameraRepository.getClass();
        this.d = lifecycleCameraRepository;
        this.g = new HashMap();
        this.f2693h = new HashSet();
    }

    public static final CameraConfig a(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, CameraSelector cameraSelector, CameraInfoInternal cameraInfoInternal) {
        Iterator it = cameraSelector.f1893a.iterator();
        it.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            Identifier identifier = CameraFilter.f1887a;
            if (!Intrinsics.c(identifier, identifier)) {
                synchronized (ExtendedCameraConfigProviderStore.f2299a) {
                }
                lifecycleCameraProviderImpl.f2692f.getClass();
            }
        }
        return CameraConfigs.f2229a;
    }

    /* JADX WARN: Type inference failed for: r18v1, types: [androidx.camera.core.impl.AdapterCameraInfo, androidx.camera.core.impl.CameraInternal] */
    public static LifecycleCamera b(LifecycleCameraProviderImpl lifecycleCameraProviderImpl, LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, LegacySessionConfig legacySessionConfig) {
        LifecycleCamera lifecycleCameraB;
        Collection collectionUnmodifiableCollection;
        Object obj;
        boolean zContains;
        CompositionSettings compositionSettings = CompositionSettings.f1909c;
        Trace.beginSection(androidx.tracing.Trace.b("CX:bindToLifecycle-internal"));
        try {
            Threads.a();
            CameraX cameraX = lifecycleCameraProviderImpl.f2691e;
            cameraX.getClass();
            CameraInternal cameraInternalC = cameraSelector.c(cameraX.f1898a.g());
            cameraInternalC.getClass();
            cameraInternalC.q(true);
            AdapterCameraInfo adapterCameraInfoC = lifecycleCameraProviderImpl.c(cameraSelector);
            CameraIdentifier.f1888c.getClass();
            Object obj2 = null;
            CameraIdentifier cameraIdentifierB = CameraIdentifier.Companion.b(adapterCameraInfoC, null);
            LifecycleCameraRepository lifecycleCameraRepository = lifecycleCameraProviderImpl.d;
            synchronized (lifecycleCameraRepository.f2698a) {
                lifecycleCameraB = (LifecycleCamera) lifecycleCameraRepository.f2699b.get(new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwner), cameraIdentifierB));
            }
            LifecycleCameraRepository lifecycleCameraRepository2 = lifecycleCameraProviderImpl.d;
            synchronized (lifecycleCameraRepository2.f2698a) {
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(lifecycleCameraRepository2.f2699b.values());
            }
            for (UseCase useCase : legacySessionConfig.f1966f) {
                for (Object obj3 : collectionUnmodifiableCollection) {
                    obj3.getClass();
                    LifecycleCamera lifecycleCamera = (LifecycleCamera) obj3;
                    synchronized (lifecycleCamera.f2684b) {
                        obj = obj2;
                        zContains = ((ArrayList) lifecycleCamera.d.y()).contains(useCase);
                    }
                    if (zContains && !Intrinsics.c(lifecycleCamera.e(), lifecycleOwner)) {
                        throw new IllegalStateException(String.format("Use case %s already bound to a different lifecycle.", Arrays.copyOf(new Object[]{useCase}, 1)));
                    }
                    obj2 = obj;
                }
            }
            ?? r18 = obj2;
            if (lifecycleCameraB == null) {
                LifecycleCameraRepository lifecycleCameraRepository3 = lifecycleCameraProviderImpl.d;
                CameraX cameraX2 = lifecycleCameraProviderImpl.f2691e;
                cameraX2.getClass();
                CameraUseCaseAdapterProviderImpl cameraUseCaseAdapterProviderImpl = cameraX2.f1906k;
                if (cameraUseCaseAdapterProviderImpl == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                compositionSettings.getClass();
                compositionSettings.getClass();
                lifecycleCameraB = lifecycleCameraRepository3.b(lifecycleOwner, new CameraUseCaseAdapter(cameraInternalC, r18, adapterCameraInfoC, r18, compositionSettings, compositionSettings, cameraUseCaseAdapterProviderImpl.f1896b, cameraUseCaseAdapterProviderImpl.d, cameraUseCaseAdapterProviderImpl.f1897c));
            }
            if (!legacySessionConfig.f1966f.isEmpty()) {
                LifecycleCameraRepository lifecycleCameraRepository4 = lifecycleCameraProviderImpl.d;
                CameraX cameraX3 = lifecycleCameraProviderImpl.f2691e;
                cameraX3.getClass();
                CameraFactory cameraFactory = cameraX3.g;
                if (cameraFactory == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                lifecycleCameraRepository4.a(lifecycleCameraB, legacySessionConfig, cameraFactory.f());
                lifecycleCameraProviderImpl.f2693h.add(new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwner), cameraIdentifierB));
            }
            Trace.endSection();
            return lifecycleCameraB;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final AdapterCameraInfo c(CameraSelector cameraSelector) {
        Object adapterCameraInfo;
        cameraSelector.getClass();
        Trace.beginSection(androidx.tracing.Trace.b("CX:getCameraInfo"));
        try {
            CameraX cameraX = this.f2691e;
            cameraX.getClass();
            CameraInfoInternal cameraInfoInternalK = cameraSelector.c(cameraX.f1898a.g()).k();
            cameraInfoInternalK.getClass();
            CameraConfig cameraConfigA = a(this, cameraSelector, cameraInfoInternalK);
            CameraIdentifier.Companion companion = CameraIdentifier.f1888c;
            String strB = cameraInfoInternalK.b();
            strB.getClass();
            Identifier identifierY = cameraConfigA.Y();
            companion.getClass();
            CameraIdentifier cameraIdentifierA = CameraIdentifier.Companion.a(strB, null, identifierY);
            synchronized (this.f2688a) {
                adapterCameraInfo = this.g.get(cameraIdentifierA);
                if (adapterCameraInfo == null) {
                    adapterCameraInfo = new AdapterCameraInfo(cameraInfoInternalK, cameraConfigA);
                    this.g.put(cameraIdentifierA, adapterCameraInfo);
                }
            }
            AdapterCameraInfo adapterCameraInfo2 = (AdapterCameraInfo) adapterCameraInfo;
            Trace.endSection();
            return adapterCameraInfo2;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final void d() {
        Trace.beginSection(androidx.tracing.Trace.b("CX:unbindAll"));
        try {
            Threads.a();
            CameraX cameraX = this.f2691e;
            if (cameraX != null) {
                CameraFactory cameraFactory = cameraX.g;
                if (cameraFactory == null) {
                    throw new IllegalStateException("CameraX not initialized yet.");
                }
                Camera2CameraCoordinator camera2CameraCoordinatorF = cameraFactory.f();
                synchronized (camera2CameraCoordinatorF.f1794a) {
                    try {
                        int i2 = camera2CameraCoordinatorF.g;
                        if (i2 != 0) {
                            camera2CameraCoordinatorF.g = 0;
                            ArrayList arrayList = new ArrayList(camera2CameraCoordinatorF.f1796c);
                            if (i2 == 2) {
                                camera2CameraCoordinatorF.f1798f.clear();
                            }
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ((CameraCoordinator.ConcurrentCameraModeListener) it.next()).a(i2, 0);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.d.i(this.f2693h);
            Trace.endSection();
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }
}
