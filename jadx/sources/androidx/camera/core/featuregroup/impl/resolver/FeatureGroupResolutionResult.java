package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "", "Supported", "UseCaseMissing", "UnsupportedUseCase", "Unsupported", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Unsupported;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UnsupportedUseCase;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface FeatureGroupResolutionResult {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;", "resolvedFeatureGroup", "<init>", "(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Supported implements FeatureGroupResolutionResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ResolvedFeatureGroup f2038a;

        public Supported(ResolvedFeatureGroup resolvedFeatureGroup) {
            resolvedFeatureGroup.getClass();
            this.f2038a = resolvedFeatureGroup;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Supported) && Intrinsics.c(this.f2038a, ((Supported) obj).f2038a);
        }

        public final int hashCode() {
            return this.f2038a.hashCode();
        }

        public final String toString() {
            return "Supported(resolvedFeatureGroup=" + this.f2038a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Unsupported;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Unsupported implements FeatureGroupResolutionResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unsupported f2039a = new Unsupported();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UnsupportedUseCase;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "Landroidx/camera/core/UseCase;", "unsupportedUseCase", "<init>", "(Landroidx/camera/core/UseCase;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UnsupportedUseCase implements FeatureGroupResolutionResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UseCase f2040a;

        public UnsupportedUseCase(UseCase useCase) {
            useCase.getClass();
            this.f2040a = useCase;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnsupportedUseCase) && Intrinsics.c(this.f2040a, ((UnsupportedUseCase) obj).f2040a);
        }

        public final int hashCode() {
            return this.f2040a.hashCode();
        }

        public final String toString() {
            return "UnsupportedUseCase(unsupportedUseCase=" + this.f2040a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "", "requiredUseCases", "Landroidx/camera/core/featuregroup/GroupableFeature;", "featureRequiring", "<init>", "(Ljava/lang/String;Landroidx/camera/core/featuregroup/GroupableFeature;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UseCaseMissing implements FeatureGroupResolutionResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f2041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GroupableFeature f2042b;

        public UseCaseMissing(String str, GroupableFeature groupableFeature) {
            str.getClass();
            groupableFeature.getClass();
            this.f2041a = str;
            this.f2042b = groupableFeature;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UseCaseMissing)) {
                return false;
            }
            UseCaseMissing useCaseMissing = (UseCaseMissing) obj;
            return Intrinsics.c(this.f2041a, useCaseMissing.f2041a) && Intrinsics.c(this.f2042b, useCaseMissing.f2042b);
        }

        public final int hashCode() {
            return this.f2042b.hashCode() + (this.f2041a.hashCode() * 31);
        }

        public final String toString() {
            return "UseCaseMissing(requiredUseCases=" + this.f2041a + ", featureRequiring=" + this.f2042b + ')';
        }
    }
}
