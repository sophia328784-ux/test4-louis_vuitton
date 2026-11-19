package androidx.camera.core.internal;

import android.graphics.Rect;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.streamsharing.StreamSharing;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "Landroidx/camera/core/impl/UseCaseConfigFactory;", "useCaseConfigFactory", "Landroidx/camera/core/impl/CameraDeviceSurfaceManager;", "cameraDeviceSurfaceManager", "<init>", "(Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StreamSpecsCalculatorImpl implements StreamSpecsCalculator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UseCaseConfigFactory f2489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CameraDeviceSurfaceManager f2490c;

    public StreamSpecsCalculatorImpl(UseCaseConfigFactory useCaseConfigFactory, CameraDeviceSurfaceManager cameraDeviceSurfaceManager) {
        useCaseConfigFactory.getClass();
        this.f2489b = useCaseConfigFactory;
        this.f2490c = cameraDeviceSurfaceManager;
    }

    @Override // androidx.camera.core.internal.StreamSpecsCalculator
    public final StreamSpecQueryResult a(int i2, CameraInfoInternal cameraInfoInternal, ArrayList arrayList, ArrayList arrayList2, CameraConfig cameraConfig, Range range, boolean z) {
        int i3;
        Rect rectF;
        cameraInfoInternal.getClass();
        cameraConfig.getClass();
        range.getClass();
        ArrayList arrayList3 = new ArrayList();
        String strB = cameraInfoInternal.b();
        strB.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            StreamSpec streamSpec = useCase.f1996i;
            if (streamSpec == null) {
                md.n("Attached stream spec cannot be null for already attached use cases.");
                return null;
            }
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.f2490c;
            if (cameraDeviceSurfaceManager == null) {
                md.k("Required value was null.");
                return null;
            }
            int iM = useCase.f1995h.m();
            StreamSpec streamSpec2 = useCase.f1996i;
            Size sizeF = streamSpec2 != null ? streamSpec2.f() : null;
            if (sizeF == null) {
                md.n("Attached surface resolution cannot be null for already attached use cases.");
                return null;
            }
            SurfaceConfig surfaceConfigA = cameraDeviceSurfaceManager.a(i2, strB, iM, sizeF, useCase.f1995h.R());
            int iM2 = useCase.f1995h.m();
            StreamSpec streamSpec3 = useCase.f1996i;
            Size sizeF2 = streamSpec3 != null ? streamSpec3.f() : null;
            sizeF2.getClass();
            DynamicRange dynamicRangeB = streamSpec.b();
            ArrayList arrayListI = StreamSharing.I(useCase);
            Config configD = streamSpec.d();
            int iT = useCase.f1995h.T();
            Range rangeY = useCase.f1995h.y(StreamSpec.f2348a);
            if (rangeY == null) {
                md.n("Required value was null.");
                return null;
            }
            AttachedSurfaceInfo attachedSurfaceInfoA = AttachedSurfaceInfo.a(surfaceConfigA, iM2, sizeF2, dynamicRangeB, arrayListI, configD, iT, rangeY, useCase.f1995h.C());
            arrayList3.add(attachedSurfaceInfoA);
            linkedHashMap2.put(attachedSurfaceInfoA, useCase);
            linkedHashMap.put(useCase, streamSpec);
        }
        Pair pair = new Pair(linkedHashMap, linkedHashMap2);
        Object obj = pair.second;
        obj.getClass();
        Map map = (Map) obj;
        HashMap mapW = CameraUseCaseAdapter.w(arrayList, cameraConfig.i(), this.f2489b, range);
        String strB2 = cameraInfoInternal.b();
        strB2.getClass();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        if (arrayList.isEmpty()) {
            i3 = Integer.MAX_VALUE;
        } else {
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            try {
                rectF = cameraInfoInternal.f();
            } catch (NullPointerException unused) {
                rectF = null;
            }
            SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter(cameraInfoInternal, rectF != null ? TransformUtils.g(rectF) : null);
            Iterator it2 = arrayList.iterator();
            boolean z2 = false;
            while (it2.hasNext()) {
                UseCase useCase2 = (UseCase) it2.next();
                Object obj2 = mapW.get(useCase2);
                if (obj2 == null) {
                    md.n("Required value was null.");
                    return null;
                }
                CameraUseCaseAdapter.ConfigPair configPair = (CameraUseCaseAdapter.ConfigPair) obj2;
                UseCaseConfig useCaseConfigO = useCase2.o(cameraInfoInternal, configPair.f2480a, configPair.f2481b);
                useCaseConfigO.getClass();
                linkedHashMap4.put(useCaseConfigO, useCase2);
                linkedHashMap5.put(useCaseConfigO, supportedOutputSizesSorter.b(useCaseConfigO));
                if (useCaseConfigO.B() == 2) {
                    z2 = true;
                }
            }
            CameraDeviceSurfaceManager cameraDeviceSurfaceManager2 = this.f2490c;
            if (cameraDeviceSurfaceManager2 == null) {
                md.k("Required value was null.");
                return null;
            }
            SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResultE = cameraDeviceSurfaceManager2.e(i2, strB2, new ArrayList(map.keySet()), linkedHashMap5, z2, CameraUseCaseAdapter.B(arrayList), z);
            Map map2 = surfaceStreamSpecQueryResultE.f2358a;
            Map map3 = surfaceStreamSpecQueryResultE.f2359b;
            i3 = surfaceStreamSpecQueryResultE.f2360c;
            for (Map.Entry entry : linkedHashMap4.entrySet()) {
                Object value = entry.getValue();
                Object obj3 = map2.get(entry.getKey());
                if (obj3 == null) {
                    md.n("Required value was null.");
                    return null;
                }
                linkedHashMap3.put(value, obj3);
            }
            for (Map.Entry entry2 : map3.entrySet()) {
                if (map.containsKey(entry2.getKey())) {
                    Object obj4 = map.get(entry2.getKey());
                    if (obj4 == null) {
                        md.n("Required value was null.");
                        return null;
                    }
                    linkedHashMap3.put(obj4, entry2.getValue());
                }
            }
        }
        StreamSpecQueryResult streamSpecQueryResult = new StreamSpecQueryResult(linkedHashMap3, i3);
        Object obj5 = pair.first;
        obj5.getClass();
        return new StreamSpecQueryResult(MapsKt.k((Map) obj5, streamSpecQueryResult.f2486a), streamSpecQueryResult.f2487b);
    }

    public /* synthetic */ StreamSpecsCalculatorImpl(UseCaseConfigFactory useCaseConfigFactory, CameraDeviceSurfaceManager cameraDeviceSurfaceManager, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(useCaseConfigFactory, (i2 & 2) != 0 ? null : cameraDeviceSurfaceManager);
    }
}
