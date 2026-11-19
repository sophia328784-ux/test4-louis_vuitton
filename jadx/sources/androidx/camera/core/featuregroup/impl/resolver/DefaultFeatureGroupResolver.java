package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver;", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfoInternal", "<init>", "(Landroidx/camera/core/impl/CameraInfoInternal;)V", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefaultFeatureGroupResolver implements FeatureGroupResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraInfoInternal f2036a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2037a;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f2037a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public DefaultFeatureGroupResolver(CameraInfoInternal cameraInfoInternal) {
        cameraInfoInternal.getClass();
        this.f2036a = cameraInfoInternal;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    public static FeatureGroupResolutionResult.UseCaseMissing b(GroupableFeature groupableFeature, List list) {
        boolean z;
        String string;
        List<UseCase> list2 = list;
        boolean z2 = list2 instanceof Collection;
        boolean z3 = false;
        if (!z2 || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (((UseCase) it.next()) instanceof ImageCapture) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (!z2 || !list2.isEmpty()) {
            for (UseCase useCase : list2) {
                if ((useCase instanceof Preview) || CameraUseCaseAdapter.C(useCase)) {
                    z3 = true;
                    break;
                }
            }
        }
        int i2 = WhenMappings.f2037a[groupableFeature.getF2032e().ordinal()];
        if (i2 == 1) {
            string = UseCaseType.IMAGE_CAPTURE.toString();
            if (z) {
                string = null;
            }
        } else {
            if (i2 != 2 && i2 != 3 && i2 != 4) {
                v40.g();
                return null;
            }
            string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE;
            if (z3) {
                string = null;
            }
        }
        if (string != null) {
            return new FeatureGroupResolutionResult.UseCaseMissing(string, groupableFeature);
        }
        return null;
    }

    public final FeatureGroupResolutionResult a(LegacySessionConfig legacySessionConfig, ArrayList arrayList, int i2, List list) {
        if (i2 < arrayList.size()) {
            int i3 = i2 + 1;
            FeatureGroupResolutionResult featureGroupResolutionResultA = a(legacySessionConfig, arrayList, i3, CollectionsKt.X(arrayList.get(i2), list));
            return featureGroupResolutionResultA instanceof FeatureGroupResolutionResult.Supported ? featureGroupResolutionResultA : a(legacySessionConfig, arrayList, i3, list);
        }
        LinkedHashSet linkedHashSetF = SetsKt.f(legacySessionConfig.d, list);
        linkedHashSetF.toString();
        Objects.toString(legacySessionConfig.f1966f);
        Logger.c(3, "DefaultFeatureGroupResolver");
        return this.f2036a.o(new ResolvedFeatureGroup(linkedHashSetF), legacySessionConfig) ? new FeatureGroupResolutionResult.Supported(new ResolvedFeatureGroup(linkedHashSetF)) : FeatureGroupResolutionResult.Unsupported.f2039a;
    }
}
