package androidx.camera.core.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.ViewPort;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.AdapterCameraControl;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AdapterCameraInternal;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.compat.workaround.StreamSharingForceEnabler;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import defpackage.r81;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class CameraUseCaseAdapter implements Camera {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdapterCameraInternal f2472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdapterCameraInternal f2473c;
    public final UseCaseConfigFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraIdentifier f2474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f2475f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CameraCoordinator f2476h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ViewPort f2477i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f2478j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Range f2479k;
    public final CameraConfig l;
    public final Object m;
    public boolean n;
    public Config o;
    public UseCase p;
    public StreamSharing q;
    public final CompositionSettings r;
    public final CompositionSettings s;
    public final StreamSharingForceEnabler t;
    public final StreamSpecsCalculator u;

    public static class ConfigPair {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public UseCaseConfig f2480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public UseCaseConfig f2481b;
    }

    public CameraUseCaseAdapter(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, CameraCoordinator cameraCoordinator, StreamSpecsCalculator streamSpecsCalculator, UseCaseConfigFactory useCaseConfigFactory) {
        this.f2475f = new ArrayList();
        this.g = new ArrayList();
        this.f2478j = Collections.EMPTY_LIST;
        this.f2479k = StreamSpec.f2348a;
        this.m = new Object();
        this.n = true;
        this.o = null;
        this.t = new StreamSharingForceEnabler();
        this.l = adapterCameraInfo.d;
        this.f2472b = new AdapterCameraInternal(cameraInternal, adapterCameraInfo);
        if (cameraInternal2 == null || adapterCameraInfo2 == null) {
            this.f2473c = null;
        } else {
            this.f2473c = new AdapterCameraInternal(cameraInternal2, adapterCameraInfo2);
        }
        this.r = compositionSettings;
        this.s = compositionSettings2;
        this.f2476h = cameraCoordinator;
        this.d = useCaseConfigFactory;
        CameraIdentifier.f1888c.getClass();
        this.f2474e = CameraIdentifier.Companion.b(adapterCameraInfo, adapterCameraInfo2);
        this.u = streamSpecsCalculator;
    }

    public static boolean A(LinkedHashSet linkedHashSet) {
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase instanceof ImageCapture) {
                UseCaseConfig useCaseConfig = useCase.f1995h;
                Config.Option option = ImageCaptureConfig.R;
                if (useCaseConfig.b(option)) {
                    Integer num = (Integer) useCaseConfig.a(option);
                    num.getClass();
                    if (num.intValue() == 2) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public static boolean B(AbstractCollection abstractCollection) {
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            if (C((UseCase) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean C(UseCase useCase) {
        if (useCase != null) {
            if (useCase.f1995h.b(UseCaseConfig.E)) {
                return useCase.f1995h.S() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            }
            useCase.toString();
        }
        return false;
    }

    public static void E(HashMap map) {
        HashSet hashSet;
        for (Map.Entry entry : map.entrySet()) {
            UseCase useCase = (UseCase) entry.getKey();
            Set set = (Set) entry.getValue();
            if (set != null) {
                useCase.getClass();
                hashSet = new HashSet(set);
            } else {
                hashSet = null;
            }
            useCase.g = hashSet;
        }
    }

    public static ArrayList F(List list, Collection collection) {
        ArrayList arrayList = new ArrayList(list);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).getClass();
            Iterator it2 = list.iterator();
            if (it2.hasNext()) {
                it2.next().getClass();
                r81.h();
                return null;
            }
        }
        return arrayList;
    }

    public static HashMap m(LinkedHashSet linkedHashSet, ResolvedFeatureGroup resolvedFeatureGroup) {
        HashMap map = new HashMap();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            map.put(useCase, useCase.g);
            HashSet hashSet = null;
            Set set = resolvedFeatureGroup != null ? resolvedFeatureGroup.f2024a : null;
            if (set != null) {
                hashSet = new HashSet(set);
            }
            useCase.g = hashSet;
        }
        return map;
    }

    public static Matrix t(Rect rect, Size size) {
        Preconditions.b(rect.width() > 0 && rect.height() > 0, "Cannot compute viewport crop rects zero sized sensor rect.");
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, size.getWidth(), size.getHeight()), rectF, Matrix.ScaleToFit.CENTER);
        matrix.invert(matrix);
        return matrix;
    }

    public static HashMap w(ArrayList arrayList, UseCaseConfigFactory useCaseConfigFactory, UseCaseConfigFactory useCaseConfigFactory2, Range range) {
        UseCaseConfig useCaseConfigF;
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase instanceof StreamSharing) {
                StreamSharing streamSharing = (StreamSharing) useCase;
                PreviewConfig previewConfig = new PreviewConfig(OptionsBundle.c0(new Preview.Builder().f1947a));
                ImageOutputConfig.u(previewConfig);
                Preview preview = new Preview(previewConfig);
                preview.r = Preview.y;
                UseCaseConfig useCaseConfigF2 = preview.f(false, useCaseConfigFactory);
                if (useCaseConfigF2 == null) {
                    useCaseConfigF = null;
                } else {
                    MutableOptionsBundle mutableOptionsBundleE0 = MutableOptionsBundle.e0(useCaseConfigF2);
                    mutableOptionsBundleE0.M.remove(TargetConfig.L);
                    useCaseConfigF = streamSharing.m(mutableOptionsBundleE0).d();
                }
            } else {
                useCaseConfigF = useCase.f(false, useCaseConfigFactory);
            }
            UseCaseConfig useCaseConfigF3 = useCase.f(true, useCaseConfigFactory2);
            MutableOptionsBundle mutableOptionsBundleE1 = useCaseConfigF3 != null ? MutableOptionsBundle.e0(useCaseConfigF3) : MutableOptionsBundle.d0();
            mutableOptionsBundleE1.o(UseCaseConfig.z, 0);
            if (!StreamSpec.f2348a.equals(range)) {
                mutableOptionsBundleE1.f0(UseCaseConfig.A, Config.OptionPriority.HIGH_PRIORITY_REQUIRED, range);
                mutableOptionsBundleE1.o(UseCaseConfig.B, Boolean.TRUE);
            }
            UseCaseConfig useCaseConfigD = useCase.m(mutableOptionsBundleE1).d();
            ConfigPair configPair = new ConfigPair();
            configPair.f2480a = useCaseConfigF;
            configPair.f2481b = useCaseConfigD;
            map.put(useCase, configPair);
        }
        return map;
    }

    public final void D(ArrayList arrayList) {
        synchronized (this.m) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((UseCase) it.next()).g = null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.f2475f);
            linkedHashSet.removeAll(arrayList);
            e(s(linkedHashSet, this.f2473c != null));
        }
    }

    @Override // androidx.camera.core.Camera
    public final CameraControl a() {
        return this.f2472b.d;
    }

    @Override // androidx.camera.core.Camera
    public final CameraInfo b() {
        return this.f2472b.f2160c;
    }

    public final void d(Collection collection, ResolvedFeatureGroup resolvedFeatureGroup) {
        Objects.toString(collection);
        Objects.toString(resolvedFeatureGroup);
        Logger.c(3, "CameraUseCaseAdapter");
        synchronized (this.m) {
            try {
                AdapterCameraInternal adapterCameraInternal = this.f2472b;
                CameraConfig cameraConfig = this.l;
                adapterCameraInternal.n(cameraConfig);
                AdapterCameraInternal adapterCameraInternal2 = this.f2473c;
                if (adapterCameraInternal2 != null) {
                    adapterCameraInternal2.n(cameraConfig);
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(this.f2475f);
                linkedHashSet.addAll(collection);
                HashMap mapM = m(linkedHashSet, resolvedFeatureGroup);
                try {
                    e(s(linkedHashSet, this.f2473c != null));
                } catch (IllegalArgumentException e2) {
                    E(mapM);
                    throw new CameraException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(CalculatedUseCaseInfo calculatedUseCaseInfo) {
        Map map = calculatedUseCaseInfo.f2469i.f2486a;
        Collection<UseCase> collection = calculatedUseCaseInfo.f2464b;
        synchronized (this.m) {
            try {
                if (this.f2477i != null && !collection.isEmpty()) {
                    boolean z = this.f2472b.f2160c.f2302a.g() == 0;
                    Rect rectF = this.f2472b.f2160c.f2302a.f();
                    ViewPort viewPort = this.f2477i;
                    Rational rational = viewPort.f2006b;
                    int iT = this.f2472b.f2160c.f2302a.t(viewPort.f2007c);
                    ViewPort viewPort2 = this.f2477i;
                    HashMap mapA = ViewPorts.a(rectF, z, rational, iT, viewPort2.f2005a, viewPort2.d, map);
                    for (UseCase useCase : collection) {
                        Rect rect = (Rect) mapA.get(useCase);
                        rect.getClass();
                        useCase.B(rect);
                    }
                }
                for (UseCase useCase2 : collection) {
                    Rect rectF2 = this.f2472b.f2160c.f2302a.f();
                    StreamSpec streamSpec = (StreamSpec) map.get(useCase2);
                    streamSpec.getClass();
                    Matrix matrixT = t(rectF2, streamSpec.f());
                    useCase2.getClass();
                    useCase2.l = new Matrix(matrixT);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        List list = this.f2478j;
        Collection<?> collection2 = calculatedUseCaseInfo.f2464b;
        Collection collection3 = calculatedUseCaseInfo.f2463a;
        ArrayList arrayListF = F(list, collection2);
        ArrayList arrayList = new ArrayList(collection3);
        arrayList.removeAll(collection2);
        ArrayList arrayListF2 = F(arrayListF, arrayList);
        if (!arrayListF2.isEmpty()) {
            arrayListF2.toString();
            Logger.c(5, "CameraUseCaseAdapter");
        }
        Iterator it = calculatedUseCaseInfo.f2466e.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).C(this.f2472b);
        }
        this.f2472b.j(calculatedUseCaseInfo.f2466e);
        if (this.f2473c != null) {
            for (UseCase useCase3 : calculatedUseCaseInfo.f2466e) {
                AdapterCameraInternal adapterCameraInternal = this.f2473c;
                Objects.requireNonNull(adapterCameraInternal);
                useCase3.C(adapterCameraInternal);
            }
            AdapterCameraInternal adapterCameraInternal2 = this.f2473c;
            Objects.requireNonNull(adapterCameraInternal2);
            adapterCameraInternal2.j(calculatedUseCaseInfo.f2466e);
        }
        if (calculatedUseCaseInfo.f2466e.isEmpty()) {
            for (UseCase useCase4 : calculatedUseCaseInfo.d) {
                Map map2 = calculatedUseCaseInfo.f2469i.f2486a;
                if (map2.containsKey(useCase4)) {
                    StreamSpec streamSpec2 = (StreamSpec) map2.get(useCase4);
                    Objects.requireNonNull(streamSpec2);
                    Config configD = streamSpec2.d();
                    if (configD != null) {
                        SessionConfig sessionConfig = useCase4.o;
                        Config configD2 = streamSpec2.d();
                        OptionsBundle optionsBundle = sessionConfig.g.f2269b;
                        Objects.requireNonNull(configD2);
                        if (configD2.d().size() == sessionConfig.g.f2269b.d().size()) {
                            Iterator it2 = configD2.d().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    Config.Option option = (Config.Option) it2.next();
                                    if (!optionsBundle.M.containsKey(option) || !Objects.equals(optionsBundle.a(option), configD2.a(option))) {
                                    }
                                }
                            }
                        }
                        useCase4.f1996i = useCase4.x(configD);
                        if (this.n) {
                            this.f2472b.e(useCase4);
                            AdapterCameraInternal adapterCameraInternal3 = this.f2473c;
                            if (adapterCameraInternal3 != null) {
                                adapterCameraInternal3.e(useCase4);
                            }
                        }
                    }
                }
            }
        }
        for (UseCase useCase5 : calculatedUseCaseInfo.f2465c) {
            ConfigPair configPair = (ConfigPair) calculatedUseCaseInfo.f2468h.get(useCase5);
            Objects.requireNonNull(configPair);
            AdapterCameraInternal adapterCameraInternal4 = this.f2473c;
            AdapterCameraInternal adapterCameraInternal5 = this.f2472b;
            UseCaseConfig useCaseConfig = configPair.f2480a;
            if (adapterCameraInternal4 != null) {
                useCase5.b(adapterCameraInternal5, adapterCameraInternal4, useCaseConfig, configPair.f2481b);
                StreamSpec streamSpec3 = (StreamSpec) calculatedUseCaseInfo.f2469i.f2486a.get(useCase5);
                streamSpec3.getClass();
                StreamSpecQueryResult streamSpecQueryResult = calculatedUseCaseInfo.f2470j;
                streamSpecQueryResult.getClass();
                useCase5.f1996i = useCase5.y(streamSpec3, (StreamSpec) streamSpecQueryResult.f2486a.get(useCase5));
            } else {
                useCase5.b(adapterCameraInternal5, null, useCaseConfig, configPair.f2481b);
                StreamSpec streamSpec4 = (StreamSpec) calculatedUseCaseInfo.f2469i.f2486a.get(useCase5);
                streamSpec4.getClass();
                useCase5.f1996i = useCase5.y(streamSpec4, null);
            }
        }
        if (this.n) {
            this.f2472b.i(calculatedUseCaseInfo.f2465c);
            AdapterCameraInternal adapterCameraInternal6 = this.f2473c;
            if (adapterCameraInternal6 != null) {
                adapterCameraInternal6.i(calculatedUseCaseInfo.f2465c);
            }
        }
        Iterator it3 = calculatedUseCaseInfo.f2465c.iterator();
        while (it3.hasNext()) {
            ((UseCase) it3.next()).r();
        }
        this.f2475f.clear();
        this.f2475f.addAll(calculatedUseCaseInfo.f2463a);
        this.g.clear();
        this.g.addAll(calculatedUseCaseInfo.f2464b);
        this.p = calculatedUseCaseInfo.g;
        this.q = calculatedUseCaseInfo.f2467f;
    }

    public final void r() {
        synchronized (this.m) {
            try {
                if (!this.n) {
                    if (!this.g.isEmpty()) {
                        this.f2472b.n(this.l);
                        AdapterCameraInternal adapterCameraInternal = this.f2473c;
                        if (adapterCameraInternal != null) {
                            adapterCameraInternal.n(this.l);
                        }
                    }
                    this.f2472b.i(this.g);
                    AdapterCameraInternal adapterCameraInternal2 = this.f2473c;
                    if (adapterCameraInternal2 != null) {
                        adapterCameraInternal2.i(this.g);
                    }
                    synchronized (this.m) {
                        try {
                            Config config = this.o;
                            if (config != null) {
                                this.f2472b.d.g(config);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    Iterator it = this.g.iterator();
                    while (it.hasNext()) {
                        ((UseCase) it.next()).r();
                    }
                    this.n = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:210:0x030a  */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x017b, code lost:
    
        if (r7 != false) goto L109;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.internal.CalculatedUseCaseInfo s(java.util.LinkedHashSet r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.internal.CameraUseCaseAdapter.s(java.util.LinkedHashSet, boolean):androidx.camera.core.internal.CalculatedUseCaseInfo");
    }

    public final void u() {
        synchronized (this.m) {
            try {
                if (this.n) {
                    this.f2472b.j(new ArrayList(this.g));
                    AdapterCameraInternal adapterCameraInternal = this.f2473c;
                    if (adapterCameraInternal != null) {
                        adapterCameraInternal.j(new ArrayList(this.g));
                    }
                    synchronized (this.m) {
                        AdapterCameraControl adapterCameraControl = this.f2472b.d;
                        this.o = adapterCameraControl.f2301b.e();
                        adapterCameraControl.l();
                    }
                    this.n = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int v() {
        synchronized (this.m) {
            try {
                return this.f2476h.c() == 2 ? 1 : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HashSet x(LinkedHashSet linkedHashSet, boolean z) {
        int i2;
        HashSet hashSet = new HashSet();
        synchronized (this.m) {
            Iterator it = this.f2478j.iterator();
            if (it.hasNext()) {
                if (it.next() == null) {
                    throw null;
                }
                throw new ClassCastException();
            }
            i2 = z ? 3 : 0;
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            UseCase useCase = (UseCase) it2.next();
            Preconditions.b(!(useCase instanceof StreamSharing), "Only support one level of sharing for now.");
            Iterator it3 = useCase.k().iterator();
            while (it3.hasNext()) {
                int iIntValue = ((Integer) it3.next()).intValue();
                if ((i2 & iIntValue) == iIntValue) {
                    hashSet.add(useCase);
                    break;
                }
            }
        }
        return hashSet;
    }

    public final List y() {
        ArrayList arrayList;
        synchronized (this.m) {
            arrayList = new ArrayList(this.f2475f);
        }
        return arrayList;
    }

    public final boolean z() {
        boolean z;
        synchronized (this.m) {
            z = this.l.x() != null;
        }
        return z;
    }

    public static final class CameraException extends Exception {
        public CameraException() {
        }

        public CameraException(String str) {
            super(str);
        }

        public CameraException(Throwable th) {
            super(th);
        }
    }

    public CameraUseCaseAdapter(CameraInternal cameraInternal, CameraCoordinator cameraCoordinator, StreamSpecsCalculator streamSpecsCalculator, UseCaseConfigFactory useCaseConfigFactory) {
        AdapterCameraInfo adapterCameraInfo = new AdapterCameraInfo(cameraInternal.k(), CameraConfigs.f2229a);
        CompositionSettings compositionSettings = CompositionSettings.f1909c;
        this(cameraInternal, null, adapterCameraInfo, null, compositionSettings, compositionSettings, cameraCoordinator, streamSpecsCalculator, useCaseConfigFactory);
    }
}
