package androidx.camera.camera2.internal;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.AspectRatioLegacyApi21Quirk;
import androidx.camera.camera2.internal.compat.quirk.CameraQuirks;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.camera2.internal.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk;
import androidx.camera.camera2.internal.compat.quirk.Nexus4AndroidLTargetAspectRatioQuirk;
import androidx.camera.camera2.internal.compat.workaround.ExtraSupportedSurfaceCombinationsContainer;
import androidx.camera.camera2.internal.compat.workaround.ResolutionCorrector;
import androidx.camera.camera2.internal.compat.workaround.TargetAspectRatio;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import androidx.core.util.Preconditions;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.b21;
import defpackage.d21;
import defpackage.j4;
import defpackage.md;
import defpackage.p01;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.UnsafeLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class SupportedSurfaceCombination {
    public final DynamicRangeResolver B;
    public final HighSpeedResolver C;
    public final FeatureCombinationQuery D;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f1628k;
    public final CamcorderProfileHelper l;
    public final CameraCharacteristicsCompat m;
    public final ExtraSupportedSurfaceCombinationsContainer n;
    public final int o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final boolean v;
    public SurfaceSizeDefinition w;
    public final DisplayInfoManager y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1620a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f1621b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1622c = new ArrayList();
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f1623e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f1624f = new ArrayList();
    public final HashMap g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f1625h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f1626i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f1627j = new ArrayList();
    public final ArrayList x = new ArrayList();
    public final TargetAspectRatio z = new TargetAspectRatio();
    public final ResolutionCorrector A = new ResolutionCorrector();

    public static abstract class BestSizesAndMaxFpsForConfigs {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CheckingMethod {
        private static final /* synthetic */ CheckingMethod[] $VALUES;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT;
        public static final CheckingMethod WITH_FEATURE_COMBO;

        static {
            CheckingMethod checkingMethod = new CheckingMethod("WITHOUT_FEATURE_COMBO", 0);
            WITHOUT_FEATURE_COMBO = checkingMethod;
            CheckingMethod checkingMethod2 = new CheckingMethod("WITH_FEATURE_COMBO", 1);
            WITH_FEATURE_COMBO = checkingMethod2;
            CheckingMethod checkingMethod3 = new CheckingMethod("WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT", 2);
            WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT = checkingMethod3;
            $VALUES = new CheckingMethod[]{checkingMethod, checkingMethod2, checkingMethod3};
        }

        public static CheckingMethod valueOf(String str) {
            return (CheckingMethod) Enum.valueOf(CheckingMethod.class, str);
        }

        public static CheckingMethod[] values() {
            return (CheckingMethod[]) $VALUES.clone();
        }
    }

    public static abstract class FeatureSettings {
        public abstract int a();

        public abstract int b();

        public abstract Range c();

        public abstract boolean d();

        public abstract boolean e();

        public abstract boolean f();

        public abstract boolean g();

        public abstract boolean h();

        public abstract boolean i();

        public abstract boolean j();
    }

    public SupportedSurfaceCombination(Context context, String str, CameraManagerCompat cameraManagerCompat, CamcorderProfileHelper camcorderProfileHelper, FeatureCombinationQuery featureCombinationQuery) throws CameraUnavailableException {
        List listSingletonList;
        int[] iArr;
        boolean z;
        this.p = false;
        this.q = false;
        this.t = false;
        this.u = false;
        str.getClass();
        this.f1628k = str;
        camcorderProfileHelper.getClass();
        this.l = camcorderProfileHelper;
        this.n = new ExtraSupportedSurfaceCombinationsContainer();
        this.y = DisplayInfoManager.b(context);
        try {
            CameraCharacteristicsCompat cameraCharacteristicsCompatB = cameraManagerCompat.b(str);
            this.m = cameraCharacteristicsCompatB;
            Integer num = (Integer) cameraCharacteristicsCompatB.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            this.o = num != null ? num.intValue() : 2;
            int[] iArr2 = (int[]) cameraCharacteristicsCompatB.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
            if (iArr2 != null) {
                for (int i2 : iArr2) {
                    if (i2 == 3) {
                        this.p = true;
                    } else if (i2 == 6) {
                        this.q = true;
                    } else if (Build.VERSION.SDK_INT >= 31 && i2 == 16) {
                        this.t = true;
                    } else if (i2 == 1) {
                        this.u = true;
                    }
                }
            }
            DynamicRangeResolver dynamicRangeResolver = new DynamicRangeResolver(this.m);
            this.B = dynamicRangeResolver;
            this.C = new HighSpeedResolver(this.m);
            ArrayList arrayList = this.f1620a;
            int i3 = this.o;
            boolean z2 = this.p;
            boolean z3 = this.q;
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
            SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
            SurfaceCombination surfaceCombinationF = pq0.f(configType, configSize, surfaceCombination, arrayList3, surfaceCombination);
            SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG;
            SurfaceCombination surfaceCombinationF2 = pq0.f(configType2, configSize, surfaceCombinationF, arrayList3, surfaceCombinationF);
            SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
            SurfaceCombination surfaceCombinationF3 = pq0.f(configType3, configSize, surfaceCombinationF2, arrayList3, surfaceCombinationF2);
            SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
            pq0.w(configType, configSize2, surfaceCombinationF3, configType2, configSize);
            SurfaceCombination surfaceCombinationG = pq0.g(arrayList3, surfaceCombinationF3);
            pq0.w(configType3, configSize2, surfaceCombinationG, configType2, configSize);
            SurfaceCombination surfaceCombinationG2 = pq0.g(arrayList3, surfaceCombinationG);
            pq0.w(configType, configSize2, surfaceCombinationG2, configType, configSize2);
            SurfaceCombination surfaceCombinationG3 = pq0.g(arrayList3, surfaceCombinationG2);
            pq0.w(configType, configSize2, surfaceCombinationG3, configType3, configSize2);
            SurfaceCombination surfaceCombinationG4 = pq0.g(arrayList3, surfaceCombinationG3);
            pq0.w(configType, configSize2, surfaceCombinationG4, configType3, configSize2);
            surfaceCombinationG4.a(SurfaceConfig.a(configType2, configSize));
            arrayList3.add(surfaceCombinationG4);
            arrayList2.addAll(arrayList3);
            if (i3 == 0 || i3 == 4 || i3 == 1 || i3 == 3) {
                ArrayList arrayList4 = new ArrayList();
                SurfaceCombination surfaceCombination2 = new SurfaceCombination();
                surfaceCombination2.a(SurfaceConfig.a(configType, configSize2));
                SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
                SurfaceCombination surfaceCombinationF4 = pq0.f(configType, configSize3, surfaceCombination2, arrayList4, surfaceCombination2);
                pq0.w(configType, configSize2, surfaceCombinationF4, configType3, configSize3);
                SurfaceCombination surfaceCombinationG5 = pq0.g(arrayList4, surfaceCombinationF4);
                pq0.w(configType3, configSize2, surfaceCombinationG5, configType3, configSize3);
                SurfaceCombination surfaceCombinationG6 = pq0.g(arrayList4, surfaceCombinationG5);
                pq0.w(configType, configSize2, surfaceCombinationG6, configType, configSize3);
                SurfaceCombination surfaceCombinationF5 = pq0.f(configType2, configSize3, surfaceCombinationG6, arrayList4, surfaceCombinationG6);
                pq0.w(configType, configSize2, surfaceCombinationF5, configType3, configSize3);
                SurfaceCombination surfaceCombinationF6 = pq0.f(configType2, configSize3, surfaceCombinationF5, arrayList4, surfaceCombinationF5);
                pq0.w(configType3, configSize2, surfaceCombinationF6, configType3, configSize2);
                surfaceCombinationF6.a(SurfaceConfig.a(configType2, configSize));
                arrayList4.add(surfaceCombinationF6);
                arrayList2.addAll(arrayList4);
            }
            if (i3 == 1 || i3 == 3) {
                ArrayList arrayList5 = new ArrayList();
                SurfaceCombination surfaceCombination3 = new SurfaceCombination();
                pq0.w(configType, configSize2, surfaceCombination3, configType, configSize);
                SurfaceCombination surfaceCombinationG7 = pq0.g(arrayList5, surfaceCombination3);
                pq0.w(configType, configSize2, surfaceCombinationG7, configType3, configSize);
                SurfaceCombination surfaceCombinationG8 = pq0.g(arrayList5, surfaceCombinationG7);
                pq0.w(configType3, configSize2, surfaceCombinationG8, configType3, configSize);
                SurfaceCombination surfaceCombinationG9 = pq0.g(arrayList5, surfaceCombinationG8);
                pq0.w(configType, configSize2, surfaceCombinationG9, configType, configSize2);
                SurfaceCombination surfaceCombinationF7 = pq0.f(configType2, configSize, surfaceCombinationG9, arrayList5, surfaceCombinationG9);
                SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.VGA;
                pq0.w(configType3, configSize4, surfaceCombinationF7, configType, configSize2);
                SurfaceCombination surfaceCombinationF8 = pq0.f(configType3, configSize, surfaceCombinationF7, arrayList5, surfaceCombinationF7);
                pq0.w(configType3, configSize4, surfaceCombinationF8, configType3, configSize2);
                surfaceCombinationF8.a(SurfaceConfig.a(configType3, configSize));
                arrayList5.add(surfaceCombinationF8);
                arrayList2.addAll(arrayList5);
            }
            if (z2) {
                ArrayList arrayList6 = new ArrayList();
                SurfaceCombination surfaceCombination4 = new SurfaceCombination();
                SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.RAW;
                SurfaceCombination surfaceCombinationF9 = pq0.f(configType4, configSize, surfaceCombination4, arrayList6, surfaceCombination4);
                pq0.w(configType, configSize2, surfaceCombinationF9, configType4, configSize);
                SurfaceCombination surfaceCombinationG10 = pq0.g(arrayList6, surfaceCombinationF9);
                pq0.w(configType3, configSize2, surfaceCombinationG10, configType4, configSize);
                SurfaceCombination surfaceCombinationG11 = pq0.g(arrayList6, surfaceCombinationG10);
                pq0.w(configType, configSize2, surfaceCombinationG11, configType, configSize2);
                SurfaceCombination surfaceCombinationF10 = pq0.f(configType4, configSize, surfaceCombinationG11, arrayList6, surfaceCombinationG11);
                pq0.w(configType, configSize2, surfaceCombinationF10, configType3, configSize2);
                SurfaceCombination surfaceCombinationF11 = pq0.f(configType4, configSize, surfaceCombinationF10, arrayList6, surfaceCombinationF10);
                pq0.w(configType3, configSize2, surfaceCombinationF11, configType3, configSize2);
                SurfaceCombination surfaceCombinationF12 = pq0.f(configType4, configSize, surfaceCombinationF11, arrayList6, surfaceCombinationF11);
                pq0.w(configType, configSize2, surfaceCombinationF12, configType2, configSize);
                SurfaceCombination surfaceCombinationF13 = pq0.f(configType4, configSize, surfaceCombinationF12, arrayList6, surfaceCombinationF12);
                pq0.w(configType3, configSize2, surfaceCombinationF13, configType2, configSize);
                surfaceCombinationF13.a(SurfaceConfig.a(configType4, configSize));
                arrayList6.add(surfaceCombinationF13);
                arrayList2.addAll(arrayList6);
            }
            if (z3 && i3 == 0) {
                ArrayList arrayList7 = new ArrayList();
                SurfaceCombination surfaceCombination5 = new SurfaceCombination();
                pq0.w(configType, configSize2, surfaceCombination5, configType, configSize);
                SurfaceCombination surfaceCombinationG12 = pq0.g(arrayList7, surfaceCombination5);
                pq0.w(configType, configSize2, surfaceCombinationG12, configType3, configSize);
                SurfaceCombination surfaceCombinationG13 = pq0.g(arrayList7, surfaceCombinationG12);
                pq0.w(configType3, configSize2, surfaceCombinationG13, configType3, configSize);
                arrayList7.add(surfaceCombinationG13);
                arrayList2.addAll(arrayList7);
            }
            if (i3 == 3) {
                ArrayList arrayList8 = new ArrayList();
                SurfaceCombination surfaceCombination6 = new SurfaceCombination();
                surfaceCombination6.a(SurfaceConfig.a(configType, configSize2));
                SurfaceConfig.ConfigSize configSize5 = SurfaceConfig.ConfigSize.VGA;
                pq0.w(configType, configSize5, surfaceCombination6, configType3, configSize);
                SurfaceConfig.ConfigType configType5 = SurfaceConfig.ConfigType.RAW;
                SurfaceCombination surfaceCombinationF14 = pq0.f(configType5, configSize, surfaceCombination6, arrayList8, surfaceCombination6);
                pq0.w(configType, configSize2, surfaceCombinationF14, configType, configSize5);
                pq0.w(configType2, configSize, surfaceCombinationF14, configType5, configSize);
                arrayList8.add(surfaceCombinationF14);
                arrayList2.addAll(arrayList8);
            }
            arrayList.addAll(arrayList2);
            ExtraSupportedSurfaceCombinationsContainer extraSupportedSurfaceCombinationsContainer = this.n;
            String str2 = this.f1628k;
            if (extraSupportedSurfaceCombinationsContainer.f1765a == null) {
                listSingletonList = new ArrayList();
            } else {
                SurfaceCombination surfaceCombination7 = ExtraSupportedSurfaceCombinationsQuirk.f1734a;
                String str3 = Build.DEVICE;
                if ("heroqltevzw".equalsIgnoreCase(str3) || "heroqltetmo".equalsIgnoreCase(str3)) {
                    ArrayList arrayList9 = new ArrayList();
                    listSingletonList = arrayList9;
                    if (str2.equals("1")) {
                        arrayList9.add(ExtraSupportedSurfaceCombinationsQuirk.f1734a);
                        listSingletonList = arrayList9;
                    }
                } else {
                    listSingletonList = ((!Payload.SOURCE_GOOGLE.equalsIgnoreCase(Build.BRAND) ? false : ExtraSupportedSurfaceCombinationsQuirk.f1736c.contains(Build.MODEL.toUpperCase(Locale.US))) || ExtraSupportedSurfaceCombinationsQuirk.f()) ? Collections.singletonList(ExtraSupportedSurfaceCombinationsQuirk.f1735b) : Collections.EMPTY_LIST;
                }
            }
            arrayList.addAll(listSingletonList);
            if (this.t) {
                ArrayList arrayList10 = this.f1621b;
                ArrayList arrayList11 = new ArrayList();
                SurfaceCombination surfaceCombination8 = new SurfaceCombination();
                SurfaceConfig.ConfigSize configSize6 = SurfaceConfig.ConfigSize.ULTRA_MAXIMUM;
                pq0.w(configType3, configSize6, surfaceCombination8, configType, configSize2);
                SurfaceConfig.ConfigSize configSize7 = SurfaceConfig.ConfigSize.RECORD;
                SurfaceCombination surfaceCombinationF15 = pq0.f(configType, configSize7, surfaceCombination8, arrayList11, surfaceCombination8);
                pq0.w(configType2, configSize6, surfaceCombinationF15, configType, configSize2);
                SurfaceCombination surfaceCombinationF16 = pq0.f(configType, configSize7, surfaceCombinationF15, arrayList11, surfaceCombinationF15);
                SurfaceConfig.ConfigType configType6 = SurfaceConfig.ConfigType.RAW;
                pq0.w(configType6, configSize6, surfaceCombinationF16, configType, configSize2);
                SurfaceCombination surfaceCombinationF17 = pq0.f(configType, configSize7, surfaceCombinationF16, arrayList11, surfaceCombinationF16);
                pq0.w(configType3, configSize6, surfaceCombinationF17, configType, configSize2);
                SurfaceCombination surfaceCombinationF18 = pq0.f(configType2, configSize, surfaceCombinationF17, arrayList11, surfaceCombinationF17);
                pq0.w(configType2, configSize6, surfaceCombinationF18, configType, configSize2);
                SurfaceCombination surfaceCombinationF19 = pq0.f(configType2, configSize, surfaceCombinationF18, arrayList11, surfaceCombinationF18);
                pq0.w(configType6, configSize6, surfaceCombinationF19, configType, configSize2);
                SurfaceCombination surfaceCombinationF20 = pq0.f(configType2, configSize, surfaceCombinationF19, arrayList11, surfaceCombinationF19);
                pq0.w(configType3, configSize6, surfaceCombinationF20, configType, configSize2);
                SurfaceCombination surfaceCombinationF21 = pq0.f(configType3, configSize, surfaceCombinationF20, arrayList11, surfaceCombinationF20);
                pq0.w(configType2, configSize6, surfaceCombinationF21, configType, configSize2);
                SurfaceCombination surfaceCombinationF22 = pq0.f(configType3, configSize, surfaceCombinationF21, arrayList11, surfaceCombinationF21);
                pq0.w(configType6, configSize6, surfaceCombinationF22, configType, configSize2);
                SurfaceCombination surfaceCombinationF23 = pq0.f(configType3, configSize, surfaceCombinationF22, arrayList11, surfaceCombinationF22);
                pq0.w(configType3, configSize6, surfaceCombinationF23, configType, configSize2);
                SurfaceCombination surfaceCombinationF24 = pq0.f(configType6, configSize, surfaceCombinationF23, arrayList11, surfaceCombinationF23);
                pq0.w(configType2, configSize6, surfaceCombinationF24, configType, configSize2);
                SurfaceCombination surfaceCombinationF25 = pq0.f(configType6, configSize, surfaceCombinationF24, arrayList11, surfaceCombinationF24);
                pq0.w(configType6, configSize6, surfaceCombinationF25, configType, configSize2);
                surfaceCombinationF25.a(SurfaceConfig.a(configType6, configSize));
                arrayList11.add(surfaceCombinationF25);
                arrayList10.addAll(arrayList11);
            }
            boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent");
            this.r = zHasSystemFeature;
            if (zHasSystemFeature) {
                ArrayList arrayList12 = this.f1622c;
                ArrayList arrayList13 = new ArrayList();
                SurfaceCombination surfaceCombination9 = new SurfaceCombination();
                SurfaceConfig.ConfigSize configSize8 = SurfaceConfig.ConfigSize.S1440P_4_3;
                SurfaceCombination surfaceCombinationF26 = pq0.f(configType3, configSize8, surfaceCombination9, arrayList13, surfaceCombination9);
                SurfaceCombination surfaceCombinationF27 = pq0.f(configType, configSize8, surfaceCombinationF26, arrayList13, surfaceCombinationF26);
                SurfaceCombination surfaceCombinationF28 = pq0.f(configType2, configSize8, surfaceCombinationF27, arrayList13, surfaceCombinationF27);
                SurfaceConfig.ConfigSize configSize9 = SurfaceConfig.ConfigSize.S720P_16_9;
                pq0.w(configType3, configSize9, surfaceCombinationF28, configType2, configSize8);
                SurfaceCombination surfaceCombinationG14 = pq0.g(arrayList13, surfaceCombinationF28);
                pq0.w(configType, configSize9, surfaceCombinationG14, configType2, configSize8);
                SurfaceCombination surfaceCombinationG15 = pq0.g(arrayList13, surfaceCombinationG14);
                pq0.w(configType3, configSize9, surfaceCombinationG15, configType3, configSize8);
                SurfaceCombination surfaceCombinationG16 = pq0.g(arrayList13, surfaceCombinationG15);
                pq0.w(configType3, configSize9, surfaceCombinationG16, configType, configSize8);
                SurfaceCombination surfaceCombinationG17 = pq0.g(arrayList13, surfaceCombinationG16);
                pq0.w(configType, configSize9, surfaceCombinationG17, configType3, configSize8);
                SurfaceCombination surfaceCombinationG18 = pq0.g(arrayList13, surfaceCombinationG17);
                pq0.w(configType, configSize9, surfaceCombinationG18, configType, configSize8);
                arrayList13.add(surfaceCombinationG18);
                arrayList12.addAll(arrayList13);
            }
            if (dynamicRangeResolver.f1574c) {
                ArrayList arrayList14 = this.f1625h;
                ArrayList arrayList15 = new ArrayList();
                SurfaceCombination surfaceCombination10 = new SurfaceCombination();
                SurfaceCombination surfaceCombinationF29 = pq0.f(configType, configSize, surfaceCombination10, arrayList15, surfaceCombination10);
                SurfaceCombination surfaceCombinationF30 = pq0.f(configType3, configSize, surfaceCombinationF29, arrayList15, surfaceCombinationF29);
                pq0.w(configType, configSize2, surfaceCombinationF30, configType2, configSize);
                SurfaceCombination surfaceCombinationG19 = pq0.g(arrayList15, surfaceCombinationF30);
                pq0.w(configType, configSize2, surfaceCombinationG19, configType3, configSize);
                SurfaceCombination surfaceCombinationG20 = pq0.g(arrayList15, surfaceCombinationG19);
                pq0.w(configType3, configSize2, surfaceCombinationG20, configType3, configSize);
                SurfaceCombination surfaceCombinationG21 = pq0.g(arrayList15, surfaceCombinationG20);
                surfaceCombinationG21.a(SurfaceConfig.a(configType, configSize2));
                SurfaceConfig.ConfigSize configSize10 = SurfaceConfig.ConfigSize.RECORD;
                SurfaceCombination surfaceCombinationF31 = pq0.f(configType, configSize10, surfaceCombinationG21, arrayList15, surfaceCombinationG21);
                pq0.w(configType, configSize2, surfaceCombinationF31, configType, configSize10);
                SurfaceCombination surfaceCombinationF32 = pq0.f(configType3, configSize10, surfaceCombinationF31, arrayList15, surfaceCombinationF31);
                pq0.w(configType, configSize2, surfaceCombinationF32, configType, configSize10);
                surfaceCombinationF32.a(SurfaceConfig.a(configType2, configSize10));
                arrayList15.add(surfaceCombinationF32);
                arrayList14.addAll(arrayList15);
            }
            boolean zD = StreamUseCaseUtil.d(this.m);
            this.s = zD;
            if (zD && Build.VERSION.SDK_INT >= 33) {
                ArrayList arrayList16 = this.f1627j;
                ArrayList arrayList17 = new ArrayList();
                SurfaceCombination surfaceCombination11 = new SurfaceCombination();
                SurfaceConfig.ConfigSize configSize11 = SurfaceConfig.ConfigSize.S1440P_4_3;
                StreamUseCase streamUseCase = StreamUseCase.PREVIEW_VIDEO_STILL;
                SurfaceConfig.f2350e.getClass();
                surfaceCombination11.a(SurfaceConfig.Companion.a(configType, configSize11, streamUseCase));
                SurfaceCombination surfaceCombinationG22 = pq0.g(arrayList17, surfaceCombination11);
                surfaceCombinationG22.a(SurfaceConfig.Companion.a(configType3, configSize11, streamUseCase));
                arrayList17.add(surfaceCombinationG22);
                SurfaceCombination surfaceCombination12 = new SurfaceCombination();
                SurfaceConfig.ConfigSize configSize12 = SurfaceConfig.ConfigSize.RECORD;
                StreamUseCase streamUseCase2 = StreamUseCase.VIDEO_RECORD;
                surfaceCombination12.a(SurfaceConfig.Companion.a(configType, configSize12, streamUseCase2));
                arrayList17.add(surfaceCombination12);
                SurfaceCombination surfaceCombination13 = new SurfaceCombination();
                surfaceCombination13.a(SurfaceConfig.Companion.a(configType3, configSize12, streamUseCase2));
                arrayList17.add(surfaceCombination13);
                SurfaceCombination surfaceCombination14 = new SurfaceCombination();
                StreamUseCase streamUseCase3 = StreamUseCase.STILL_CAPTURE;
                surfaceCombination14.a(SurfaceConfig.Companion.a(configType2, configSize, streamUseCase3));
                arrayList17.add(surfaceCombination14);
                SurfaceCombination surfaceCombination15 = new SurfaceCombination();
                surfaceCombination15.a(SurfaceConfig.Companion.a(configType3, configSize, streamUseCase3));
                arrayList17.add(surfaceCombination15);
                SurfaceCombination surfaceCombination16 = new SurfaceCombination();
                StreamUseCase streamUseCase4 = StreamUseCase.PREVIEW;
                surfaceCombination16.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombination16.a(SurfaceConfig.Companion.a(configType2, configSize, streamUseCase3));
                SurfaceCombination surfaceCombinationG23 = pq0.g(arrayList17, surfaceCombination16);
                surfaceCombinationG23.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombinationG23.a(SurfaceConfig.Companion.a(configType3, configSize, streamUseCase3));
                SurfaceCombination surfaceCombinationG24 = pq0.g(arrayList17, surfaceCombinationG23);
                surfaceCombinationG24.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombinationG24.a(SurfaceConfig.Companion.a(configType, configSize12, streamUseCase2));
                SurfaceCombination surfaceCombinationG25 = pq0.g(arrayList17, surfaceCombinationG24);
                surfaceCombinationG25.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombinationG25.a(SurfaceConfig.Companion.a(configType3, configSize12, streamUseCase2));
                SurfaceCombination surfaceCombinationG26 = pq0.g(arrayList17, surfaceCombinationG25);
                surfaceCombinationG26.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombinationG26.a(SurfaceConfig.Companion.a(configType3, configSize2, streamUseCase4));
                SurfaceCombination surfaceCombinationG27 = pq0.g(arrayList17, surfaceCombinationG26);
                surfaceCombinationG27.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombinationG27.a(SurfaceConfig.Companion.a(configType, configSize12, streamUseCase2));
                surfaceCombinationG27.a(SurfaceConfig.Companion.a(configType2, configSize12, streamUseCase3));
                arrayList17.add(surfaceCombinationG27);
                SurfaceCombination surfaceCombination17 = new SurfaceCombination();
                surfaceCombination17.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombination17.a(SurfaceConfig.Companion.a(configType3, configSize12, streamUseCase2));
                surfaceCombination17.a(SurfaceConfig.Companion.a(configType2, configSize12, streamUseCase3));
                arrayList17.add(surfaceCombination17);
                SurfaceCombination surfaceCombination18 = new SurfaceCombination();
                surfaceCombination18.a(SurfaceConfig.Companion.a(configType, configSize2, streamUseCase4));
                surfaceCombination18.a(SurfaceConfig.Companion.a(configType3, configSize2, streamUseCase4));
                surfaceCombination18.a(SurfaceConfig.Companion.a(configType2, configSize, streamUseCase3));
                arrayList17.add(surfaceCombination18);
                arrayList16.addAll(arrayList17);
            }
            CameraCharacteristicsCompat cameraCharacteristicsCompat = this.m;
            if (Build.VERSION.SDK_INT < 33 || (iArr = (int[]) cameraCharacteristicsCompat.a(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)) == null || iArr.length == 0) {
                z = false;
                break;
            }
            int length = iArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    z = false;
                    break;
                } else {
                    if (iArr[i4] == 2) {
                        z = true;
                        break;
                    }
                    i4++;
                }
            }
            this.v = z;
            if (z && Build.VERSION.SDK_INT >= 33) {
                ArrayList arrayList18 = this.d;
                ArrayList arrayList19 = new ArrayList();
                SurfaceCombination surfaceCombination19 = new SurfaceCombination();
                SurfaceConfig.ConfigType configType7 = SurfaceConfig.ConfigType.PRIV;
                SurfaceConfig.ConfigSize configSize13 = SurfaceConfig.ConfigSize.S1440P_4_3;
                SurfaceCombination surfaceCombinationF33 = pq0.f(configType7, configSize13, surfaceCombination19, arrayList19, surfaceCombination19);
                SurfaceConfig.ConfigType configType8 = SurfaceConfig.ConfigType.YUV;
                SurfaceCombination surfaceCombinationF34 = pq0.f(configType8, configSize13, surfaceCombinationF33, arrayList19, surfaceCombinationF33);
                surfaceCombinationF34.a(SurfaceConfig.a(configType7, configSize13));
                SurfaceConfig.ConfigType configType9 = SurfaceConfig.ConfigType.JPEG;
                SurfaceConfig.ConfigSize configSize14 = SurfaceConfig.ConfigSize.MAXIMUM;
                SurfaceCombination surfaceCombinationF35 = pq0.f(configType9, configSize14, surfaceCombinationF34, arrayList19, surfaceCombinationF34);
                pq0.w(configType8, configSize13, surfaceCombinationF35, configType9, configSize14);
                SurfaceCombination surfaceCombinationG28 = pq0.g(arrayList19, surfaceCombinationF35);
                pq0.w(configType7, configSize13, surfaceCombinationG28, configType8, configSize14);
                SurfaceCombination surfaceCombinationG29 = pq0.g(arrayList19, surfaceCombinationG28);
                pq0.w(configType8, configSize13, surfaceCombinationG29, configType8, configSize14);
                SurfaceCombination surfaceCombinationG30 = pq0.g(arrayList19, surfaceCombinationG29);
                SurfaceConfig.ConfigSize configSize15 = SurfaceConfig.ConfigSize.PREVIEW;
                pq0.w(configType7, configSize15, surfaceCombinationG30, configType7, configSize13);
                SurfaceCombination surfaceCombinationG31 = pq0.g(arrayList19, surfaceCombinationG30);
                pq0.w(configType8, configSize15, surfaceCombinationG31, configType7, configSize13);
                SurfaceCombination surfaceCombinationG32 = pq0.g(arrayList19, surfaceCombinationG31);
                pq0.w(configType7, configSize15, surfaceCombinationG32, configType8, configSize13);
                SurfaceCombination surfaceCombinationG33 = pq0.g(arrayList19, surfaceCombinationG32);
                pq0.w(configType8, configSize15, surfaceCombinationG33, configType8, configSize13);
                arrayList19.add(surfaceCombinationG33);
                arrayList18.addAll(arrayList19);
            }
            c();
            this.D = featureCombinationQuery;
        } catch (CameraAccessExceptionCompat e2) {
            throw CameraUnavailableExceptionHelper.a(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c2  */
    public static Range d(Range range, int i2, Range[] rangeArr) {
        Range range2 = StreamSpec.f2348a;
        if (range2.equals(range) || rangeArr == null) {
            return range2;
        }
        Range range3 = new Range(Integer.valueOf(Math.min(((Integer) range.getLower()).intValue(), i2)), Integer.valueOf(Math.min(((Integer) range.getUpper()).intValue(), i2)));
        int i3 = 0;
        for (Range range4 : rangeArr) {
            Objects.requireNonNull(range4);
            if (i2 >= ((Integer) range4.getLower()).intValue()) {
                if (range2.equals(StreamSpec.f2348a)) {
                    range2 = range4;
                }
                if (range4.equals(range3)) {
                    return range4;
                }
                try {
                    int i4 = i(range4.intersect(range3));
                    if (i3 == 0) {
                        i3 = i4;
                    } else {
                        if (i4 >= i3) {
                            double dI = i(range2.intersect(range3));
                            double dI2 = i(range4.intersect(range3));
                            double dI3 = dI2 / ((double) i(range4));
                            double dI4 = dI / ((double) i(range2));
                            if (dI2 > dI) {
                                if (dI3 >= 0.5d || dI3 >= dI4) {
                                    range2 = range4;
                                }
                            } else if (dI2 == dI) {
                                if (dI3 > dI4 || (dI3 == dI4 && ((Integer) range4.getLower()).intValue() > ((Integer) range2.getLower()).intValue())) {
                                    range2 = range4;
                                }
                            } else if (dI4 < 0.5d && dI3 > dI4) {
                                range2 = range4;
                            }
                            i3 = i(range3.intersect(range2));
                        }
                        range4 = range2;
                    }
                } catch (IllegalArgumentException unused) {
                    if (i3 != 0 || (h(range4, range3) >= h(range2, range3) && (h(range4, range3) != h(range2, range3) || (((Integer) range4.getLower()).intValue() <= ((Integer) range2.getUpper()).intValue() && i(range4) >= i(range2))))) {
                    }
                }
                range2 = range4;
            }
        }
        return range2;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    public static Size f(StreamConfigurationMap streamConfigurationMap, int i2, boolean z, Rational rational) {
        Size[] outputSizes;
        Size[] highResolutionOutputSizes;
        try {
            outputSizes = i2 == 34 ? streamConfigurationMap.getOutputSizes(SurfaceTexture.class) : streamConfigurationMap.getOutputSizes(i2);
        } catch (Throwable unused) {
            outputSizes = null;
        }
        if (outputSizes == null || outputSizes.length == 0) {
            outputSizes = null;
        } else if (rational != null) {
            ArrayList arrayList = new ArrayList();
            for (Size size : outputSizes) {
                Rational rational2 = AspectRatioUtil.f2380a;
                if (AspectRatioUtil.a(size, rational, SizeUtil.f2517c)) {
                    arrayList.add(size);
                }
            }
            if (arrayList.isEmpty()) {
                outputSizes = null;
            } else {
                outputSizes = (Size[]) arrayList.toArray(new Size[0]);
            }
        }
        if (outputSizes == null || outputSizes.length == 0) {
            return null;
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        Size size2 = (Size) Collections.max(Arrays.asList(outputSizes), compareSizesByArea);
        Size size3 = SizeUtil.f2515a;
        if (z && (highResolutionOutputSizes = streamConfigurationMap.getHighResolutionOutputSizes(i2)) != null && highResolutionOutputSizes.length > 0) {
            size3 = (Size) Collections.max(Arrays.asList(highResolutionOutputSizes), compareSizesByArea);
        }
        return (Size) Collections.max(Arrays.asList(size2, size3), compareSizesByArea);
    }

    public static int h(Range range, Range range2) {
        Preconditions.f("Ranges must not intersect", (range.contains((Integer) range2.getUpper()) || range.contains((Integer) range2.getLower())) ? false : true);
        return ((Integer) range.getLower()).intValue() > ((Integer) range2.getUpper()).intValue() ? ((Integer) range.getLower()).intValue() - ((Integer) range2.getUpper()).intValue() : ((Integer) range2.getLower()).intValue() - ((Integer) range.getUpper()).intValue();
    }

    public static int i(Range range) {
        return (((Integer) range.getUpper()).intValue() - ((Integer) range.getLower()).intValue()) + 1;
    }

    public static Range m(Range range, Range range2, boolean z) {
        Range range3 = StreamSpec.f2348a;
        if (range3.equals(range2) && range3.equals(range)) {
            return range3;
        }
        if (range3.equals(range2)) {
            return range;
        }
        if (range3.equals(range)) {
            return range2;
        }
        if (z) {
            Preconditions.f("All targetFrameRate should be the same if strict fps is required", range == range2);
            return range;
        }
        try {
            return range2.intersect(range);
        } catch (IllegalArgumentException unused) {
            return range2;
        }
    }

    public final boolean a(FeatureSettings featureSettings, List list, Map map, List list2, List list3) {
        List list4;
        UseCaseType useCaseType;
        HashMap map2 = this.g;
        if (map2.containsKey(featureSettings)) {
            list4 = (List) map2.get(featureSettings);
        } else {
            ArrayList arrayList = new ArrayList();
            AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettings;
            int i2 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a;
            if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1411h) {
                ArrayList arrayList2 = this.f1624f;
                if (arrayList2.isEmpty()) {
                    ArrayList arrayList3 = new ArrayList();
                    SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
                    SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
                    arrayList3.add(new SurfaceCombination(SurfaceConfig.a(configType, configSize)));
                    SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
                    arrayList3.add(new SurfaceCombination(SurfaceConfig.a(configType, configSize2)));
                    SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM_16_9;
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize, configSize3));
                    SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.UHD;
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize, configSize4));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize, SurfaceConfig.ConfigSize.S1440P_16_9));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize, configSize));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize2, configSize3));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize2, configSize4));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize2, configSize));
                    SurfaceConfig.ConfigSize configSize5 = SurfaceConfig.ConfigSize.X_VGA;
                    SurfaceConfig.ConfigSize configSize6 = SurfaceConfig.ConfigSize.MAXIMUM_4_3;
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(configSize5, configSize6));
                    arrayList3.addAll(GuaranteedConfigurationsUtil.a(SurfaceConfig.ConfigSize.S1080P_4_3, configSize6));
                    arrayList2.addAll(arrayList3);
                }
                arrayList.addAll(arrayList2);
            } else if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1409e) {
                ArrayList arrayList4 = this.f1626i;
                if (arrayList4.isEmpty()) {
                    ArrayList arrayList5 = new ArrayList();
                    SurfaceCombination surfaceCombination = new SurfaceCombination();
                    SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG_R;
                    SurfaceConfig.ConfigSize configSize7 = SurfaceConfig.ConfigSize.MAXIMUM;
                    SurfaceCombination surfaceCombinationF = pq0.f(configType2, configSize7, surfaceCombination, arrayList5, surfaceCombination);
                    pq0.w(SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, surfaceCombinationF, configType2, configSize7);
                    arrayList5.add(surfaceCombinationF);
                    arrayList4.addAll(arrayList5);
                }
                if (i2 == 0) {
                    arrayList.addAll(arrayList4);
                }
            } else if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f) {
                ArrayList arrayList6 = this.f1623e;
                if (arrayList6.isEmpty()) {
                    HighSpeedResolver highSpeedResolver = this.C;
                    if (((Boolean) highSpeedResolver.f1592b.getF71699b()).booleanValue()) {
                        arrayList6.clear();
                        Size size = (Size) highSpeedResolver.f1593c.getF71699b();
                        if (size != null) {
                            SurfaceSizeDefinition surfaceSizeDefinitionL = l(34);
                            ArrayList arrayList7 = new ArrayList();
                            SurfaceConfig.f2350e.getClass();
                            surfaceSizeDefinitionL.getClass();
                            SurfaceConfig surfaceConfigB = SurfaceConfig.Companion.b(34, size, surfaceSizeDefinitionL, 0, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, SurfaceConfig.f2351f);
                            SurfaceCombination surfaceCombination2 = new SurfaceCombination();
                            surfaceCombination2.a(surfaceConfigB);
                            arrayList7.add(surfaceCombination2);
                            SurfaceCombination surfaceCombination3 = new SurfaceCombination();
                            surfaceCombination3.a(surfaceConfigB);
                            surfaceCombination3.a(surfaceConfigB);
                            arrayList7.add(surfaceCombination3);
                            arrayList6.addAll(arrayList7);
                        }
                    }
                }
                arrayList.addAll(arrayList6);
            } else {
                int i3 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1408c;
                if (i3 == 8) {
                    if (i2 != 1) {
                        ArrayList arrayList8 = this.f1620a;
                        if (i2 != 2) {
                            if (autoValue_SupportedSurfaceCombination_FeatureSettings.d) {
                                arrayList8 = this.d;
                            }
                            arrayList.addAll(arrayList8);
                        } else {
                            arrayList.addAll(this.f1621b);
                            arrayList.addAll(arrayList8);
                        }
                    } else {
                        arrayList = this.f1622c;
                    }
                } else if (i3 == 10 && i2 == 0) {
                    arrayList.addAll(this.f1625h);
                }
            }
            map2.put(featureSettings, arrayList);
            list4 = arrayList;
        }
        Iterator it = list4.iterator();
        int i4 = 0;
        boolean z = false;
        while (it.hasNext()) {
            z = ((SurfaceCombination) it.next()).c(list) != null;
            if (z) {
                break;
            }
        }
        if (z) {
            AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings2 = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettings;
            if (autoValue_SupportedSurfaceCombination_FeatureSettings2.f1411h) {
                Range range = autoValue_SupportedSurfaceCombination_FeatureSettings2.f1412i;
                SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
                while (i4 < list.size()) {
                    SurfaceConfig surfaceConfig = (SurfaceConfig) list.get(i4);
                    Size sizeB = surfaceConfig.b(l(surfaceConfig.d));
                    UseCaseConfig useCaseConfig = (UseCaseConfig) list2.get(((Integer) list3.get(i4)).intValue());
                    DynamicRange dynamicRange = (DynamicRange) map.get(surfaceConfig);
                    Objects.requireNonNull(dynamicRange);
                    useCaseConfig.getClass();
                    FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1 featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1 = new FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1(sizeB, useCaseConfig.m());
                    UseCaseType.INSTANCE.getClass();
                    int i5 = UseCaseType.Companion.WhenMappings.f2025a[useCaseConfig.S().ordinal()];
                    int i6 = i4;
                    if (i5 == 1) {
                        useCaseType = UseCaseType.IMAGE_CAPTURE;
                    } else if (i5 == 2) {
                        useCaseType = UseCaseType.PREVIEW;
                    } else if (i5 != 3) {
                        useCaseType = i5 != 4 ? UseCaseType.UNDEFINED : UseCaseType.STREAM_SHARING;
                    } else {
                        useCaseType = UseCaseType.VIDEO_CAPTURE;
                    }
                    Class clsA = useCaseType.getSurfaceClass();
                    if (clsA != null) {
                        featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1.f2294j = clsA;
                    }
                    SessionConfig.Builder builderM = SessionConfig.Builder.m(useCaseConfig, sizeB);
                    builderM.i(featureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1, dynamicRange, -1);
                    builderM.q(StreamSpec.f2348a.equals(range) ? FpsRangeFeature.f2030f : range);
                    if (autoValue_SupportedSurfaceCombination_FeatureSettings2.d) {
                        builderM.u(2);
                    }
                    validatingBuilder.a(builderM.k());
                    boolean zD = validatingBuilder.d();
                    StringBuilder sb = new StringBuilder("Cannot create a combined SessionConfig for feature combo after adding ");
                    sb.append(useCaseConfig);
                    sb.append(" with ");
                    sb.append(surfaceConfig);
                    sb.append(" due to [");
                    d21.z(!validatingBuilder.m ? "Template is not set" : validatingBuilder.l.toString(), "]; surfaceConfigList = ", ", featureSettings = ", sb, list);
                    sb.append(featureSettings);
                    sb.append(", newUseCaseConfigs = ");
                    sb.append(list2);
                    Preconditions.f(sb.toString(), zD);
                    i4 = i6 + 1;
                }
                SessionConfig sessionConfigB = validatingBuilder.b();
                boolean zA = this.D.a(sessionConfigB);
                Iterator it2 = sessionConfigB.b().iterator();
                while (it2.hasNext()) {
                    ((DeferrableSurface) it2.next()).a();
                }
                return zA;
            }
        }
        return z;
    }

    public final FeatureSettings b(int i2, boolean z, HashMap map, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, Range range, boolean z7) {
        int i3;
        Range range2;
        Range range3;
        Iterator it = map.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                i3 = 8;
                break;
            }
            if (((DynamicRange) it.next()).f1919b == 10) {
                i3 = 10;
                break;
            }
        }
        String str = "CONCURRENT_CAMERA";
        String str2 = this.f1628k;
        if (i2 != 0 && z3) {
            if (i2 != 1) {
                str = i2 != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA";
            }
            throw new IllegalArgumentException(d21.l("Camera device id is ", str2, ". Ultra HDR is not currently supported in ", str, " camera mode."));
        }
        if (i2 != 0 && i3 == 10) {
            if (i2 != 1) {
                str = i2 != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA";
            }
            throw new IllegalArgumentException(d21.l("Camera device id is ", str2, ". 10 bit dynamic range is not currently supported in ", str, " camera mode."));
        }
        if (i2 != 0 && z5) {
            if (i2 != 1) {
                str = i2 != 2 ? "DEFAULT" : "ULTRA_HIGH_RESOLUTION_CAMERA";
            }
            throw new IllegalArgumentException(d21.l("Camera device id is ", str2, ". Feature combination query is not currently supported in ", str, " camera mode."));
        }
        if (z4 && z5) {
            md.n("High-speed session is not supported with feature combination");
            return null;
        }
        if (z4 && !((Boolean) this.C.f1592b.getF71699b()).booleanValue()) {
            md.n("High-speed session is not supported on this device.");
            return null;
        }
        if (z5) {
            range2 = range;
            if (range2 == StreamSpec.f2348a && z6) {
                range3 = FpsRangeFeature.f2030f;
            }
            return new AutoValue_SupportedSurfaceCombination_FeatureSettings(i2, z, i3, z2, z3, z4, z5, z6, range3, z7);
        }
        range2 = range;
        range3 = range2;
        return new AutoValue_SupportedSurfaceCombination_FeatureSettings(i2, z, i3, z2, z3, z4, z5, z6, range3, z7);
    }

    public final void c() {
        Size[] outputSizes;
        Size size;
        Size size2;
        CamcorderProfile camcorderProfileA;
        Size sizeE = this.y.e();
        Size size3 = null;
        try {
            int i2 = Integer.parseInt(this.f1628k);
            CamcorderProfileHelper camcorderProfileHelper = this.l;
            int[] iArr = {1, 13, 10, 8, 12, 6, 5, 4};
            int i3 = 0;
            while (true) {
                if (i3 >= 8) {
                    size = null;
                    break;
                }
                int i4 = iArr[i3];
                if (camcorderProfileHelper.b(i2, i4) && (camcorderProfileA = camcorderProfileHelper.a(i2, i4)) != null) {
                    size = new Size(camcorderProfileA.videoFrameWidth, camcorderProfileA.videoFrameHeight);
                    break;
                }
                i3++;
            }
            if (size != null) {
                size2 = size;
            } else {
                try {
                    outputSizes = this.m.c().g().getOutputSizes(MediaRecorder.class);
                } catch (Throwable unused) {
                    outputSizes = null;
                }
                if (outputSizes != null) {
                    Arrays.sort(outputSizes, new CompareSizesByArea(true));
                    for (Size size4 : outputSizes) {
                        int width = size4.getWidth();
                        Size size5 = SizeUtil.f2519f;
                        if (width <= size5.getWidth() && size4.getHeight() <= size5.getHeight()) {
                            size3 = size4;
                            break;
                        }
                    }
                }
                if (size3 != null) {
                    size2 = size3;
                } else {
                    size = SizeUtil.d;
                    size2 = size;
                }
            }
        } catch (NumberFormatException unused2) {
        }
        this.w = SurfaceSizeDefinition.a(SizeUtil.f2517c, new HashMap(), sizeE, new HashMap(), size2, new HashMap(), new HashMap(), new HashMap(), new HashMap());
    }

    public final int e(int i2, Size size, boolean z) {
        Preconditions.f(null, !z || i2 == 34);
        if (!z) {
            StreamConfigurationMapCompat streamConfigurationMapCompatC = this.m.c();
            Objects.requireNonNull(streamConfigurationMapCompatC);
            long jE = streamConfigurationMapCompatC.e(size, i2);
            if (jE > 0) {
                return (int) (1.0E9d / jE);
            }
            if (!this.u) {
                return Integer.MAX_VALUE;
            }
            Objects.toString(size);
            Logger.c(5, "SupportedSurfaceCombination");
            return 0;
        }
        HighSpeedResolver highSpeedResolver = this.C;
        highSpeedResolver.getClass();
        size.getClass();
        List listC = highSpeedResolver.c(size);
        List list = listC.isEmpty() ? null : listC;
        if (list == null) {
            Objects.toString(size);
            Logger.c(5, "HighSpeedResolver");
            return 0;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            b21.x();
            return 0;
        }
        Integer num = (Integer) ((Range) it.next()).getUpper();
        while (it.hasNext()) {
            Integer num2 = (Integer) ((Range) it.next()).getUpper();
            if (num.compareTo(num2) < 0) {
                num = num2;
            }
        }
        num.getClass();
        return num.intValue();
    }

    public final List g(FeatureSettings featureSettings, List list, HashMap map, HashMap map2) {
        List list2;
        Config.Option option = StreamUseCaseUtil.f1617a;
        AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettings;
        if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a == 0 && autoValue_SupportedSurfaceCombination_FeatureSettings.f1408c == 8 && !autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f) {
            Iterator it = this.f1627j.iterator();
            while (it.hasNext()) {
                List listC = ((SurfaceCombination) it.next()).c(list);
                if (listC != null) {
                    Config.Option option2 = StreamUseCaseUtil.f1617a;
                    int size = listC.size();
                    boolean z = false;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            z = true;
                            break;
                        }
                        long value = ((SurfaceConfig) listC.get(i2)).f2356c.getValue();
                        if (map.containsKey(Integer.valueOf(i2))) {
                            AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) map.get(Integer.valueOf(i2));
                            attachedSurfaceInfo.getClass();
                            UseCaseConfigFactory.CaptureType captureType = attachedSurfaceInfo.b().size() == 1 ? (UseCaseConfigFactory.CaptureType) attachedSurfaceInfo.b().get(0) : UseCaseConfigFactory.CaptureType.STREAM_SHARING;
                            captureType.getClass();
                            List listB = attachedSurfaceInfo.b();
                            listB.getClass();
                            if (!StreamUseCaseUtil.c(captureType, value, listB)) {
                                break;
                            }
                            i2++;
                        } else {
                            if (!map2.containsKey(Integer.valueOf(i2))) {
                                md.h("SurfaceConfig does not map to any use case");
                                return null;
                            }
                            Object obj = map2.get(Integer.valueOf(i2));
                            obj.getClass();
                            UseCaseConfig useCaseConfig = (UseCaseConfig) obj;
                            UseCaseConfigFactory.CaptureType captureTypeS = useCaseConfig.S();
                            captureTypeS.getClass();
                            if (useCaseConfig.S() == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
                                list2 = (List) ((StreamSharingConfig) useCaseConfig).a(StreamSharingConfig.N);
                                list2.getClass();
                            } else {
                                list2 = EmptyList.f71768b;
                            }
                            if (!StreamUseCaseUtil.c(captureTypeS, value, list2)) {
                                break;
                            }
                            i2++;
                        }
                    }
                    UnsafeLazyImpl unsafeLazyImpl = new UnsafeLazyImpl(new p01(this, listC, 10));
                    if (z && ((Boolean) unsafeLazyImpl.getF71699b()).booleanValue()) {
                        return listC;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    public final SurfaceStreamSpecQueryResult j(int i2, ArrayList arrayList, HashMap map, boolean z, boolean z2, boolean z3) {
        boolean z4;
        Map map2;
        boolean z5;
        int i3;
        int i4;
        CheckingMethod checkingMethod;
        Iterator it;
        Map map3;
        DynamicRange dynamicRange;
        DynamicRange dynamicRangeA;
        DynamicRange dynamicRange2;
        DynamicRange dynamicRange3;
        DisplayInfoManager displayInfoManager = this.y;
        displayInfoManager.f1570b = displayInfoManager.a();
        if (this.w == null) {
            c();
        } else {
            this.w = SurfaceSizeDefinition.a(this.w.b(), this.w.i(), this.y.e(), this.w.h(), this.w.g(), this.w.f(), this.w.d(), this.w.c(), this.w.j());
        }
        Set setKeySet = map.keySet();
        HighSpeedResolver.f1589e.getClass();
        setKeySet.getClass();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((AttachedSurfaceInfo) it2.next()).f()));
        }
        Set set = setKeySet;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(set, 10));
        Iterator it3 = set.iterator();
        while (it3.hasNext()) {
            arrayList3.add(Integer.valueOf(((UseCaseConfig) it3.next()).T()));
        }
        ArrayList arrayListY = CollectionsKt.Y(arrayList2, arrayList3);
        if (arrayListY.isEmpty()) {
            z4 = false;
            break;
        }
        Iterator it4 = arrayListY.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z4 = false;
                break;
            }
            if (((Number) it4.next()).intValue() == 1) {
                z4 = true;
                break;
            }
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult = null;
        if (z4 && !arrayListY.isEmpty()) {
            Iterator it5 = arrayListY.iterator();
            while (it5.hasNext()) {
                if (((Number) it5.next()).intValue() != 1) {
                    md.n("All sessionTypes should be high-speed when any of them is high-speed");
                    return null;
                }
            }
        }
        if (z4) {
            HighSpeedResolver highSpeedResolver = this.C;
            highSpeedResolver.getClass();
            List listA = HighSpeedResolver.a(CollectionsKt.y0(map.values()));
            ArrayList arrayList4 = new ArrayList();
            for (Object obj : listA) {
                if (((List) highSpeedResolver.d.getF71699b()).contains((Size) obj)) {
                    arrayList4.add(obj);
                }
            }
            Map linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                List list = (List) entry.getValue();
                ArrayList arrayList5 = new ArrayList();
                for (Object obj2 : list) {
                    if (arrayList4.contains((Size) obj2)) {
                        arrayList5.add(obj2);
                    }
                }
                linkedHashMap.put(key, arrayList5);
            }
            map2 = linkedHashMap;
        } else {
            map2 = map;
        }
        ArrayList<UseCaseConfig> arrayList6 = new ArrayList(map2.keySet());
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        Iterator it6 = arrayList6.iterator();
        while (it6.hasNext()) {
            int iM = ((UseCaseConfig) it6.next()).M();
            if (!arrayList8.contains(Integer.valueOf(iM))) {
                arrayList8.add(Integer.valueOf(iM));
            }
        }
        Collections.sort(arrayList8);
        Collections.reverse(arrayList8);
        Iterator it7 = arrayList8.iterator();
        while (it7.hasNext()) {
            int iIntValue = ((Integer) it7.next()).intValue();
            for (UseCaseConfig useCaseConfig : arrayList6) {
                if (iIntValue == useCaseConfig.M()) {
                    arrayList7.add(Integer.valueOf(arrayList6.indexOf(useCaseConfig)));
                }
            }
        }
        DynamicRangeResolver dynamicRangeResolver = this.B;
        DynamicRangesCompat dynamicRangesCompat = dynamicRangeResolver.f1573b;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it8 = arrayList.iterator();
        while (it8.hasNext()) {
            linkedHashSet.add(((AttachedSurfaceInfo) it8.next()).c());
        }
        Set setC = dynamicRangesCompat.c();
        HashSet hashSet = new HashSet(setC);
        Iterator it9 = linkedHashSet.iterator();
        while (it9.hasNext()) {
            DynamicRangeResolver.d(hashSet, (DynamicRange) it9.next(), dynamicRangesCompat);
            surfaceStreamSpecQueryResult = surfaceStreamSpecQueryResult;
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult2 = surfaceStreamSpecQueryResult;
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        Iterator it10 = arrayList7.iterator();
        while (it10.hasNext()) {
            UseCaseConfig useCaseConfig2 = (UseCaseConfig) arrayList6.get(((Integer) it10.next()).intValue());
            DynamicRange dynamicRangeI = useCaseConfig2.I();
            boolean z6 = z4;
            if (dynamicRangeI.equals(DynamicRange.f1913c)) {
                arrayList11.add(useCaseConfig2);
            } else {
                int i5 = dynamicRangeI.f1918a;
                int i6 = dynamicRangeI.f1919b;
                if (i5 == 2 || ((i5 != 0 && i6 == 0) || (i5 == 0 && i6 != 0))) {
                    arrayList10.add(useCaseConfig2);
                } else {
                    arrayList9.add(useCaseConfig2);
                }
            }
            z4 = z6;
        }
        boolean z7 = z4;
        HashMap map4 = new HashMap();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ArrayList arrayList12 = new ArrayList();
        arrayList12.addAll(arrayList9);
        arrayList12.addAll(arrayList10);
        arrayList12.addAll(arrayList11);
        Iterator it11 = arrayList12.iterator();
        while (it11.hasNext()) {
            UseCaseConfig useCaseConfig3 = (UseCaseConfig) it11.next();
            DynamicRange dynamicRangeI2 = useCaseConfig3.I();
            useCaseConfig3.X();
            if (!dynamicRangeI2.b()) {
                int i7 = dynamicRangeI2.f1918a;
                it = it11;
                int i8 = dynamicRangeI2.f1919b;
                if (i7 == 1 && i8 == 0) {
                    DynamicRange dynamicRange4 = DynamicRange.d;
                    if (!hashSet.contains(dynamicRange4)) {
                        map3 = map2;
                        dynamicRange = surfaceStreamSpecQueryResult2;
                        break;
                    }
                    dynamicRange3 = dynamicRange4;
                    map3 = map2;
                    dynamicRange = dynamicRange3;
                } else {
                    DynamicRange dynamicRangeC = DynamicRangeResolver.c(dynamicRangeI2, linkedHashSet, hashSet);
                    if (dynamicRangeC == null) {
                        map3 = map2;
                        DynamicRange dynamicRangeC2 = DynamicRangeResolver.c(dynamicRangeI2, linkedHashSet2, hashSet);
                        if (dynamicRangeC2 == null) {
                            DynamicRange dynamicRange5 = DynamicRange.d;
                            if (!DynamicRangeResolver.b(dynamicRangeI2, dynamicRange5, hashSet)) {
                                if (i7 == 2 && (i8 == 10 || i8 == 0)) {
                                    LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                                    if (Build.VERSION.SDK_INT >= 33 && (dynamicRangeA = DynamicRangeResolver.Api33Impl.a(dynamicRangeResolver.f1572a)) != null) {
                                        linkedHashSet3.add(dynamicRangeA);
                                    }
                                    linkedHashSet3.add(DynamicRange.f1914e);
                                    DynamicRange dynamicRangeC3 = DynamicRangeResolver.c(dynamicRangeI2, linkedHashSet3, hashSet);
                                    if (dynamicRangeC3 != null) {
                                        dynamicRangeI2.toString();
                                        dynamicRangeC3.toString();
                                        Logger.c(3, "DynamicRangeResolver");
                                        dynamicRange2 = dynamicRangeC3;
                                    }
                                }
                                Iterator it12 = hashSet.iterator();
                                while (true) {
                                    if (!it12.hasNext()) {
                                        dynamicRangeResolver = dynamicRangeResolver;
                                        dynamicRange = surfaceStreamSpecQueryResult2;
                                        break;
                                    }
                                    DynamicRange dynamicRange6 = (DynamicRange) it12.next();
                                    dynamicRangeResolver = dynamicRangeResolver;
                                    Preconditions.f("Candidate dynamic range must be fully specified.", dynamicRange6.b());
                                    if (!dynamicRange6.equals(DynamicRange.d) && DynamicRangeResolver.a(dynamicRangeI2, dynamicRange6)) {
                                        dynamicRangeI2.toString();
                                        dynamicRange6.toString();
                                        Logger.c(3, "DynamicRangeResolver");
                                        dynamicRange = dynamicRange6;
                                        break;
                                    }
                                    dynamicRangeResolver = dynamicRangeResolver;
                                }
                            } else {
                                dynamicRangeI2.toString();
                                Objects.toString(dynamicRange5);
                                Logger.c(3, "DynamicRangeResolver");
                                dynamicRangeResolver = dynamicRangeResolver;
                                dynamicRange = dynamicRange5;
                            }
                        } else {
                            dynamicRangeI2.toString();
                            dynamicRangeC2.toString();
                            Logger.c(3, "DynamicRangeResolver");
                            dynamicRangeResolver = dynamicRangeResolver;
                            dynamicRange = dynamicRangeC2;
                        }
                    } else {
                        dynamicRangeI2.toString();
                        dynamicRangeC.toString();
                        Logger.c(3, "DynamicRangeResolver");
                        map3 = map2;
                        dynamicRange2 = dynamicRangeC;
                    }
                    dynamicRangeResolver = dynamicRangeResolver;
                    dynamicRange = dynamicRange2;
                }
            } else {
                if (!hashSet.contains(dynamicRangeI2)) {
                    it = it11;
                    map3 = map2;
                    dynamicRange = surfaceStreamSpecQueryResult2;
                    break;
                }
                it = it11;
                dynamicRange3 = dynamicRangeI2;
                map3 = map2;
                dynamicRange = dynamicRange3;
            }
            if (dynamicRange == 0) {
                String strX = useCaseConfig3.X();
                String strJoin = TextUtils.join("\n  ", setC);
                String strJoin2 = TextUtils.join("\n  ", hashSet);
                StringBuilder sb = new StringBuilder("Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  ");
                sb.append(strX);
                sb.append("\nRequested dynamic range:\n  ");
                sb.append(dynamicRangeI2);
                sb.append("\nSupported dynamic ranges:\n  ");
                md.n(d21.p(sb, strJoin, "\nConstrained set of concurrent dynamic ranges:\n  ", strJoin2));
                return surfaceStreamSpecQueryResult2;
            }
            DynamicRangeResolver.d(hashSet, dynamicRange, dynamicRangesCompat);
            map4.put(useCaseConfig3, dynamicRange);
            if (!linkedHashSet.contains(dynamicRange)) {
                linkedHashSet2.add(dynamicRange);
            }
            it11 = it;
            dynamicRangeResolver = dynamicRangeResolver;
            map2 = map3;
        }
        Map map5 = map2;
        map4.toString();
        Logger.c(3, "SupportedSurfaceCombination");
        Iterator it13 = arrayList.iterator();
        while (true) {
            if (!it13.hasNext()) {
                Iterator it14 = map5.keySet().iterator();
                while (true) {
                    if (!it14.hasNext()) {
                        z5 = false;
                        break;
                    }
                    if (((UseCaseConfig) it14.next()).m() == 4101) {
                    }
                }
            } else if (((AttachedSurfaceInfo) it13.next()).d() == 4101) {
            }
            z5 = true;
            break;
        }
        Iterator it15 = arrayList.iterator();
        Boolean boolValueOf = surfaceStreamSpecQueryResult2;
        while (it15.hasNext()) {
            boolean zJ = ((AttachedSurfaceInfo) it15.next()).j();
            if (boolValueOf != 0 && boolValueOf.booleanValue() != zJ) {
                md.k("All isStrictFpsRequired should be the same");
                return surfaceStreamSpecQueryResult2;
            }
            boolValueOf = Boolean.valueOf(zJ);
        }
        Iterator it16 = arrayList6.iterator();
        Boolean boolValueOf2 = boolValueOf;
        while (it16.hasNext()) {
            boolean zC = ((UseCaseConfig) it16.next()).C();
            if (boolValueOf2 != null && boolValueOf2.booleanValue() != zC) {
                md.k("All isStrictFpsRequired should be the same");
                return surfaceStreamSpecQueryResult2;
            }
            boolValueOf2 = Boolean.valueOf(zC);
        }
        boolean zBooleanValue = boolValueOf2 != null ? boolValueOf2.booleanValue() : false;
        Range rangeM = StreamSpec.f2348a;
        Iterator it17 = arrayList.iterator();
        while (it17.hasNext()) {
            rangeM = m(((AttachedSurfaceInfo) it17.next()).i(), rangeM, zBooleanValue);
        }
        Iterator it18 = arrayList7.iterator();
        Range rangeM2 = rangeM;
        while (it18.hasNext()) {
            Range rangeY = ((UseCaseConfig) arrayList6.get(((Integer) it18.next()).intValue())).y(StreamSpec.f2348a);
            Objects.requireNonNull(rangeY);
            rangeM2 = m(rangeY, rangeM2, zBooleanValue);
        }
        Logger.c(3, "SupportedSurfaceCombination");
        if (z && !this.v && z3) {
            md.n("Preview stabilization is not supported by the camera.");
            return surfaceStreamSpecQueryResult2;
        }
        FeatureSettings featureSettingsB = b(i2, z2, map4, z, z5, z7, z3, false, rangeM2, zBooleanValue);
        Collection collectionValues = map4.values();
        if (z3) {
            ?? Contains = collectionValues.contains(DynamicRange.f1914e);
            if (rangeM2 != null && ((Integer) rangeM2.getUpper()).intValue() == 60) {
                i3 = Contains;
                i3 = Contains;
                i3 = Contains + 1;
            }
            if (z) {
                i3++;
            }
            if (z5) {
                i3++;
            }
            i4 = 1;
            checkingMethod = i3 > 1 ? CheckingMethod.WITH_FEATURE_COMBO : i3 == 1 ? CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT : CheckingMethod.WITHOUT_FEATURE_COMBO;
        } else {
            checkingMethod = CheckingMethod.WITHOUT_FEATURE_COMBO;
            i4 = 1;
        }
        Objects.toString(checkingMethod);
        Logger.c(3, "SupportedSurfaceCombination");
        int iOrdinal = checkingMethod.ordinal();
        if (iOrdinal == i4) {
            AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettingsB;
            return n(b(autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a, autoValue_SupportedSurfaceCombination_FeatureSettings.f1407b, map4, autoValue_SupportedSurfaceCombination_FeatureSettings.d, autoValue_SupportedSurfaceCombination_FeatureSettings.f1409e, autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f, autoValue_SupportedSurfaceCombination_FeatureSettings.g, true, autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i, autoValue_SupportedSurfaceCombination_FeatureSettings.f1413j), arrayList, map5, arrayList6, arrayList7, map4);
        }
        if (iOrdinal != 2) {
            return n(featureSettingsB, arrayList, map5, arrayList6, arrayList7, map4);
        }
        try {
            return n(featureSettingsB, arrayList, map5, arrayList6, arrayList7, map4);
        } catch (IllegalArgumentException unused) {
            Logger.c(3, "SupportedSurfaceCombination");
            AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings2 = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettingsB;
            return n(b(autoValue_SupportedSurfaceCombination_FeatureSettings2.f1406a, autoValue_SupportedSurfaceCombination_FeatureSettings2.f1407b, map4, autoValue_SupportedSurfaceCombination_FeatureSettings2.d, autoValue_SupportedSurfaceCombination_FeatureSettings2.f1409e, autoValue_SupportedSurfaceCombination_FeatureSettings2.f1410f, autoValue_SupportedSurfaceCombination_FeatureSettings2.g, true, autoValue_SupportedSurfaceCombination_FeatureSettings2.f1412i, autoValue_SupportedSurfaceCombination_FeatureSettings2.f1413j), arrayList, map5, arrayList6, arrayList7, map4);
        }
    }

    public final Pair k(FeatureSettings featureSettings, ArrayList arrayList, List list, ArrayList arrayList2, ArrayList arrayList3, int i2, HashMap map, HashMap map2) {
        ArrayList arrayList4 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) it.next();
            arrayList4.add(attachedSurfaceInfo.h());
            map.put(Integer.valueOf(arrayList4.size() - 1), attachedSurfaceInfo);
        }
        int iMin = i2;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Size size = (Size) list.get(i3);
            UseCaseConfig useCaseConfig = (UseCaseConfig) arrayList2.get(((Integer) arrayList3.get(i3)).intValue());
            int iM = useCaseConfig.m();
            StreamUseCase streamUseCaseR = useCaseConfig.R();
            AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettings;
            SurfaceConfig.ConfigSource configSource = autoValue_SupportedSurfaceCombination_FeatureSettings.f1411h ? SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE : SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
            SurfaceSizeDefinition surfaceSizeDefinitionL = l(iM);
            int i4 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a;
            SurfaceConfig.f2350e.getClass();
            arrayList4.add(SurfaceConfig.Companion.b(iM, size, surfaceSizeDefinitionL, i4, configSource, streamUseCaseR));
            map2.put(Integer.valueOf(arrayList4.size() - 1), useCaseConfig);
            iMin = Math.min(iMin, e(useCaseConfig.m(), size, autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f));
        }
        return new Pair(arrayList4, Integer.valueOf(iMin));
    }

    public final SurfaceSizeDefinition l(int i2) {
        StreamConfigurationMap streamConfigurationMap;
        Integer numValueOf = Integer.valueOf(i2);
        ArrayList arrayList = this.x;
        if (!arrayList.contains(numValueOf)) {
            p(this.w.i(), SizeUtil.f2518e, i2);
            p(this.w.h(), SizeUtil.g, i2);
            o(this.w.f(), i2, null);
            o(this.w.d(), i2, AspectRatioUtil.f2380a);
            o(this.w.c(), i2, AspectRatioUtil.f2382c);
            Map mapJ = this.w.j();
            if (Build.VERSION.SDK_INT >= 31 && this.t && (streamConfigurationMap = (StreamConfigurationMap) this.m.a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION)) != null) {
                mapJ.put(Integer.valueOf(i2), f(streamConfigurationMap, i2, true, null));
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return this.w;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v10 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r36v0 */
    /* JADX WARN: Type inference failed for: r36v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r36v2 */
    /* JADX WARN: Type inference failed for: r36v3 */
    /* JADX WARN: Type inference failed for: r49v2 */
    /* JADX WARN: Type inference failed for: r49v5, types: [androidx.camera.core.impl.SurfaceStreamSpecQueryResult] */
    /* JADX WARN: Type inference failed for: r49v6 */
    /* JADX WARN: Type inference failed for: r52v0, types: [java.util.HashMap] */
    public final SurfaceStreamSpecQueryResult n(FeatureSettings featureSettings, ArrayList arrayList, Map map, ArrayList arrayList2, ArrayList arrayList3, HashMap map2) {
        int i2;
        ?? r49;
        List list;
        int i3;
        FeatureSettings featureSettings2;
        HashMap map3;
        HashMap map4;
        int i4;
        ?? r1;
        ?? r25;
        HashMap map5;
        HashMap map6;
        String str;
        String str2;
        HashMap map7;
        HashMap map8;
        ArrayList arrayList4;
        Range range;
        int i5;
        ?? r35;
        ?? r36;
        SupportedSurfaceCombination supportedSurfaceCombination;
        HashMap map9;
        ?? r26;
        HashMap map10;
        List list2;
        Size sizeF;
        SupportedSurfaceCombination supportedSurfaceCombination2 = this;
        Map map11 = map;
        Objects.toString(featureSettings);
        String str3 = "SupportedSurfaceCombination";
        Logger.c(3, "SupportedSurfaceCombination");
        AutoValue_SupportedSurfaceCombination_FeatureSettings autoValue_SupportedSurfaceCombination_FeatureSettings = (AutoValue_SupportedSurfaceCombination_FeatureSettings) featureSettings;
        String str4 = "No supported surface combination is found for camera device - Id : ";
        if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1411h) {
            i2 = 1;
        } else {
            ArrayList arrayList5 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList5.add(((AttachedSurfaceInfo) it.next()).h());
            }
            CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
            for (UseCaseConfig useCaseConfig : map11.keySet()) {
                List list3 = (List) map11.get(useCaseConfig);
                Preconditions.b((list3 == null || list3.isEmpty()) ? false : true, "No available output size is found for " + useCaseConfig + FileUtils.HIDDEN_PREFIX);
                Size size = (Size) Collections.min(list3, compareSizesByArea);
                int iM = useCaseConfig.m();
                SurfaceSizeDefinition surfaceSizeDefinitionL = supportedSurfaceCombination2.l(iM);
                int i6 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a;
                SurfaceConfig.ConfigSource configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
                StreamUseCase streamUseCaseR = useCaseConfig.R();
                SurfaceConfig.f2350e.getClass();
                arrayList5.add(SurfaceConfig.Companion.b(iM, size, surfaceSizeDefinitionL, i6, configSource, streamUseCaseR));
            }
            i2 = 1;
            Map map12 = Collections.EMPTY_MAP;
            List list4 = Collections.EMPTY_LIST;
            if (!supportedSurfaceCombination2.a(featureSettings, arrayList5, map12, list4, list4)) {
                throw new IllegalArgumentException("No supported surface combination is found for camera device - Id : " + supportedSurfaceCombination2.f1628k + ".  May be attempting to bind too many use cases. Existing surfaces: " + arrayList + ". New configs: " + arrayList2 + ". GroupableFeature settings: " + featureSettings);
            }
        }
        HashMap map13 = new HashMap();
        Iterator it2 = map11.keySet().iterator();
        Map map14 = map11;
        while (it2.hasNext()) {
            UseCaseConfig useCaseConfig2 = (UseCaseConfig) it2.next();
            ArrayList arrayList6 = new ArrayList();
            HashMap map15 = new HashMap();
            List list5 = (List) map14.get(useCaseConfig2);
            Objects.requireNonNull(list5);
            Iterator it3 = list5.iterator();
            while (it3.hasNext()) {
                Size size2 = (Size) it3.next();
                int iM2 = useCaseConfig2.m();
                StreamUseCase streamUseCaseR2 = useCaseConfig2.R();
                Range range2 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i;
                SurfaceSizeDefinition surfaceSizeDefinitionL2 = supportedSurfaceCombination2.l(iM2);
                Iterator it4 = it2;
                int i7 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1406a;
                SurfaceConfig.ConfigSource configSource2 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1411h ? SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE : SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
                SurfaceConfig.f2350e.getClass();
                SurfaceConfig.ConfigSize configSize = SurfaceConfig.Companion.b(iM2, size2, surfaceSizeDefinitionL2, i7, configSource2, streamUseCaseR2).f2355b;
                Range range3 = StreamSpec.f2348a;
                int iE = range3.equals(range2) ? Integer.MAX_VALUE : supportedSurfaceCombination2.e(iM2, size2, autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f);
                if (!autoValue_SupportedSurfaceCombination_FeatureSettings.g || (configSize != SurfaceConfig.ConfigSize.NOT_SUPPORT && (range3.equals(range2) || iE >= ((Integer) range2.getUpper()).intValue()))) {
                    Set hashSet = (Set) map15.get(configSize);
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map15.put(configSize, hashSet);
                    }
                    if (!hashSet.contains(Integer.valueOf(iE))) {
                        arrayList6.add(size2);
                        hashSet.add(Integer.valueOf(iE));
                    }
                }
                it3 = it3;
                it2 = it4;
            }
            map13.put(useCaseConfig2, arrayList6);
            map14 = map;
        }
        ArrayList arrayList7 = new ArrayList();
        Iterator it5 = arrayList3.iterator();
        while (true) {
            Rational rational = null;
            if (!it5.hasNext()) {
                if (autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f) {
                    supportedSurfaceCombination2.C.getClass();
                    if (arrayList7.isEmpty()) {
                        list2 = EmptyList.f71768b;
                    } else {
                        List<Size> listA = HighSpeedResolver.a(arrayList7);
                        ArrayList arrayList8 = new ArrayList(CollectionsKt.t(listA, 10));
                        for (Size size3 : listA) {
                            int size4 = arrayList7.size();
                            ArrayList arrayList9 = new ArrayList(size4);
                            for (int i8 = 0; i8 < size4; i8++) {
                                arrayList9.add(size3);
                            }
                            arrayList8.add(arrayList9);
                        }
                        list2 = arrayList8;
                    }
                    r49 = 0;
                    list = list2;
                } else {
                    Iterator it6 = arrayList7.iterator();
                    int size5 = i2;
                    while (it6.hasNext()) {
                        size5 *= ((List) it6.next()).size();
                    }
                    if (size5 == 0) {
                        md.n("Failed to find supported resolutions.");
                        return null;
                    }
                    ArrayList arrayList10 = new ArrayList();
                    for (int i9 = 0; i9 < size5; i9++) {
                        arrayList10.add(new ArrayList());
                    }
                    int size6 = size5 / ((List) arrayList7.get(0)).size();
                    int i10 = size5;
                    int i11 = 0;
                    while (i11 < arrayList7.size()) {
                        List list6 = (List) arrayList7.get(i11);
                        int i12 = 0;
                        while (i12 < size5) {
                            ((List) arrayList10.get(i12)).add((Size) list6.get((i12 % i10) / size6));
                            i12++;
                            rational = rational;
                        }
                        Rational rational2 = rational;
                        if (i11 < arrayList7.size() - 1) {
                            i10 = size6;
                            size6 /= ((List) arrayList7.get(i11 + 1)).size();
                        }
                        i11++;
                        rational = rational2;
                    }
                    r49 = rational;
                    list = arrayList10;
                }
                HashMap map16 = new HashMap();
                HashMap map17 = new HashMap();
                HashMap map18 = new HashMap();
                HashMap map19 = new HashMap();
                Config.Option option = StreamUseCaseUtil.f1617a;
                Iterator it7 = arrayList.iterator();
                while (true) {
                    if (!it7.hasNext()) {
                        Iterator it8 = arrayList2.iterator();
                        while (true) {
                            if (!it8.hasNext()) {
                                i3 = 0;
                                break;
                            }
                            UseCaseConfig useCaseConfig3 = (UseCaseConfig) it8.next();
                            UseCaseConfigFactory.CaptureType captureTypeS = useCaseConfig3.S();
                            captureTypeS.getClass();
                            if (StreamUseCaseUtil.e(useCaseConfig3, captureTypeS)) {
                            }
                        }
                    } else {
                        AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) it7.next();
                        List listB = attachedSurfaceInfo.b();
                        listB.getClass();
                        UseCaseConfigFactory.CaptureType captureType = (UseCaseConfigFactory.CaptureType) listB.get(0);
                        Config configE = attachedSurfaceInfo.e();
                        configE.getClass();
                        captureType.getClass();
                        if (StreamUseCaseUtil.e(configE, captureType)) {
                        }
                    }
                    i3 = i2;
                    break;
                }
                boolean z = autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f;
                Iterator it9 = arrayList.iterator();
                int iMin = Integer.MAX_VALUE;
                while (it9.hasNext()) {
                    AttachedSurfaceInfo attachedSurfaceInfo2 = (AttachedSurfaceInfo) it9.next();
                    iMin = Math.min(iMin, supportedSurfaceCombination2.e(attachedSurfaceInfo2.d(), attachedSurfaceInfo2.g(), z));
                }
                if (supportedSurfaceCombination2.s && i3 == 0) {
                    Iterator it10 = list.iterator();
                    ?? G = r49;
                    while (true) {
                        if (!it10.hasNext()) {
                            featureSettings2 = featureSettings;
                            map3 = map18;
                            map4 = map19;
                            i4 = 0;
                            break;
                        }
                        i4 = 0;
                        featureSettings2 = featureSettings;
                        map3 = map18;
                        map4 = map19;
                        G = supportedSurfaceCombination2.g(featureSettings2, (List) supportedSurfaceCombination2.k(featureSettings, arrayList, (List) it10.next(), arrayList2, arrayList3, iMin, map18, map19).first, map3, map4);
                        if (G != 0) {
                            break;
                        }
                        map3.clear();
                        map4.clear();
                        map18 = map3;
                        map19 = map4;
                        G = G;
                    }
                    Objects.toString(G);
                    Logger.c(3, "SupportedSurfaceCombination");
                    r1 = G;
                } else {
                    featureSettings2 = featureSettings;
                    map3 = map18;
                    map4 = map19;
                    i4 = 0;
                    r1 = r49;
                }
                Range range4 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i;
                Iterator it11 = list.iterator();
                ?? r21 = r49;
                ?? r22 = r21;
                int i13 = i4;
                int i14 = i13;
                int i15 = Integer.MAX_VALUE;
                int i16 = Integer.MAX_VALUE;
                SupportedSurfaceCombination supportedSurfaceCombination3 = supportedSurfaceCombination2;
                ?? r2 = r1;
                ?? r23 = r21;
                while (true) {
                    if (!it11.hasNext()) {
                        r25 = r2;
                        map5 = map3;
                        map6 = map4;
                        str = str3;
                        str2 = str4;
                        map7 = map16;
                        map8 = map17;
                        arrayList4 = arrayList2;
                        range = range4;
                        i5 = i16;
                        r35 = r23;
                        r36 = r22;
                        supportedSurfaceCombination = supportedSurfaceCombination3;
                        break;
                    }
                    List list7 = (List) it11.next();
                    int i17 = i15;
                    HashMap map20 = new HashMap();
                    int i18 = i16;
                    HashMap map21 = new HashMap();
                    map5 = map3;
                    map6 = map4;
                    Iterator it12 = it11;
                    map8 = map17;
                    map7 = map16;
                    range = range4;
                    str2 = str4;
                    ?? r27 = r2;
                    Pair pairK = supportedSurfaceCombination3.k(featureSettings2, arrayList, list7, arrayList2, arrayList3, iMin, map20, map21);
                    int i19 = iMin;
                    List list8 = (List) pairK.first;
                    int iIntValue = ((Integer) pairK.second).intValue();
                    int i20 = (StreamSpec.f2348a.equals(range) || iIntValue >= i19 || iIntValue >= ((Integer) range.getUpper()).intValue()) ? i2 : i4;
                    HashMap map22 = new HashMap();
                    int i21 = i4;
                    while (i21 < list8.size()) {
                        SurfaceConfig surfaceConfig = (SurfaceConfig) list8.get(i21);
                        DynamicRange dynamicRangeC = DynamicRange.f1913c;
                        int i22 = i19;
                        if (map20.containsKey(Integer.valueOf(i21))) {
                            AttachedSurfaceInfo attachedSurfaceInfo3 = (AttachedSurfaceInfo) map20.get(Integer.valueOf(i21));
                            Objects.requireNonNull(attachedSurfaceInfo3);
                            dynamicRangeC = attachedSurfaceInfo3.c();
                        } else if (map21.containsKey(Integer.valueOf(i21))) {
                            UseCaseConfig useCaseConfig4 = (UseCaseConfig) map21.get(Integer.valueOf(i21));
                            Objects.requireNonNull(useCaseConfig4);
                            dynamicRangeC = (DynamicRange) map2.get(useCaseConfig4);
                        }
                        map22.put(surfaceConfig, dynamicRangeC);
                        i21++;
                        i19 = i22;
                    }
                    int i23 = i19;
                    str = str3;
                    j4 j4Var = new j4(this, featureSettings, list8, map22, arrayList2, arrayList3, 2);
                    SupportedSurfaceCombination supportedSurfaceCombination4 = this;
                    arrayList4 = arrayList2;
                    UnsafeLazyImpl unsafeLazyImpl = new UnsafeLazyImpl(j4Var);
                    if (i13 == 0 && ((Boolean) unsafeLazyImpl.getF71699b()).booleanValue()) {
                        if (i17 != Integer.MAX_VALUE && i17 >= iIntValue) {
                            i15 = i17;
                        } else {
                            i15 = iIntValue;
                            r23 = list7;
                        }
                        if (i20 != 0) {
                            if (i14 != 0) {
                                i5 = i18;
                                i15 = iIntValue;
                                r36 = r22;
                                r35 = list7;
                                supportedSurfaceCombination = supportedSurfaceCombination4;
                                r25 = r27;
                                break;
                            }
                            i15 = iIntValue;
                            i13 = i2;
                            r23 = list7;
                        }
                    } else {
                        i15 = i17;
                    }
                    if (r27 == 0 || i14 != 0 || supportedSurfaceCombination4.g(featureSettings, list8, map20, map21) == null) {
                        i16 = i18;
                    } else {
                        if (i18 != Integer.MAX_VALUE && i18 >= iIntValue) {
                            i16 = i18;
                        } else {
                            i16 = iIntValue;
                            r22 = list7;
                        }
                        if (i20 == 0) {
                            r22 = r22;
                            continue;
                        } else {
                            if (i13 != 0) {
                                i5 = iIntValue;
                                r35 = r23;
                                r36 = list7;
                                supportedSurfaceCombination = supportedSurfaceCombination4;
                                r25 = r27;
                                break;
                            }
                            i16 = iIntValue;
                            i14 = i2;
                            r22 = list7;
                        }
                    }
                    featureSettings2 = featureSettings;
                    range4 = range;
                    str4 = str2;
                    map16 = map7;
                    r2 = r27;
                    it11 = it12;
                    map3 = map5;
                    map4 = map6;
                    map17 = map8;
                    iMin = i23;
                    str3 = str;
                    supportedSurfaceCombination3 = supportedSurfaceCombination4;
                    r23 = r23;
                    r22 = r22;
                }
                AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs = (!autoValue_SupportedSurfaceCombination_FeatureSettings.g || StreamSpec.f2348a.equals(range) || (i15 != Integer.MAX_VALUE && i15 >= ((Integer) range.getUpper()).intValue())) ? new AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs(r35, r36, i15, i5, Integer.MAX_VALUE) : new AutoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs(null, null, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
                autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.toString();
                Logger.c(3, str);
                List list9 = autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1402a;
                int i24 = autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1404c;
                List list10 = autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1403b;
                int i25 = autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.d;
                int i26 = autoValue_SupportedSurfaceCombination_BestSizesAndMaxFpsForConfigs.f1405e;
                if (list9 == null) {
                    throw new IllegalArgumentException(str2 + supportedSurfaceCombination.f1628k + " and Hardware level: " + supportedSurfaceCombination.o + ". May be the specified resolution is too large and not supported. Existing surfaces: " + arrayList + " New configs: " + arrayList4);
                }
                Range rangeD = StreamSpec.f2348a;
                boolean zEquals = rangeD.equals(autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i);
                boolean z2 = autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f;
                if (!zEquals) {
                    Range[] rangeArrB = z2 ? supportedSurfaceCombination.C.b(list9) : (Range[]) supportedSurfaceCombination.m.a(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
                    Range rangeD2 = d(autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i, i24, rangeArrB);
                    if (autoValue_SupportedSurfaceCombination_FeatureSettings.g || autoValue_SupportedSurfaceCombination_FeatureSettings.f1413j) {
                        Preconditions.b(rangeD2.equals(autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i), "Target FPS range " + autoValue_SupportedSurfaceCombination_FeatureSettings.f1412i + " is not supported. Max FPS supported by the calculated best combination: " + i24 + ". Calculated best FPS range for device: " + rangeD2 + ". Device supported FPS ranges: " + Arrays.toString(rangeArrB));
                    }
                    rangeD = rangeD2;
                } else if (z2) {
                    rangeD = d(HighSpeedResolver.f1590f, i24, supportedSurfaceCombination.C.b(list9));
                }
                Iterator it13 = arrayList4.iterator();
                while (it13.hasNext()) {
                    UseCaseConfig useCaseConfig5 = (UseCaseConfig) it13.next();
                    StreamSpec.Builder builderA = StreamSpec.a((Size) list9.get(arrayList3.indexOf(Integer.valueOf(arrayList4.indexOf(useCaseConfig5)))));
                    builderA.g(autoValue_SupportedSurfaceCombination_FeatureSettings.f1410f ? 1 : 0);
                    DynamicRange dynamicRange = (DynamicRange) map2.get(useCaseConfig5);
                    dynamicRange.getClass();
                    builderA.b(dynamicRange);
                    useCaseConfig5.getClass();
                    MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
                    Config.Option option2 = Camera2ImplConfig.O;
                    Iterator it14 = it13;
                    if (useCaseConfig5.b(option2)) {
                        mutableOptionsBundleD0.o(option2, useCaseConfig5.a(option2));
                    }
                    Config.Option option3 = UseCaseConfig.C;
                    if (useCaseConfig5.b(option3)) {
                        mutableOptionsBundleD0.o(option3, useCaseConfig5.a(option3));
                    }
                    Config.Option option4 = ImageCaptureConfig.N;
                    if (useCaseConfig5.b(option4)) {
                        mutableOptionsBundleD0.o(option4, useCaseConfig5.a(option4));
                    }
                    Config.Option option5 = ImageInputConfig.f2303h;
                    if (useCaseConfig5.b(option5)) {
                        mutableOptionsBundleD0.o(option5, useCaseConfig5.a(option5));
                    }
                    builderA.d(new Camera2ImplConfig(mutableOptionsBundleD0));
                    builderA.h(autoValue_SupportedSurfaceCombination_FeatureSettings.f1407b);
                    if (!StreamSpec.f2348a.equals(rangeD)) {
                        builderA.c(rangeD);
                    }
                    map8.put(useCaseConfig5, builderA.a());
                    it13 = it14;
                }
                HashMap map23 = map8;
                if (r25 == 0 || i24 != i25 || list9.size() != list10.size()) {
                    map9 = map7;
                    break;
                }
                int i27 = i4;
                while (true) {
                    if (i27 >= list9.size()) {
                        map9 = map7;
                        if (!StreamUseCaseUtil.f(supportedSurfaceCombination.m, arrayList, map23, map9)) {
                            int size7 = ((Collection) r25).size();
                            int i28 = i4;
                            while (i28 < size7) {
                                ?? r3 = r26;
                                long value = ((SurfaceConfig) r3.get(i28)).f2356c.getValue();
                                HashMap map24 = map5;
                                if (map24.containsKey(Integer.valueOf(i28))) {
                                    AttachedSurfaceInfo attachedSurfaceInfo4 = (AttachedSurfaceInfo) map24.get(Integer.valueOf(i28));
                                    attachedSurfaceInfo4.getClass();
                                    Config configE2 = attachedSurfaceInfo4.e();
                                    configE2.getClass();
                                    Camera2ImplConfig camera2ImplConfigB = StreamUseCaseUtil.b(configE2, Long.valueOf(value));
                                    if (camera2ImplConfigB != null) {
                                        r26 = r25;
                                        map9.put(attachedSurfaceInfo4, attachedSurfaceInfo4.k(camera2ImplConfigB));
                                    }
                                    r26 = r25;
                                    map10 = map6;
                                } else {
                                    map10 = map6;
                                    if (!map10.containsKey(Integer.valueOf(i28))) {
                                        r26 = r25;
                                        md.h("SurfaceConfig does not map to any use case");
                                        return r49;
                                    }
                                    Object obj = map10.get(Integer.valueOf(i28));
                                    obj.getClass();
                                    UseCaseConfig useCaseConfig6 = (UseCaseConfig) obj;
                                    StreamSpec streamSpec = (StreamSpec) map23.get(useCaseConfig6);
                                    streamSpec.getClass();
                                    Config configD = streamSpec.d();
                                    configD.getClass();
                                    Camera2ImplConfig camera2ImplConfigB2 = StreamUseCaseUtil.b(configD, Long.valueOf(value));
                                    if (camera2ImplConfigB2 != null) {
                                        r26 = r25;
                                        StreamSpec.Builder builderI = streamSpec.i();
                                        builderI.d(camera2ImplConfigB2);
                                        map23.put(useCaseConfig6, builderI.a());
                                    } else {
                                        r26 = r25;
                                    }
                                }
                                i28++;
                                r26 = r3;
                                map5 = map24;
                                map6 = map10;
                            }
                            r26 = r25;
                            break;
                        }
                        break;
                    }
                    if (!((Size) list9.get(i27)).equals(list10.get(i27))) {
                        map9 = map7;
                        break;
                    }
                    i27++;
                }
                return new SurfaceStreamSpecQueryResult(map23, map9, i26);
            }
            UseCaseConfig useCaseConfig7 = (UseCaseConfig) arrayList2.get(((Integer) it5.next()).intValue());
            List<Size> list11 = (List) map13.get(useCaseConfig7);
            if (list11 == null) {
                list11 = Collections.EMPTY_LIST;
            }
            int iM3 = useCaseConfig7.m();
            TargetAspectRatio targetAspectRatio = supportedSurfaceCombination2.z;
            CameraCharacteristicsCompat cameraCharacteristicsCompat = supportedSurfaceCombination2.m;
            targetAspectRatio.getClass();
            int i29 = (((Nexus4AndroidLTargetAspectRatioQuirk) DeviceQuirks.f1731a.b(Nexus4AndroidLTargetAspectRatioQuirk.class)) == null && ((AspectRatioLegacyApi21Quirk) CameraQuirks.a(cameraCharacteristicsCompat).b(AspectRatioLegacyApi21Quirk.class)) == null) ? 3 : 2;
            if (i29 == 2) {
                Size sizeE = supportedSurfaceCombination2.l(256).e(256);
                if (sizeE != null) {
                    rational = new Rational(sizeE.getWidth(), sizeE.getHeight());
                }
            } else if (i29 != 3) {
                md.h(pq0.k(i29, "Undefined targetAspectRatio: "));
                return null;
            }
            if (rational != null) {
                ArrayList arrayList11 = new ArrayList();
                ArrayList arrayList12 = new ArrayList();
                for (Size size8 : list11) {
                    Rational rational3 = AspectRatioUtil.f2380a;
                    if (AspectRatioUtil.a(size8, rational, SizeUtil.f2517c)) {
                        arrayList11.add(size8);
                    } else {
                        arrayList12.add(size8);
                    }
                }
                arrayList12.addAll(0, arrayList11);
                list11 = arrayList12;
            }
            ResolutionCorrector resolutionCorrector = supportedSurfaceCombination2.A;
            SurfaceConfig.f2350e.getClass();
            SurfaceConfig.ConfigType configType = (SurfaceConfig.ConfigType) SurfaceConfig.f2353i.get(Integer.valueOf(iM3));
            if (configType == null) {
                configType = SurfaceConfig.ConfigType.PRIV;
            }
            if (resolutionCorrector.f1780a != null && (sizeF = ExtraCroppingQuirk.f(configType)) != null) {
                ArrayList arrayList13 = new ArrayList();
                arrayList13.add(sizeF);
                for (Size size9 : list11) {
                    if (!size9.equals(sizeF)) {
                        arrayList13.add(size9);
                    }
                }
                list11 = arrayList13;
            }
            arrayList7.add(list11);
        }
    }

    public final void o(Map map, int i2, Rational rational) {
        Size sizeF = f(this.m.c().g(), i2, true, rational);
        if (sizeF != null) {
            map.put(Integer.valueOf(i2), sizeF);
        }
    }

    public final void p(Map map, Size size, int i2) {
        if (this.r) {
            Size sizeF = f(this.m.c().g(), i2, false, null);
            Integer numValueOf = Integer.valueOf(i2);
            if (sizeF != null) {
                size = (Size) Collections.min(Arrays.asList(size, sizeF), new CompareSizesByArea());
            }
            map.put(numValueOf, size);
        }
    }
}
