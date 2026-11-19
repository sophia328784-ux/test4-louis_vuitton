package androidx.camera.core.streamsharing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class VirtualCameraAdapter implements UseCase.StateChangeCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f2655b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UseCaseConfigFactory f2658f;
    public final CameraInternal g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraInternal f2659h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashSet f2661j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f2662k;
    public final ResolutionsMerger l;
    public final ResolutionsMerger m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f2656c = new HashMap();
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2657e = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CameraCaptureCallback f2660i = new VirtualCameraCaptureCallback(this);

    public static class VirtualCameraCaptureCallback extends CameraCaptureCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f2663a;

        public VirtualCameraCaptureCallback(VirtualCameraAdapter virtualCameraAdapter) {
            this.f2663a = new WeakReference(virtualCameraAdapter);
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public final void b(int i2, CameraCaptureResult cameraCaptureResult) {
            VirtualCameraAdapter virtualCameraAdapter = (VirtualCameraAdapter) this.f2663a.get();
            if (virtualCameraAdapter != null) {
                Iterator it = virtualCameraAdapter.f2655b.iterator();
                while (it.hasNext()) {
                    SessionConfig sessionConfig = ((UseCase) it.next()).o;
                    Iterator it2 = sessionConfig.g.f2271e.iterator();
                    while (it2.hasNext()) {
                        ((CameraCaptureCallback) it2.next()).b(i2, new VirtualCameraCaptureResult(sessionConfig.g.g, cameraCaptureResult));
                    }
                }
            }
        }
    }

    public VirtualCameraAdapter(CameraInternal cameraInternal, CameraInternal cameraInternal2, Set set, UseCaseConfigFactory useCaseConfigFactory, a aVar) {
        this.g = cameraInternal;
        this.f2659h = cameraInternal2;
        this.f2658f = useCaseConfigFactory;
        this.f2655b = set;
        HashMap map = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            map.put(useCase, useCase.o(cameraInternal.k(), null, useCase.f(true, useCaseConfigFactory)));
        }
        this.f2662k = map;
        HashSet hashSet = new HashSet(map.values());
        this.f2661j = hashSet;
        this.l = new ResolutionsMerger(cameraInternal, hashSet);
        if (this.f2659h != null) {
            this.m = new ResolutionsMerger(this.f2659h, hashSet);
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            UseCase useCase2 = (UseCase) it2.next();
            this.f2657e.put(useCase2, Boolean.FALSE);
            this.d.put(useCase2, new VirtualCamera(cameraInternal, this, aVar));
        }
    }

    public static void t(SurfaceEdge surfaceEdge, DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        surfaceEdge.f();
        try {
            surfaceEdge.h(deferrableSurface);
        } catch (DeferrableSurface.SurfaceClosedException unused) {
            if (sessionConfig.f2329f != null) {
                sessionConfig.f2329f.a(sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
        }
    }

    public static DeferrableSurface u(UseCase useCase) {
        List listB = useCase instanceof ImageCapture ? useCase.o.b() : Collections.unmodifiableList(useCase.o.g.f2268a);
        Preconditions.f(null, listB.size() <= 1);
        if (listB.size() == 1) {
            return (DeferrableSurface) listB.get(0);
        }
        return null;
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void d(UseCase useCase) {
        Threads.a();
        if (x(useCase)) {
            return;
        }
        this.f2657e.put(useCase, Boolean.TRUE);
        DeferrableSurface deferrableSurfaceU = u(useCase);
        if (deferrableSurfaceU != null) {
            t(w(useCase), deferrableSurfaceU, useCase.o);
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void e(UseCase useCase) {
        Threads.a();
        if (x(useCase)) {
            SurfaceEdge surfaceEdgeW = w(useCase);
            DeferrableSurface deferrableSurfaceU = u(useCase);
            if (deferrableSurfaceU != null) {
                t(surfaceEdgeW, deferrableSurfaceU, useCase.o);
            } else {
                surfaceEdgeW.e();
            }
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void m(UseCase useCase) {
        DeferrableSurface deferrableSurfaceU;
        Threads.a();
        SurfaceEdge surfaceEdgeW = w(useCase);
        if (x(useCase) && (deferrableSurfaceU = u(useCase)) != null) {
            t(surfaceEdgeW, deferrableSurfaceU, useCase.o);
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public final void r(UseCase useCase) {
        Threads.a();
        if (x(useCase)) {
            this.f2657e.put(useCase, Boolean.FALSE);
            w(useCase).e();
        }
    }

    public final OutConfig s(UseCase useCase, ResolutionsMerger resolutionsMerger, CameraInternal cameraInternal, SurfaceEdge surfaceEdge, int i2, boolean z) {
        int i3;
        int iT = cameraInternal.b().t(i2);
        boolean zF = TransformUtils.f(surfaceEdge.f2551b);
        UseCaseConfig useCaseConfig = (UseCaseConfig) this.f2662k.get(useCase);
        Objects.requireNonNull(useCaseConfig);
        PreferredChildSize preferredChildSizeB = resolutionsMerger.b(useCaseConfig, surfaceEdge.d, TransformUtils.b(surfaceEdge.f2551b), z);
        Rect rect = preferredChildSizeB.f2640a;
        Size size = preferredChildSizeB.f2641b;
        int iK = TransformUtils.k((surfaceEdge.f2556i + cameraInternal.b().t(((ImageOutputConfig) useCase.f1995h).G(0))) - iT);
        boolean zN = useCase.n(cameraInternal) ^ zF;
        if (useCase instanceof Preview) {
            i3 = 1;
        } else {
            i3 = useCase instanceof ImageCapture ? 4 : 2;
        }
        return OutConfig.h(i3, useCase instanceof ImageCapture ? 256 : 34, rect, TransformUtils.i(size, iK), iK, zN);
    }

    public final HashMap v(SurfaceEdge surfaceEdge, boolean z) {
        HashMap map = new HashMap();
        for (UseCase useCase : this.f2655b) {
            UseCaseConfig useCaseConfig = (UseCaseConfig) this.f2662k.get(useCase);
            Objects.requireNonNull(useCaseConfig);
            Size size = this.l.b(useCaseConfig, surfaceEdge.d, TransformUtils.b(surfaceEdge.f2551b), z).f2642c;
            map.put(useCase, size);
            Objects.toString(size);
            Objects.toString(useCase);
            Logger.c(3, "VirtualCameraAdapter");
        }
        return map;
    }

    public final SurfaceEdge w(UseCase useCase) {
        SurfaceEdge surfaceEdge = (SurfaceEdge) this.f2656c.get(useCase);
        Objects.requireNonNull(surfaceEdge);
        return surfaceEdge;
    }

    public final boolean x(UseCase useCase) {
        Boolean bool = (Boolean) this.f2657e.get(useCase);
        Objects.requireNonNull(bool);
        return bool.booleanValue();
    }

    public final void y(HashMap map, HashMap map2) {
        HashMap map3 = this.f2656c;
        map3.clear();
        map3.putAll(map);
        for (Map.Entry entry : map3.entrySet()) {
            UseCase useCase = (UseCase) entry.getKey();
            SurfaceEdge surfaceEdge = (SurfaceEdge) entry.getValue();
            useCase.B(surfaceEdge.d);
            useCase.l = new Matrix(surfaceEdge.f2551b);
            StreamSpec.Builder builderI = surfaceEdge.g.i();
            Size size = (Size) map2.get(useCase);
            if (size != null) {
                builderI.e(size);
            }
            useCase.f1996i = useCase.y(builderI.a(), null);
            useCase.r();
        }
    }
}
