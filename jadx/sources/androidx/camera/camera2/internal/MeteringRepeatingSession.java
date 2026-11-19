package androidx.camera.camera2.internal;

import android.graphics.SurfaceTexture;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.SupportedRepeatingSurfaceSize;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.r81;
import defpackage.x5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
class MeteringRepeatingSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImmediateSurface f1598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SessionConfig f1599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MeteringRepeatingConfig f1600c;
    public final Size d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final h f1601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SessionConfig.CloseableErrorListener f1602f;

    public static class MeteringRepeatingConfig implements UseCaseConfig<UseCase> {
        public final MutableOptionsBundle M;

        public MeteringRepeatingConfig() {
            MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
            mutableOptionsBundleD0.o(UseCaseConfig.w, new Camera2SessionOptionUnpacker());
            mutableOptionsBundleD0.o(ImageInputConfig.f2303h, 34);
            mutableOptionsBundleD0.o(TargetConfig.L, MeteringRepeatingSession.class);
            mutableOptionsBundleD0.o(TargetConfig.K, MeteringRepeatingSession.class.getCanonicalName() + "-" + UUID.randomUUID());
            this.M = mutableOptionsBundleD0;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public final UseCaseConfigFactory.CaptureType S() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public final Config l() {
            return this.M;
        }
    }

    public interface SurfaceResetCallback {
    }

    public MeteringRepeatingSession(CameraCharacteristicsCompat cameraCharacteristicsCompat, DisplayInfoManager displayInfoManager, h hVar) {
        Size size;
        SupportedRepeatingSurfaceSize supportedRepeatingSurfaceSize = new SupportedRepeatingSurfaceSize();
        Size size2 = null;
        this.f1602f = null;
        this.f1600c = new MeteringRepeatingConfig();
        this.f1601e = hVar;
        Size[] sizeArrF = cameraCharacteristicsCompat.c().f(34);
        if (sizeArrF == null) {
            Logger.a("MeteringRepeating");
            size = new Size(0, 0);
        } else {
            if (supportedRepeatingSurfaceSize.f1785a != null && "Huawei".equalsIgnoreCase(Build.BRAND) && "mha-l29".equalsIgnoreCase(Build.MODEL)) {
                ArrayList arrayList = new ArrayList();
                for (Size size3 : sizeArrF) {
                    if (SupportedRepeatingSurfaceSize.f1784c.compare(size3, SupportedRepeatingSurfaceSize.f1783b) >= 0) {
                        arrayList.add(size3);
                    }
                }
                sizeArrF = (Size[]) arrayList.toArray(new Size[0]);
            }
            List listAsList = Arrays.asList(sizeArrF);
            Collections.sort(listAsList, new x5(14));
            Size sizeE = displayInfoManager.e();
            long jMin = Math.min(((long) sizeE.getWidth()) * ((long) sizeE.getHeight()), 307200L);
            int length = sizeArrF.length;
            int i2 = 0;
            while (i2 < length) {
                Size size4 = sizeArrF[i2];
                long width = ((long) size4.getWidth()) * ((long) size4.getHeight());
                if (width == jMin) {
                    size = size4;
                } else if (width <= jMin) {
                    i2++;
                    size2 = size4;
                } else if (size2 != null) {
                    size = size2;
                }
            }
            size = (Size) listAsList.get(0);
        }
        this.d = size;
        Objects.toString(size);
        Logger.c(3, "MeteringRepeating");
        this.f1599b = a();
    }

    public final SessionConfig a() {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        Size size = this.d;
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        final Surface surface = new Surface(surfaceTexture);
        SessionConfig.Builder builderM = SessionConfig.Builder.m(this.f1600c, size);
        builderM.w(1);
        ImmediateSurface immediateSurface = new ImmediateSurface(surface);
        this.f1598a = immediateSurface;
        Futures.a(Futures.h(immediateSurface.f2290e), new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.MeteringRepeatingSession.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                throw new IllegalStateException("Future should never fail. Did it get completed by GC?", th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                surface.release();
                surfaceTexture.release();
            }
        }, CameraXExecutors.a());
        builderM.i(this.f1598a, DynamicRange.d, -1);
        SessionConfig.CloseableErrorListener closeableErrorListener = this.f1602f;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.camera2.internal.a0
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void a(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                MeteringRepeatingSession meteringRepeatingSession = this.f1682a;
                meteringRepeatingSession.f1599b = meteringRepeatingSession.a();
                h hVar = meteringRepeatingSession.f1601e;
                if (hVar != null) {
                    Camera2CameraImpl camera2CameraImpl = hVar.f1814c;
                    try {
                        if (((Boolean) CallbackToFutureAdapter.a(new h(camera2CameraImpl, 3)).get()).booleanValue()) {
                            MeteringRepeatingSession meteringRepeatingSession2 = camera2CameraImpl.C;
                            SessionConfig sessionConfig2 = meteringRepeatingSession2.f1599b;
                            MeteringRepeatingSession.MeteringRepeatingConfig meteringRepeatingConfig = meteringRepeatingSession2.f1600c;
                            camera2CameraImpl.d.execute(new e(camera2CameraImpl, Camera2CameraImpl.z(meteringRepeatingSession2), sessionConfig2, meteringRepeatingConfig, null, Collections.singletonList(UseCaseConfigFactory.CaptureType.METERING_REPEATING), 0));
                        }
                    } catch (InterruptedException | ExecutionException e2) {
                        r81.g("Unable to check if MeteringRepeating is attached.", e2);
                    }
                }
            }
        });
        this.f1602f = closeableErrorListener2;
        builderM.p(closeableErrorListener2);
        return builderM.k();
    }
}
