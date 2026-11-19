package androidx.camera.core;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import defpackage.az;
import defpackage.b21;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import defpackage.ot;
import defpackage.tg0;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001Bc\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0002¢\u0006\u0004\b\u0010\u0010\u0011B\u001d\b\u0016\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0012\"\u00020\u0003¢\u0006\u0004\b\u0010\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/camera/core/SessionConfig;", "", "", "Landroidx/camera/core/UseCase;", "useCases", "Landroidx/camera/core/ViewPort;", "viewPort", "Landroidx/camera/core/CameraEffect;", "effects", "Landroid/util/Range;", "", "frameRateRange", "", "Landroidx/camera/core/featuregroup/GroupableFeature;", "requiredFeatureGroup", "preferredFeatureGroup", "<init>", "(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;)V", "", "([Landroidx/camera/core/UseCase;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class SessionConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewPort f1962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f1963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Range f1964c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f1965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f1966f;
    public final ot g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f1967h;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1968a;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f1968a = iArr;
        }
    }

    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range, Set<? extends GroupableFeature> set, List<? extends GroupableFeature> list3) {
        Object next;
        String str;
        String str2;
        String str3;
        boolean zK;
        list.getClass();
        list2.getClass();
        range.getClass();
        set.getClass();
        list3.getClass();
        this.f1962a = viewPort;
        this.f1963b = list2;
        this.f1964c = range;
        this.d = set;
        this.f1965e = list3;
        List listY0 = CollectionsKt.y0(CollectionsKt.A0(list));
        this.f1966f = listY0;
        this.g = new ot(5);
        ScheduledExecutorService scheduledExecutorServiceC = CameraXExecutors.c();
        scheduledExecutorServiceC.getClass();
        this.f1967h = scheduledExecutorServiceC;
        if (!range.equals(StreamSpec.f2348a)) {
            Iterator it = listY0.iterator();
            while (it.hasNext()) {
                if (((UseCase) it.next()).f1994f.a0()) {
                    md.n("Can't set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig.");
                    throw null;
                }
            }
        }
        List list4 = this.f1965e;
        Set set2 = this.d;
        if (set2.isEmpty() && list4.isEmpty()) {
            return;
        }
        Set set3 = set2;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(set3, 10));
        Iterator it2 = set3.iterator();
        while (it2.hasNext()) {
            arrayList.add(((GroupableFeature) it2.next()).getD());
        }
        for (FeatureTypeInternal featureTypeInternal : CollectionsKt.y0(CollectionsKt.A0(arrayList))) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set3) {
                if (((GroupableFeature) obj).getD() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                tg0.n(arrayList2, "requiredFeatures has conflicting feature values: ");
                throw null;
            }
        }
        List list5 = list4;
        list5.getClass();
        if (CollectionsKt.y0(CollectionsKt.A0(list5)).size() != list4.size()) {
            az.q("Duplicate values in preferredFeatures(", 41, list4);
            throw null;
        }
        LinkedHashSet linkedHashSetI = CollectionsKt.I(set3, list4);
        if (!linkedHashSetI.isEmpty()) {
            tg0.n(linkedHashSetI, "requiredFeatures and preferredFeatures have duplicate values: ");
            throw null;
        }
        for (UseCase useCase : this.f1966f) {
            UseCaseType.INSTANCE.getClass();
            if (UseCaseType.Companion.a(useCase) == UseCaseType.UNDEFINED) {
                lc0.i(useCase, " is not supported with feature group");
                throw null;
            }
            String str4 = useCase instanceof Preview ? "Preview" : useCase instanceof ImageCapture ? "ImageCapture" : CameraUseCaseAdapter.C(useCase) ? "VideoCapture" : "UseCase";
            Iterator<E> it3 = FeatureTypeInternal.a().iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
                UseCaseType.INSTANCE.getClass();
                int i2 = UseCaseType.Companion.WhenMappings.f2026b[((FeatureTypeInternal) next).ordinal()];
                if (i2 == 1) {
                    zK = useCase.f1994f.K();
                } else if (i2 == 2) {
                    zK = useCase.f1994f.a0();
                } else if (i2 == 3) {
                    zK = useCase.f1994f.b(UseCaseConfig.F) || useCase.f1994f.b(UseCaseConfig.G);
                } else {
                    if (i2 != 4) {
                        v40.g();
                        throw null;
                    }
                    zK = useCase.f1994f.b(ImageCaptureConfig.R);
                }
            } while (!zK);
            FeatureTypeInternal featureTypeInternal2 = (FeatureTypeInternal) next;
            if (featureTypeInternal2 != null) {
                StringBuilder sb = new StringBuilder("A ");
                sb.append(featureTypeInternal2.name());
                sb.append(" value is set to ");
                sb.append(str4);
                sb.append(" despite using feature groups. Do not use APIs like ");
                sb.append(str4);
                sb.append(".Builder.");
                int[] iArr = WhenMappings.f1968a;
                int i3 = iArr[featureTypeInternal2.ordinal()];
                if (i3 == 1) {
                    str = "setDynamicRange";
                } else if (i3 == 2) {
                    str = "setTargetFrameRateRange";
                } else if (i3 == 3) {
                    str = CameraUseCaseAdapter.C(useCase) ? "setVideoStabilizationEnabled" : "setPreviewStabilizationEnabled";
                } else {
                    if (i3 != 4) {
                        v40.g();
                        throw null;
                    }
                    str = "setOutputFormat";
                }
                sb.append(str);
                sb.append(" while using feature groups. If ");
                int i4 = iArr[featureTypeInternal2.ordinal()];
                if (i4 == 1) {
                    str2 = "HDR";
                } else if (i4 == 2) {
                    str2 = "60 FPS";
                } else if (i4 == 3) {
                    str2 = "stabilization";
                } else {
                    if (i4 != 4) {
                        v40.g();
                        throw null;
                    }
                    str2 = "JPEG_R output format";
                }
                sb.append(str2);
                sb.append(" is required, instead set ");
                int i5 = iArr[featureTypeInternal2.ordinal()];
                if (i5 == 1) {
                    str3 = "GroupableFeature.HDR_HLG10";
                } else if (i5 == 2) {
                    str3 = "GroupableFeature.FPS_60";
                } else if (i5 == 3) {
                    str3 = "GroupableFeature.PREVIEW_STABILIZATION";
                } else {
                    if (i5 != 4) {
                        v40.g();
                        throw null;
                    }
                    str3 = "GroupableFeature.IMAGE_ULTRA_HDR";
                }
                b21.n(n00.r(str3, " as either a required or preferred feature.", sb));
                throw null;
            }
        }
        if (this.f1963b.isEmpty()) {
            return;
        }
        md.n("Effects aren't supported with feature group yet");
        throw null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort) {
        this(list, viewPort, null, null, null, null, 60, null);
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2) {
        this(list, viewPort, list2, null, null, null, 56, null);
        list.getClass();
        list2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range) {
        this(list, viewPort, list2, range, null, null, 48, null);
        list.getClass();
        list2.getClass();
        range.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range, Set<? extends GroupableFeature> set) {
        this(list, viewPort, list2, range, set, null, 32, null);
        list.getClass();
        list2.getClass();
        range.getClass();
        set.getClass();
    }

    public SessionConfig(List list, ViewPort viewPort, List list2, Range range, Set set, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : viewPort, (i2 & 4) != 0 ? EmptyList.f71768b : list2, (i2 & 8) != 0 ? StreamSpec.f2348a : range, (i2 & 16) != 0 ? EmptySet.f71770b : set, (i2 & 32) != 0 ? EmptyList.f71768b : list3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list) {
        this(list, null, null, null, null, null, 62, null);
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(UseCase... useCaseArr) {
        this(ArraysKt.W(useCaseArr), null, null, null, null, null, 62, null);
        useCaseArr.getClass();
    }
}
