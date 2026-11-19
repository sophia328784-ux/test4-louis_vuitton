package androidx.camera.camera2.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.ImageReader;
import android.media.MediaCodec;
import android.os.Bundle;
import android.util.Size;
import android.view.SurfaceHolder;
import androidx.camera.camera2.impl.FeatureCombinationQueryImpl;
import androidx.camera.camera2.impl.FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1;
import androidx.camera.camera2.internal.CameraUnavailableExceptionHelper;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangeConversions;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import defpackage.ct0;
import defpackage.md;
import defpackage.mt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;", "Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "cameraId", "Landroidx/camera/camera2/internal/compat/CameraManagerCompat;", "cameraManagerCompat", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;)V", "CloseableOutputConfiguration", "Companion", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FeatureCombinationQueryImpl implements FeatureCombinationQuery {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 f1384j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1386c;
    public final CameraManagerCompat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lazy f1387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f1388f;
    public final Lazy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f1389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f1390i;

    @Metadata(d1 = {"\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0005*\u0001\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "androidx/camera/camera2/impl/FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1", "NO_OP_CALLBACK", "Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1;", "FCQ_PLAY_SERVICES_IMPL_KEY", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f1384j = new FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1();
    }

    public FeatureCombinationQueryImpl(Context context, String str, CameraManagerCompat cameraManagerCompat) {
        context.getClass();
        str.getClass();
        cameraManagerCompat.getClass();
        this.f1385b = context;
        this.f1386c = str;
        this.d = cameraManagerCompat;
        final int i2 = 0;
        this.f1387e = LazyKt.b(new Function0(this) { // from class: cx

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeatureCombinationQueryImpl f68351c;

            {
                this.f68351c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CameraUnavailableException {
                Boolean bool;
                int i3 = i2;
                FeatureCombinationQueryImpl featureCombinationQueryImpl = this.f68351c;
                switch (i3) {
                    case 0:
                        return new CameraDeviceSetupCompatFactory(featureCombinationQueryImpl.f1385b).a(featureCombinationQueryImpl.f1386c);
                    case 1:
                        return FeatureCombinationQueryImpl.b(featureCombinationQueryImpl);
                    case 2:
                        FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 featureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 = FeatureCombinationQueryImpl.f1384j;
                        try {
                            return featureCombinationQueryImpl.d.b(featureCombinationQueryImpl.f1386c);
                        } catch (CameraAccessExceptionCompat e2) {
                            throw CameraUnavailableExceptionHelper.a(e2);
                        }
                    case 3:
                        return DynamicRangesCompat.a((CameraCharacteristicsCompat) featureCombinationQueryImpl.g.getF71699b()).d();
                    default:
                        Context context2 = featureCombinationQueryImpl.f1385b;
                        try {
                            ServiceInfo[] serviceInfoArr = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 132).services;
                            if (serviceInfoArr == null) {
                                bool = Boolean.FALSE;
                            } else {
                                Iterator itA = ArrayIteratorKt.a(serviceInfoArr);
                                while (itA.hasNext()) {
                                    Bundle bundle = ((ServiceInfo) itA.next()).metaData;
                                    if (bundle != null && bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY") != null) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                bool = Boolean.FALSE;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                            bool = null;
                        }
                        return Boolean.valueOf(Intrinsics.c(bool, Boolean.FALSE));
                }
            }
        });
        final int i3 = 1;
        this.f1388f = LazyKt.b(new Function0(this) { // from class: cx

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeatureCombinationQueryImpl f68351c;

            {
                this.f68351c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CameraUnavailableException {
                Boolean bool;
                int i4 = i3;
                FeatureCombinationQueryImpl featureCombinationQueryImpl = this.f68351c;
                switch (i4) {
                    case 0:
                        return new CameraDeviceSetupCompatFactory(featureCombinationQueryImpl.f1385b).a(featureCombinationQueryImpl.f1386c);
                    case 1:
                        return FeatureCombinationQueryImpl.b(featureCombinationQueryImpl);
                    case 2:
                        FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 featureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 = FeatureCombinationQueryImpl.f1384j;
                        try {
                            return featureCombinationQueryImpl.d.b(featureCombinationQueryImpl.f1386c);
                        } catch (CameraAccessExceptionCompat e2) {
                            throw CameraUnavailableExceptionHelper.a(e2);
                        }
                    case 3:
                        return DynamicRangesCompat.a((CameraCharacteristicsCompat) featureCombinationQueryImpl.g.getF71699b()).d();
                    default:
                        Context context2 = featureCombinationQueryImpl.f1385b;
                        try {
                            ServiceInfo[] serviceInfoArr = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 132).services;
                            if (serviceInfoArr == null) {
                                bool = Boolean.FALSE;
                            } else {
                                Iterator itA = ArrayIteratorKt.a(serviceInfoArr);
                                while (itA.hasNext()) {
                                    Bundle bundle = ((ServiceInfo) itA.next()).metaData;
                                    if (bundle != null && bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY") != null) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                bool = Boolean.FALSE;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                            bool = null;
                        }
                        return Boolean.valueOf(Intrinsics.c(bool, Boolean.FALSE));
                }
            }
        });
        final int i4 = 2;
        this.g = LazyKt.b(new Function0(this) { // from class: cx

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeatureCombinationQueryImpl f68351c;

            {
                this.f68351c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CameraUnavailableException {
                Boolean bool;
                int i5 = i4;
                FeatureCombinationQueryImpl featureCombinationQueryImpl = this.f68351c;
                switch (i5) {
                    case 0:
                        return new CameraDeviceSetupCompatFactory(featureCombinationQueryImpl.f1385b).a(featureCombinationQueryImpl.f1386c);
                    case 1:
                        return FeatureCombinationQueryImpl.b(featureCombinationQueryImpl);
                    case 2:
                        FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 featureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 = FeatureCombinationQueryImpl.f1384j;
                        try {
                            return featureCombinationQueryImpl.d.b(featureCombinationQueryImpl.f1386c);
                        } catch (CameraAccessExceptionCompat e2) {
                            throw CameraUnavailableExceptionHelper.a(e2);
                        }
                    case 3:
                        return DynamicRangesCompat.a((CameraCharacteristicsCompat) featureCombinationQueryImpl.g.getF71699b()).d();
                    default:
                        Context context2 = featureCombinationQueryImpl.f1385b;
                        try {
                            ServiceInfo[] serviceInfoArr = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 132).services;
                            if (serviceInfoArr == null) {
                                bool = Boolean.FALSE;
                            } else {
                                Iterator itA = ArrayIteratorKt.a(serviceInfoArr);
                                while (itA.hasNext()) {
                                    Bundle bundle = ((ServiceInfo) itA.next()).metaData;
                                    if (bundle != null && bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY") != null) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                bool = Boolean.FALSE;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                            bool = null;
                        }
                        return Boolean.valueOf(Intrinsics.c(bool, Boolean.FALSE));
                }
            }
        });
        final int i5 = 3;
        this.f1389h = LazyKt.b(new Function0(this) { // from class: cx

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeatureCombinationQueryImpl f68351c;

            {
                this.f68351c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CameraUnavailableException {
                Boolean bool;
                int i6 = i5;
                FeatureCombinationQueryImpl featureCombinationQueryImpl = this.f68351c;
                switch (i6) {
                    case 0:
                        return new CameraDeviceSetupCompatFactory(featureCombinationQueryImpl.f1385b).a(featureCombinationQueryImpl.f1386c);
                    case 1:
                        return FeatureCombinationQueryImpl.b(featureCombinationQueryImpl);
                    case 2:
                        FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 featureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 = FeatureCombinationQueryImpl.f1384j;
                        try {
                            return featureCombinationQueryImpl.d.b(featureCombinationQueryImpl.f1386c);
                        } catch (CameraAccessExceptionCompat e2) {
                            throw CameraUnavailableExceptionHelper.a(e2);
                        }
                    case 3:
                        return DynamicRangesCompat.a((CameraCharacteristicsCompat) featureCombinationQueryImpl.g.getF71699b()).d();
                    default:
                        Context context2 = featureCombinationQueryImpl.f1385b;
                        try {
                            ServiceInfo[] serviceInfoArr = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 132).services;
                            if (serviceInfoArr == null) {
                                bool = Boolean.FALSE;
                            } else {
                                Iterator itA = ArrayIteratorKt.a(serviceInfoArr);
                                while (itA.hasNext()) {
                                    Bundle bundle = ((ServiceInfo) itA.next()).metaData;
                                    if (bundle != null && bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY") != null) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                bool = Boolean.FALSE;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                            bool = null;
                        }
                        return Boolean.valueOf(Intrinsics.c(bool, Boolean.FALSE));
                }
            }
        });
        final int i6 = 4;
        this.f1390i = LazyKt.b(new Function0(this) { // from class: cx

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeatureCombinationQueryImpl f68351c;

            {
                this.f68351c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CameraUnavailableException {
                Boolean bool;
                int i7 = i6;
                FeatureCombinationQueryImpl featureCombinationQueryImpl = this.f68351c;
                switch (i7) {
                    case 0:
                        return new CameraDeviceSetupCompatFactory(featureCombinationQueryImpl.f1385b).a(featureCombinationQueryImpl.f1386c);
                    case 1:
                        return FeatureCombinationQueryImpl.b(featureCombinationQueryImpl);
                    case 2:
                        FeatureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 featureCombinationQueryImpl$Companion$NO_OP_CALLBACK$1 = FeatureCombinationQueryImpl.f1384j;
                        try {
                            return featureCombinationQueryImpl.d.b(featureCombinationQueryImpl.f1386c);
                        } catch (CameraAccessExceptionCompat e2) {
                            throw CameraUnavailableExceptionHelper.a(e2);
                        }
                    case 3:
                        return DynamicRangesCompat.a((CameraCharacteristicsCompat) featureCombinationQueryImpl.g.getF71699b()).d();
                    default:
                        Context context2 = featureCombinationQueryImpl.f1385b;
                        try {
                            ServiceInfo[] serviceInfoArr = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 132).services;
                            if (serviceInfoArr == null) {
                                bool = Boolean.FALSE;
                            } else {
                                Iterator itA = ArrayIteratorKt.a(serviceInfoArr);
                                while (itA.hasNext()) {
                                    Bundle bundle = ((ServiceInfo) itA.next()).metaData;
                                    if (bundle != null && bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY") != null) {
                                        bool = Boolean.TRUE;
                                    }
                                }
                                bool = Boolean.FALSE;
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                            bool = null;
                        }
                        return Boolean.valueOf(Intrinsics.c(bool, Boolean.FALSE));
                }
            }
        });
    }

    public static CameraDevice.CameraDeviceSetup b(FeatureCombinationQueryImpl featureCombinationQueryImpl) {
        CameraManagerCompat cameraManagerCompat = featureCombinationQueryImpl.d;
        CameraManager cameraManagerC = cameraManagerCompat.f1704a.c();
        String str = featureCombinationQueryImpl.f1386c;
        if (cameraManagerC.isCameraDeviceSetupSupported(str)) {
            return cameraManagerCompat.f1704a.c().getCameraDeviceSetup(str);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public final boolean a(SessionConfig sessionConfig) throws Exception {
        boolean zIsTerminated;
        long j2;
        CloseableOutputConfiguration closeableOutputConfiguration;
        DynamicRangeProfiles dynamicRangeProfilesA;
        OutputConfiguration outputConfiguration;
        ArrayList arrayList = sessionConfig.f2325a;
        CaptureConfig captureConfig = sessionConfig.g;
        ArrayList<AutoCloseable> arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = 2;
            ImageReader imageReader = null;
            if (!it.hasNext()) {
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((CloseableOutputConfiguration) it2.next()).f1391b);
                }
                SessionConfiguration sessionConfiguration = new SessionConfiguration(0, arrayList3, CameraXExecutors.a(), f1384j);
                CameraDevice.CameraDeviceSetup cameraDeviceSetup = (CameraDevice.CameraDeviceSetup) this.f1388f.getF71699b();
                if (cameraDeviceSetup == null) {
                    sessionConfiguration = null;
                } else {
                    CaptureRequest.Builder builderCreateCaptureRequest = cameraDeviceSetup.createCaptureRequest(captureConfig.f2270c);
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, captureConfig.a());
                    if (captureConfig.c() == 2) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 2);
                    }
                    sessionConfiguration.setSessionParameters(builderCreateCaptureRequest.build());
                }
                if (sessionConfiguration == null) {
                    return false;
                }
                int i3 = ((CameraDeviceSetupCompat) this.f1387e.getF71699b()).a(sessionConfiguration).f2679a;
                new StringBuilder("fpsRange=").append(captureConfig.a());
                new StringBuilder(", previewStabilizationMode=").append(captureConfig.c());
                int i4 = 0;
                for (Object obj : arrayList) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    SessionConfig.OutputConfig outputConfig = (SessionConfig.OutputConfig) obj;
                    StringBuilder sb = new StringBuilder("{format=");
                    sb.append(outputConfig.f().f2293i);
                    sb.append(", size=");
                    sb.append(outputConfig.f().f2292h);
                    sb.append(", dynamicRange=");
                    sb.append(outputConfig.b());
                    sb.append(", class=");
                    sb.append(outputConfig.f().f2294j);
                    sb.append('}');
                    i4 = i5;
                }
                Logger.c(3, "FeatureCombinationQueryImpl");
                boolean z = i3 == 1;
                for (AutoCloseable autoCloseable : arrayList2) {
                    if (autoCloseable instanceof AutoCloseable) {
                        autoCloseable.close();
                    } else if (autoCloseable instanceof ExecutorService) {
                        ExecutorService executorService = (ExecutorService) autoCloseable;
                        if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                            executorService.shutdown();
                            Object[] objArr = false;
                            while (!zIsTerminated) {
                                try {
                                    zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                                } catch (InterruptedException unused) {
                                    if (objArr == false) {
                                        executorService.shutdownNow();
                                        objArr = true;
                                    }
                                }
                            }
                            if (objArr != false) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    } else {
                        if (!(autoCloseable instanceof TypedArray)) {
                            ct0.c();
                            return false;
                        }
                        ((TypedArray) autoCloseable).recycle();
                    }
                }
                return z;
            }
            SessionConfig.OutputConfig outputConfig2 = (SessionConfig.OutputConfig) it.next();
            if (((Boolean) this.f1390i.getF71699b()).booleanValue()) {
                outputConfig2.getClass();
                Class cls = outputConfig2.f().f2294j;
                Objects.toString(outputConfig2.f().f2294j);
                Logger.c(3, "FeatureCombinationQueryImpl");
                if (cls != null) {
                    Size size = outputConfig2.f().f2292h;
                    if (size == null) {
                        md.n("Required value was null.");
                        return false;
                    }
                    outputConfiguration = new OutputConfiguration(size, cls);
                } else {
                    outputConfiguration = new OutputConfiguration(outputConfig2.f().f2293i, outputConfig2.f().f2292h);
                }
                closeableOutputConfiguration = new CloseableOutputConfiguration(outputConfiguration, imageReader, i2, null == true ? 1 : 0);
            } else {
                outputConfig2.getClass();
                Class cls2 = outputConfig2.f().f2294j;
                if (Intrinsics.c(cls2, MediaCodec.class)) {
                    j2 = 65536;
                } else if (Intrinsics.c(cls2, SurfaceHolder.class)) {
                    j2 = 2048;
                } else {
                    j2 = Intrinsics.c(cls2, SurfaceTexture.class) ? 256L : 0L;
                }
                long j3 = j2;
                Objects.toString(outputConfig2.f().f2294j);
                Logger.c(3, "FeatureCombinationQueryImpl");
                ImageReader imageReaderNewInstance = ImageReader.newInstance(outputConfig2.f().f2292h.getWidth(), outputConfig2.f().f2292h.getHeight(), outputConfig2.f().f2293i, 1, j3);
                imageReaderNewInstance.getClass();
                closeableOutputConfiguration = new CloseableOutputConfiguration(new OutputConfiguration(imageReaderNewInstance.getSurface()), imageReaderNewInstance);
            }
            if (outputConfig2.f().f2294j != null && (dynamicRangeProfilesA = mt.a(this.f1389h.getF71699b())) != null) {
                Long lA = DynamicRangeConversions.a(outputConfig2.b(), dynamicRangeProfilesA);
                if (lA == null) {
                    md.n("Required value was null.");
                    return false;
                }
                closeableOutputConfiguration.f1391b.setDynamicRangeProfile(lA.longValue());
            }
            arrayList2.add(closeableOutputConfiguration);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$CloseableOutputConfiguration;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Landroid/hardware/camera2/params/OutputConfiguration;", "value", "Landroid/media/ImageReader;", "backingImageReader", "<init>", "(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/media/ImageReader;)V", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class CloseableOutputConfiguration implements AutoCloseable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final OutputConfiguration f1391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageReader f1392c;

        public CloseableOutputConfiguration(OutputConfiguration outputConfiguration, ImageReader imageReader) {
            outputConfiguration.getClass();
            this.f1391b = outputConfiguration;
            this.f1392c = imageReader;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            ImageReader imageReader = this.f1392c;
            if (imageReader != null) {
                imageReader.close();
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloseableOutputConfiguration)) {
                return false;
            }
            CloseableOutputConfiguration closeableOutputConfiguration = (CloseableOutputConfiguration) obj;
            return Intrinsics.c(this.f1391b, closeableOutputConfiguration.f1391b) && Intrinsics.c(this.f1392c, closeableOutputConfiguration.f1392c);
        }

        public final int hashCode() {
            int iHashCode = this.f1391b.hashCode() * 31;
            ImageReader imageReader = this.f1392c;
            return iHashCode + (imageReader == null ? 0 : imageReader.hashCode());
        }

        public final String toString() {
            return "CloseableOutputConfiguration(value=" + this.f1391b + ", backingImageReader=" + this.f1392c + ')';
        }

        public /* synthetic */ CloseableOutputConfiguration(OutputConfiguration outputConfiguration, ImageReader imageReader, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(outputConfiguration, (i2 & 2) != 0 ? null : imageReader);
        }
    }
}
