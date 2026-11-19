package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.resolver.DefaultFeatureGroupResolver;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.impl.CameraInfoInternal;
import defpackage.a61;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;", "", "", "Landroidx/camera/core/featuregroup/GroupableFeature;", "features", "<init>", "(Ljava/util/Set;)V", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ResolvedFeatureGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f2023b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f2024a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static ResolvedFeatureGroup a(Companion companion, LegacySessionConfig legacySessionConfig, CameraInfoInternal cameraInfoInternal) {
            FeatureGroupResolutionResult featureGroupResolutionResultA;
            List list = legacySessionConfig.f1965e;
            DefaultFeatureGroupResolver defaultFeatureGroupResolver = new DefaultFeatureGroupResolver(cameraInfoInternal);
            companion.getClass();
            cameraInfoInternal.getClass();
            Objects.toString(legacySessionConfig);
            cameraInfoInternal.g();
            Logger.c(3, "ResolvedFeatureGroup");
            Set set = legacySessionConfig.d;
            if (set.isEmpty() && list.isEmpty()) {
                return null;
            }
            List list2 = legacySessionConfig.f1966f;
            if (set.isEmpty() && list.isEmpty()) {
                md.n("Must have at least one required or preferred feature");
                return null;
            }
            Iterator it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    UseCase useCase = (UseCase) it.next();
                    UseCaseType.INSTANCE.getClass();
                    if (UseCaseType.Companion.a(useCase) == UseCaseType.UNDEFINED) {
                        featureGroupResolutionResultA = new FeatureGroupResolutionResult.UnsupportedUseCase(useCase);
                        break;
                    }
                } else {
                    Iterator it2 = set.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : list) {
                                FeatureGroupResolutionResult.UseCaseMissing useCaseMissingB = DefaultFeatureGroupResolver.b((GroupableFeature) obj, list2);
                                if (useCaseMissingB != null) {
                                    useCaseMissingB.toString();
                                    Logger.c(3, "DefaultFeatureGroupResolver");
                                } else {
                                    useCaseMissingB = null;
                                }
                                if (useCaseMissingB == null) {
                                    arrayList.add(obj);
                                }
                            }
                            arrayList.toString();
                            Logger.c(3, "DefaultFeatureGroupResolver");
                            featureGroupResolutionResultA = defaultFeatureGroupResolver.a(legacySessionConfig, arrayList, 0, EmptyList.f71768b);
                            break;
                        }
                        FeatureGroupResolutionResult.UseCaseMissing useCaseMissingB2 = DefaultFeatureGroupResolver.b((GroupableFeature) it2.next(), list2);
                        if (useCaseMissingB2 != null) {
                            featureGroupResolutionResultA = useCaseMissingB2;
                            break;
                        }
                    }
                }
            }
            if (featureGroupResolutionResultA instanceof FeatureGroupResolutionResult.Supported) {
                ResolvedFeatureGroup resolvedFeatureGroup = ((FeatureGroupResolutionResult.Supported) featureGroupResolutionResultA).f2038a;
                Objects.toString(resolvedFeatureGroup);
                Logger.c(3, "ResolvedFeatureGroup");
                return resolvedFeatureGroup;
            }
            if (featureGroupResolutionResultA instanceof FeatureGroupResolutionResult.Unsupported) {
                md.n("Feature group is not supported");
                return null;
            }
            if (featureGroupResolutionResultA instanceof FeatureGroupResolutionResult.UnsupportedUseCase) {
                a61.l(((FeatureGroupResolutionResult.UnsupportedUseCase) featureGroupResolutionResultA).f2040a, " is not supported");
                return null;
            }
            if (!(featureGroupResolutionResultA instanceof FeatureGroupResolutionResult.UseCaseMissing)) {
                v40.g();
                return null;
            }
            FeatureGroupResolutionResult.UseCaseMissing useCaseMissing = (FeatureGroupResolutionResult.UseCaseMissing) featureGroupResolutionResultA;
            a61.m(useCaseMissing.f2041a, " must be added for ", useCaseMissing.f2042b);
            return null;
        }
    }

    public ResolvedFeatureGroup(Set<? extends GroupableFeature> set) {
        set.getClass();
        this.f2024a = set;
    }

    public final String toString() {
        return "ResolvedFeatureGroup(features=" + this.f2024a + ')';
    }
}
