package androidx.camera.core.streamsharing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.concurrent.DualOutConfig;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import defpackage.et;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class StreamSharing extends UseCase {
    public SessionConfig.Builder A;
    public SessionConfig.Builder B;
    public SessionConfig.CloseableErrorListener C;
    public final StreamSharingConfig q;
    public final VirtualCameraAdapter r;
    public final CompositionSettings s;
    public final CompositionSettings t;
    public SurfaceProcessorNode u;
    public DualSurfaceProcessorNode v;
    public SurfaceEdge w;
    public SurfaceEdge x;
    public SurfaceEdge y;
    public SurfaceEdge z;

    public interface Control {
    }

    public StreamSharing(CameraInternal cameraInternal, CameraInternal cameraInternal2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, Set<UseCase> set, UseCaseConfigFactory useCaseConfigFactory) {
        super(K(set));
        this.q = K(set);
        this.s = compositionSettings;
        this.t = compositionSettings2;
        this.r = new VirtualCameraAdapter(cameraInternal, cameraInternal2, set, useCaseConfigFactory, new a(this));
        HashSet hashSet = set.iterator().next().g;
        this.g = hashSet != null ? new HashSet(hashSet) : null;
    }

    public static ArrayList I(UseCase useCase) {
        ArrayList arrayList = new ArrayList();
        if (!(useCase instanceof StreamSharing)) {
            arrayList.add(useCase.f1995h.S());
            return arrayList;
        }
        Iterator it = ((StreamSharing) useCase).r.f2655b.iterator();
        while (it.hasNext()) {
            arrayList.add(((UseCase) it.next()).f1995h.S());
        }
        return arrayList;
    }

    public static StreamSharingConfig K(Set set) {
        MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
        new StreamSharingBuilder(mutableOptionsBundleD0);
        mutableOptionsBundleD0.o(ImageInputConfig.f2303h, 34);
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase.f1995h.b(UseCaseConfig.E)) {
                arrayList.add(useCase.f1995h.S());
            }
        }
        mutableOptionsBundleD0.o(StreamSharingConfig.N, arrayList);
        mutableOptionsBundleD0.o(ImageOutputConfig.n, 2);
        mutableOptionsBundleD0.o(UseCaseConfig.I, StreamUseCase.PREVIEW_VIDEO_STILL);
        return new StreamSharingConfig(OptionsBundle.c0(mutableOptionsBundleD0));
    }

    public final void E() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.C;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
            this.C = null;
        }
        SurfaceEdge surfaceEdge = this.w;
        if (surfaceEdge != null) {
            surfaceEdge.c();
            this.w = null;
        }
        SurfaceEdge surfaceEdge2 = this.x;
        if (surfaceEdge2 != null) {
            surfaceEdge2.c();
            this.x = null;
        }
        SurfaceEdge surfaceEdge3 = this.y;
        if (surfaceEdge3 != null) {
            surfaceEdge3.c();
            this.y = null;
        }
        SurfaceEdge surfaceEdge4 = this.z;
        if (surfaceEdge4 != null) {
            surfaceEdge4.c();
            this.z = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.u;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.b();
            this.u = null;
        }
        DualSurfaceProcessorNode dualSurfaceProcessorNode = this.v;
        if (dualSurfaceProcessorNode != null) {
            dualSurfaceProcessorNode.f2591a.release();
            Threads.c(new et(dualSurfaceProcessorNode, 7));
            this.v = null;
        }
    }

    public final List F(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        Threads.a();
        VirtualCameraAdapter virtualCameraAdapter = this.r;
        if (streamSpec2 == null) {
            SurfaceEdge surfaceEdgeG = G(str, str2, useCaseConfig, streamSpec, null);
            CameraInternal cameraInternalC = c();
            Objects.requireNonNull(cameraInternalC);
            SurfaceProcessorNode surfaceProcessorNode = new SurfaceProcessorNode(cameraInternalC, new DefaultSurfaceProcessor(streamSpec.b()));
            this.u = surfaceProcessorNode;
            boolean z = this.f1998k != null;
            int iL = l();
            virtualCameraAdapter.getClass();
            HashMap map = new HashMap();
            for (UseCase useCase : virtualCameraAdapter.f2655b) {
                SurfaceEdge surfaceEdge = surfaceEdgeG;
                ResolutionsMerger resolutionsMerger = virtualCameraAdapter.l;
                CameraInternal cameraInternal = virtualCameraAdapter.g;
                VirtualCameraAdapter virtualCameraAdapter2 = virtualCameraAdapter;
                boolean z2 = z;
                OutConfig outConfigS = virtualCameraAdapter2.s(useCase, resolutionsMerger, cameraInternal, surfaceEdge, iL, z2);
                int iT = virtualCameraAdapter2.g.b().t(((ImageOutputConfig) useCase.f1995h).G(0));
                VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter2.d.get(useCase);
                Objects.requireNonNull(virtualCamera);
                virtualCamera.d.f2669c = iT;
                map.put(useCase, outConfigS);
                surfaceEdgeG = surfaceEdge;
                z = z2;
                virtualCameraAdapter = virtualCameraAdapter2;
            }
            SurfaceEdge surfaceEdge2 = surfaceEdgeG;
            VirtualCameraAdapter virtualCameraAdapter3 = virtualCameraAdapter;
            boolean z3 = z;
            SurfaceProcessorNode.Out outC = surfaceProcessorNode.c(SurfaceProcessorNode.In.c(surfaceEdge2, new ArrayList(map.values())));
            HashMap map2 = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                map2.put((UseCase) entry.getKey(), outC.get(entry.getValue()));
            }
            virtualCameraAdapter3.y(map2, virtualCameraAdapter3.v(surfaceEdge2, z3));
            Object[] objArr = {this.A.k()};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            return Collections.unmodifiableList(arrayList);
        }
        VirtualCameraAdapter virtualCameraAdapter4 = virtualCameraAdapter;
        SurfaceEdge surfaceEdgeG2 = G(str, str2, useCaseConfig, streamSpec, streamSpec2);
        Matrix matrix = this.l;
        CameraInternal cameraInternalI = i();
        Objects.requireNonNull(cameraInternalI);
        boolean zP = cameraInternalI.p();
        Size sizeF = streamSpec2.f();
        Rect rect = this.f1998k;
        if (rect == null) {
            rect = new Rect(0, 0, sizeF.getWidth(), sizeF.getHeight());
        }
        Rect rect2 = rect;
        CameraInternal cameraInternalI2 = i();
        Objects.requireNonNull(cameraInternalI2);
        int iH = h(cameraInternalI2, false);
        CameraInternal cameraInternalI3 = i();
        Objects.requireNonNull(cameraInternalI3);
        SurfaceEdge surfaceEdge3 = new SurfaceEdge(3, 34, streamSpec2, matrix, zP, rect2, iH, -1, n(cameraInternalI3));
        this.x = surfaceEdge3;
        Objects.requireNonNull(i());
        this.z = surfaceEdge3;
        SessionConfig.Builder builderH = H(this.x, useCaseConfig, streamSpec2);
        this.B = builderH;
        SessionConfig.CloseableErrorListener closeableErrorListener = this.C;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new b(this, str, str2, useCaseConfig, streamSpec, streamSpec2));
        this.C = closeableErrorListener2;
        builderH.p(closeableErrorListener2);
        SurfaceEdge surfaceEdge4 = this.z;
        this.v = new DualSurfaceProcessorNode(c(), i(), new DualSurfaceProcessor(streamSpec.b(), this.s, this.t));
        boolean z4 = this.f1998k != null;
        int iL2 = l();
        virtualCameraAdapter4.getClass();
        HashMap map3 = new HashMap();
        for (UseCase useCase2 : virtualCameraAdapter4.f2655b) {
            VirtualCameraAdapter virtualCameraAdapter5 = virtualCameraAdapter4;
            SurfaceEdge surfaceEdge5 = surfaceEdgeG2;
            OutConfig outConfigS2 = virtualCameraAdapter5.s(useCase2, virtualCameraAdapter4.l, virtualCameraAdapter4.g, surfaceEdge5, iL2, z4);
            ResolutionsMerger resolutionsMerger2 = virtualCameraAdapter5.m;
            Objects.requireNonNull(resolutionsMerger2);
            CameraInternal cameraInternal2 = virtualCameraAdapter5.f2659h;
            Objects.requireNonNull(cameraInternal2);
            SurfaceEdge surfaceEdge6 = surfaceEdge4;
            OutConfig outConfigS3 = virtualCameraAdapter5.s(useCase2, resolutionsMerger2, cameraInternal2, surfaceEdge6, iL2, z4);
            int iT2 = virtualCameraAdapter5.g.b().t(((ImageOutputConfig) useCase2.f1995h).G(0));
            VirtualCamera virtualCamera2 = (VirtualCamera) virtualCameraAdapter5.d.get(useCase2);
            Objects.requireNonNull(virtualCamera2);
            virtualCamera2.d.f2669c = iT2;
            map3.put(useCase2, DualOutConfig.c(outConfigS2, outConfigS3));
            surfaceEdge4 = surfaceEdge6;
            surfaceEdgeG2 = surfaceEdge5;
            virtualCameraAdapter4 = virtualCameraAdapter5;
        }
        VirtualCameraAdapter virtualCameraAdapter6 = virtualCameraAdapter4;
        SurfaceEdge surfaceEdge7 = surfaceEdgeG2;
        DualSurfaceProcessorNode.Out outB = this.v.b(DualSurfaceProcessorNode.In.d(surfaceEdge7, surfaceEdge4, new ArrayList(map3.values())));
        HashMap map4 = new HashMap();
        for (Map.Entry entry2 : map3.entrySet()) {
            map4.put((UseCase) entry2.getKey(), outB.get(entry2.getValue()));
        }
        virtualCameraAdapter6.y(map4, virtualCameraAdapter6.v(surfaceEdge7, z4));
        Object[] objArr2 = {this.A.k(), this.B.k()};
        ArrayList arrayList2 = new ArrayList(2);
        for (int i2 = 0; i2 < 2; i2++) {
            Object obj2 = objArr2[i2];
            Objects.requireNonNull(obj2);
            arrayList2.add(obj2);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public final SurfaceEdge G(String str, String str2, UseCaseConfig useCaseConfig, StreamSpec streamSpec, StreamSpec streamSpec2) {
        Matrix matrix = this.l;
        CameraInternal cameraInternalC = c();
        Objects.requireNonNull(cameraInternalC);
        boolean zP = cameraInternalC.p();
        Size sizeF = streamSpec.f();
        Rect rect = this.f1998k;
        if (rect == null) {
            rect = new Rect(0, 0, sizeF.getWidth(), sizeF.getHeight());
        }
        Rect rect2 = rect;
        CameraInternal cameraInternalC2 = c();
        Objects.requireNonNull(cameraInternalC2);
        int iH = h(cameraInternalC2, false);
        CameraInternal cameraInternalC3 = c();
        Objects.requireNonNull(cameraInternalC3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, streamSpec, matrix, zP, rect2, iH, -1, n(cameraInternalC3));
        this.w = surfaceEdge;
        Objects.requireNonNull(c());
        this.y = surfaceEdge;
        SessionConfig.Builder builderH = H(this.w, useCaseConfig, streamSpec);
        this.A = builderH;
        SessionConfig.CloseableErrorListener closeableErrorListener = this.C;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new b(this, str, str2, useCaseConfig, streamSpec, streamSpec2));
        this.C = closeableErrorListener2;
        builderH.p(closeableErrorListener2);
        return this.y;
    }

    public final SessionConfig.Builder H(SurfaceEdge surfaceEdge, UseCaseConfig useCaseConfig, StreamSpec streamSpec) {
        SessionConfig.Builder builderM = SessionConfig.Builder.m(useCaseConfig, streamSpec.f());
        VirtualCameraAdapter virtualCameraAdapter = this.r;
        Iterator it = virtualCameraAdapter.f2655b.iterator();
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = ((UseCase) it.next()).f1995h.Q().g.f2270c;
            List list = SessionConfig.f2324j;
            if (list.indexOf(Integer.valueOf(i2)) < list.indexOf(Integer.valueOf(i3))) {
                i2 = i3;
            }
        }
        if (i2 != -1) {
            builderM.w(i2);
        }
        Size sizeF = streamSpec.f();
        Iterator it2 = virtualCameraAdapter.f2655b.iterator();
        while (it2.hasNext()) {
            SessionConfig sessionConfigK = SessionConfig.Builder.m(((UseCase) it2.next()).f1995h, sizeF).k();
            CaptureConfig captureConfig = sessionConfigK.g;
            builderM.b(captureConfig.f2271e);
            builderM.a(sessionConfigK.f2328e);
            Iterator it3 = sessionConfigK.d.iterator();
            while (it3.hasNext()) {
                builderM.h((CameraCaptureSession.StateCallback) it3.next());
            }
            Iterator it4 = sessionConfigK.f2327c.iterator();
            while (it4.hasNext()) {
                builderM.d((CameraDevice.StateCallback) it4.next());
            }
            builderM.e(captureConfig.f2269b);
        }
        surfaceEdge.getClass();
        Threads.a();
        surfaceEdge.b();
        Preconditions.f("Consumer can only be linked once.", !surfaceEdge.f2557j);
        surfaceEdge.f2557j = true;
        builderM.i(surfaceEdge.l, streamSpec.b(), -1);
        builderM.g(virtualCameraAdapter.f2660i);
        if (streamSpec.d() != null) {
            builderM.e(streamSpec.d());
        }
        builderM.v(streamSpec.g());
        a(builderM, streamSpec);
        return builderM;
    }

    public final Set J() {
        return this.r.f2655b;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig f(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        StreamSharingConfig streamSharingConfig = this.q;
        Config configA = useCaseConfigFactory.a(streamSharingConfig.S(), 1);
        if (z) {
            configA = Config.U(configA, streamSharingConfig.M);
        }
        if (configA == null) {
            return null;
        }
        return ((StreamSharingBuilder) m(configA)).d();
    }

    @Override // androidx.camera.core.UseCase
    public final Set j(CameraInfoInternal cameraInfoInternal) {
        Set set = this.r.f2655b;
        HashSet hashSet = null;
        if (set.isEmpty()) {
            return null;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Set setJ = ((UseCase) it.next()).j(cameraInfoInternal);
            if (setJ != null) {
                if (hashSet == null) {
                    hashSet = new HashSet(setJ);
                } else {
                    hashSet.retainAll(setJ);
                }
            }
        }
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final HashSet k() {
        HashSet hashSet = new HashSet();
        hashSet.add(3);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder m(Config config) {
        return new StreamSharingBuilder(MutableOptionsBundle.e0(config));
    }

    @Override // androidx.camera.core.UseCase
    public final void s() {
        VirtualCameraAdapter virtualCameraAdapter = this.r;
        for (UseCase useCase : virtualCameraAdapter.f2655b) {
            VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter.d.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.b(virtualCamera, null, null, useCase.f(true, virtualCameraAdapter.f2658f));
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void t() {
        Iterator it = this.r.f2655b.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).t();
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x01ba  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig u(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        UseCaseConfig useCaseConfig;
        Object dynamicRange;
        ?? r7;
        ?? r6;
        MutableConfig mutableConfigA = builder.a();
        VirtualCameraAdapter virtualCameraAdapter = this.r;
        HashSet hashSet = virtualCameraAdapter.f2661j;
        ResolutionsMerger resolutionsMerger = virtualCameraAdapter.l;
        List listK = resolutionsMerger.f2649f.k(34);
        HashSet<UseCaseConfig> hashSet2 = resolutionsMerger.d;
        for (UseCaseConfig useCaseConfig2 : hashSet2) {
            if (!useCaseConfig2.p() && (useCaseConfig2 instanceof ImageOutputConfig)) {
                ((ImageOutputConfig) useCaseConfig2).k();
            }
        }
        UseCaseConfig useCaseConfig3 = null;
        List list = (List) mutableConfigA.f(ImageOutputConfig.r, null);
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    listK = new ArrayList();
                    break;
                }
                Pair pair = (Pair) it.next();
                if (((Integer) pair.first).equals(34)) {
                    listK = Arrays.asList((Size[]) pair.second);
                    break;
                }
            }
        }
        Rational rational = resolutionsMerger.f2647c;
        ArrayList arrayList = new ArrayList();
        HashSet<Size> hashSet3 = new HashSet();
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            hashSet3.addAll(resolutionsMerger.c((UseCaseConfig) it2.next()));
        }
        for (Size size : hashSet3) {
            Rational rational2 = AspectRatioUtil.f2380a;
            if (!AspectRatioUtil.a(size, rational, SizeUtil.f2517c)) {
                arrayList.addAll(resolutionsMerger.g(resolutionsMerger.f2646b, listK, false));
                break;
            }
        }
        int size2 = arrayList.size();
        if (!hashSet2.isEmpty()) {
            Iterator it3 = hashSet2.iterator();
            loop9: while (true) {
                if (!it3.hasNext()) {
                    useCaseConfig = useCaseConfig3;
                    size2 = 0;
                    break;
                }
                boolean z = false;
                boolean z2 = false;
                for (Size size3 : resolutionsMerger.c((UseCaseConfig) it3.next())) {
                    Rational rational3 = AspectRatioUtil.f2380a;
                    useCaseConfig = useCaseConfig3;
                    boolean zA = AspectRatioUtil.a(size3, rational, SizeUtil.f2517c);
                    if (zA) {
                        z = true;
                    }
                    if (z2 && zA) {
                        break loop9;
                    }
                    if (!zA) {
                        z2 = true;
                    }
                    useCaseConfig3 = useCaseConfig;
                }
                useCaseConfig = useCaseConfig3;
                if (!z) {
                    break;
                }
                useCaseConfig3 = useCaseConfig;
            }
        } else {
            useCaseConfig = null;
        }
        arrayList.addAll(size2, resolutionsMerger.g(rational, listK, false));
        arrayList.addAll(resolutionsMerger.f(listK, false));
        if (arrayList.isEmpty()) {
            Logger.c(5, "ResolutionsMerger");
            arrayList.addAll(resolutionsMerger.f(listK, true));
        }
        arrayList.toString();
        Logger.c(3, "ResolutionsMerger");
        mutableConfigA.o(ImageOutputConfig.t, arrayList);
        Config.Option option = UseCaseConfig.y;
        Iterator it4 = hashSet.iterator();
        int iMax = 0;
        while (it4.hasNext()) {
            iMax = Math.max(iMax, ((UseCaseConfig) it4.next()).M());
        }
        mutableConfigA.o(option, Integer.valueOf(iMax));
        ArrayList arrayList2 = new ArrayList();
        Iterator it5 = hashSet.iterator();
        while (it5.hasNext()) {
            arrayList2.add(((UseCaseConfig) it5.next()).I());
        }
        if (arrayList2.isEmpty()) {
            dynamicRange = useCaseConfig;
            break;
        }
        DynamicRange dynamicRange2 = (DynamicRange) arrayList2.get(0);
        Integer numValueOf = Integer.valueOf(dynamicRange2.f1918a);
        int i2 = 1;
        ?? ValueOf = Integer.valueOf(dynamicRange2.f1919b);
        ?? r8 = numValueOf;
        while (true) {
            if (i2 >= arrayList2.size()) {
                dynamicRange = new DynamicRange(r8.intValue(), ValueOf.intValue());
                break;
            }
            DynamicRange dynamicRange3 = (DynamicRange) arrayList2.get(i2);
            Integer numValueOf2 = Integer.valueOf(dynamicRange3.f1918a);
            if (r8.equals(0)) {
                r7 = r8;
                r7 = numValueOf2;
            } else if (!numValueOf2.equals(0)) {
                if (!r8.equals(2) || numValueOf2.equals(1)) {
                    r7 = r8;
                    r7 = r8;
                    if (!numValueOf2.equals(2) || r8.equals(1)) {
                        r7 = r8;
                        boolean zEquals = r8.equals(numValueOf2);
                        r7 = r8;
                        if (!zEquals) {
                            r7 = useCaseConfig;
                        }
                    }
                } else {
                    r7 = r8;
                    r7 = numValueOf2;
                }
            }
            r7 = r8;
            r7 = r8;
            Integer numValueOf3 = Integer.valueOf(dynamicRange3.f1919b);
            if (ValueOf.equals(0)) {
                r6 = numValueOf3;
            } else if (!numValueOf3.equals(0) && !ValueOf.equals(numValueOf3)) {
                r6 = ValueOf;
                r6 = ValueOf;
                r6 = useCaseConfig;
            }
            if (r7 == 0 || r6 == 0) {
                dynamicRange = useCaseConfig;
                break;
            }
            i2++;
            ValueOf = r6;
            r8 = r7;
        }
        if (dynamicRange == null) {
            md.n("Failed to merge child dynamic ranges, can not find a dynamic range that satisfies all children.");
            return useCaseConfig;
        }
        mutableConfigA.o(ImageInputConfig.f2305j, dynamicRange);
        Config.Option option2 = UseCaseConfig.A;
        Range rangeExtend = StreamSpec.f2348a;
        Iterator it6 = hashSet.iterator();
        while (it6.hasNext()) {
            Range rangeY = ((UseCaseConfig) it6.next()).y(rangeExtend);
            Objects.requireNonNull(rangeY);
            if (StreamSpec.f2348a.equals(rangeExtend)) {
                rangeExtend = rangeY;
            } else {
                try {
                    rangeExtend = rangeExtend.intersect(rangeY);
                } catch (IllegalArgumentException unused) {
                    Objects.toString(rangeExtend);
                    rangeY.toString();
                    Logger.c(3, "VirtualCameraAdapter");
                    rangeExtend = rangeExtend.extend(rangeY);
                }
            }
        }
        mutableConfigA.o(option2, rangeExtend);
        Iterator it7 = virtualCameraAdapter.f2655b.iterator();
        while (it7.hasNext()) {
            UseCaseConfig useCaseConfig4 = (UseCaseConfig) virtualCameraAdapter.f2662k.get((UseCase) it7.next());
            Objects.requireNonNull(useCaseConfig4);
            if (useCaseConfig4.w() != 0) {
                mutableConfigA.o(UseCaseConfig.G, Integer.valueOf(useCaseConfig4.w()));
            }
            if (useCaseConfig4.B() != 0) {
                mutableConfigA.o(UseCaseConfig.F, Integer.valueOf(useCaseConfig4.B()));
            }
        }
        return builder.d();
    }

    @Override // androidx.camera.core.UseCase
    public final void v() {
        this.f1990a = true;
        Iterator it = this.r.f2655b.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).v();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void w() {
        this.f1990a = false;
        Iterator it = this.r.f2655b.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).w();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec x(Config config) {
        this.A.e(config);
        Object[] objArr = {this.A.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        StreamSpec.Builder builderI = this.f1996i.i();
        builderI.d(config);
        return builderI.a();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec y(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Objects.toString(streamSpec);
        Objects.toString(streamSpec2);
        Logger.c(3, "StreamSharing");
        D(F(e(), i() == null ? null : i().k().b(), this.f1995h, streamSpec, streamSpec2));
        p();
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void z() {
        E();
        VirtualCameraAdapter virtualCameraAdapter = this.r;
        for (UseCase useCase : virtualCameraAdapter.f2655b) {
            VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter.d.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.C(virtualCamera);
        }
    }
}
