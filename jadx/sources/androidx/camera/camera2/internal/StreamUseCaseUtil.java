package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/camera2/internal/StreamUseCaseUtil;", "", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class StreamUseCaseUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Config.Option f1617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MapBuilder f1618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MapBuilder f1619c;

    static {
        Class cls = Long.TYPE;
        cls.getClass();
        f1617a = Config.Option.a(cls, "camera2.streamSpec.streamUseCase");
        MapBuilder mapBuilder = new MapBuilder();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType2 = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
            UseCaseConfigFactory.CaptureType captureType3 = UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS;
            mapBuilder.put(4L, ArraysKt.Z(new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            mapBuilder.put(1L, ArraysKt.Z(new UseCaseConfigFactory.CaptureType[]{captureType, captureType2, captureType3}));
            mapBuilder.put(2L, SetsKt.h(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE));
            mapBuilder.put(3L, SetsKt.h(UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE));
        }
        f1618b = mapBuilder.c();
        MapBuilder mapBuilder2 = new MapBuilder();
        if (i2 >= 33) {
            UseCaseConfigFactory.CaptureType captureType4 = UseCaseConfigFactory.CaptureType.PREVIEW;
            UseCaseConfigFactory.CaptureType captureType5 = UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE;
            UseCaseConfigFactory.CaptureType captureType6 = UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            mapBuilder2.put(4L, ArraysKt.Z(new UseCaseConfigFactory.CaptureType[]{captureType4, captureType5, captureType6}));
            mapBuilder2.put(3L, ArraysKt.Z(new UseCaseConfigFactory.CaptureType[]{captureType4, captureType6}));
        }
        f1619c = mapBuilder2.c();
    }

    public static final boolean a(CameraCharacteristicsCompat cameraCharacteristicsCompat, List list) {
        long[] jArr;
        cameraCharacteristicsCompat.getClass();
        if (Build.VERSION.SDK_INT >= 33 && (jArr = (long[]) cameraCharacteristicsCompat.a(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES)) != null && jArr.length != 0) {
            HashSet hashSet = new HashSet();
            for (long j2 : jArr) {
                hashSet.add(Long.valueOf(j2));
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!hashSet.contains(Long.valueOf(((SurfaceConfig) it.next()).f2356c.getValue()))) {
                }
            }
            return true;
        }
        return false;
    }

    public static Camera2ImplConfig b(Config config, Long l) {
        Config.Option option = f1617a;
        if (config.b(option) && Intrinsics.c(config.a(option), l)) {
            return null;
        }
        MutableOptionsBundle mutableOptionsBundleE0 = MutableOptionsBundle.e0(config);
        mutableOptionsBundleE0.o(option, l);
        return new Camera2ImplConfig(mutableOptionsBundleE0);
    }

    public static boolean c(UseCaseConfigFactory.CaptureType captureType, long j2, List list) {
        if (Build.VERSION.SDK_INT < 33) {
            return false;
        }
        if (captureType != UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
            Long lValueOf = Long.valueOf(j2);
            MapBuilder mapBuilder = f1618b;
            if (!mapBuilder.containsKey(lValueOf)) {
                return false;
            }
            Object obj = mapBuilder.get(Long.valueOf(j2));
            obj.getClass();
            return ((Set) obj).contains(captureType);
        }
        Long lValueOf2 = Long.valueOf(j2);
        MapBuilder mapBuilder2 = f1619c;
        if (!mapBuilder2.containsKey(lValueOf2)) {
            return false;
        }
        Object obj2 = mapBuilder2.get(Long.valueOf(j2));
        obj2.getClass();
        Set set = (Set) obj2;
        if (list.size() != set.size()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!set.contains((UseCaseConfigFactory.CaptureType) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final boolean d(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        long[] jArr;
        cameraCharacteristicsCompat.getClass();
        return (Build.VERSION.SDK_INT < 33 || (jArr = (long[]) cameraCharacteristicsCompat.a(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES)) == null || jArr.length == 0) ? false : true;
    }

    public static boolean e(Config config, UseCaseConfigFactory.CaptureType captureType) {
        Object objF = config.f(UseCaseConfig.C, Boolean.FALSE);
        objF.getClass();
        if (((Boolean) objF).booleanValue()) {
            return false;
        }
        Config.Option option = ImageCaptureConfig.N;
        if (!config.b(option)) {
            return false;
        }
        Object objA = config.a(option);
        objA.getClass();
        return TemplateTypeUtil.a(captureType, ((Number) objA).intValue()) == 5;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x009d  */
    public static final boolean f(CameraCharacteristicsCompat cameraCharacteristicsCompat, ArrayList arrayList, HashMap map, HashMap map2) {
        boolean z;
        boolean z2;
        cameraCharacteristicsCompat.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            ArrayList<UseCaseConfig> arrayList2 = new ArrayList(map.keySet());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((AttachedSurfaceInfo) it.next()).e().getClass();
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object obj = map.get((UseCaseConfig) it2.next());
                obj.getClass();
                ((StreamSpec) obj).d().getClass();
            }
            long[] jArr = (long[]) cameraCharacteristicsCompat.a(CameraCharacteristics.SCALER_AVAILABLE_STREAM_USE_CASES);
            if (jArr != null && jArr.length != 0) {
                HashSet hashSet = new HashSet();
                for (long j2 : jArr) {
                    hashSet.add(Long.valueOf(j2));
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it3 = arrayList.iterator();
                if (it3.hasNext()) {
                    AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) it3.next();
                    Config configE = attachedSurfaceInfo.e();
                    configE.getClass();
                    Config.Option option = Camera2ImplConfig.O;
                    if (configE.b(option)) {
                        Config configE2 = attachedSurfaceInfo.e();
                        configE2.getClass();
                        Object objA = configE2.a(option);
                        objA.getClass();
                        if (((Number) objA).longValue() == 0) {
                            z = false;
                            z2 = true;
                        } else {
                            z2 = false;
                            z = true;
                        }
                    } else {
                        z = false;
                        z2 = true;
                    }
                } else {
                    z = false;
                    z2 = false;
                }
                for (UseCaseConfig useCaseConfig : arrayList2) {
                    Config.Option option2 = Camera2ImplConfig.O;
                    if (useCaseConfig.b(option2)) {
                        Object objA2 = useCaseConfig.a(option2);
                        objA2.getClass();
                        long jLongValue = ((Number) objA2).longValue();
                        if (jLongValue != 0) {
                            if (z2) {
                                md.n("Either all use cases must have non-default stream use case assigned or none should have it");
                                return false;
                            }
                            linkedHashSet.add(Long.valueOf(jLongValue));
                            z = true;
                        } else if (z) {
                            md.n("Either all use cases must have non-default stream use case assigned or none should have it");
                            return false;
                        }
                    } else if (z) {
                        md.n("Either all use cases must have non-default stream use case assigned or none should have it");
                        return false;
                    }
                    z2 = true;
                }
                if (!z2) {
                    Iterator it4 = linkedHashSet.iterator();
                    while (it4.hasNext()) {
                        if (!hashSet.contains(Long.valueOf(((Number) it4.next()).longValue()))) {
                        }
                    }
                    Iterator it5 = arrayList.iterator();
                    while (it5.hasNext()) {
                        AttachedSurfaceInfo attachedSurfaceInfo2 = (AttachedSurfaceInfo) it5.next();
                        Config configE3 = attachedSurfaceInfo2.e();
                        configE3.getClass();
                        Camera2ImplConfig camera2ImplConfigB = b(configE3, (Long) configE3.a(Camera2ImplConfig.O));
                        if (camera2ImplConfigB != null) {
                            map2.put(attachedSurfaceInfo2, attachedSurfaceInfo2.k(camera2ImplConfigB));
                        }
                    }
                    for (UseCaseConfig useCaseConfig2 : arrayList2) {
                        StreamSpec streamSpec = (StreamSpec) map.get(useCaseConfig2);
                        streamSpec.getClass();
                        Config configD = streamSpec.d();
                        configD.getClass();
                        Camera2ImplConfig camera2ImplConfigB2 = b(configD, (Long) configD.a(Camera2ImplConfig.O));
                        if (camera2ImplConfigB2 != null) {
                            StreamSpec.Builder builderI = streamSpec.i();
                            builderI.d(camera2ImplConfigB2);
                            map.put(useCaseConfig2, builderI.a());
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
