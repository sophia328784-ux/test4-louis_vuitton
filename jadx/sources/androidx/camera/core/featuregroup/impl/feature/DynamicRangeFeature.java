package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "Landroidx/camera/core/DynamicRange;", "dynamicRange", "<init>", "(Landroidx/camera/core/DynamicRange;)V", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DynamicRangeFeature extends GroupableFeature {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final DynamicRange f2028e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DynamicRange f2029c;
    public final FeatureTypeInternal d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0019\u0010\u0007\u001a\u00070\u0005¢\u0006\u0002\b\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature$Companion;", "", "", "TAG", "Ljava/lang/String;", "Landroidx/camera/core/DynamicRange;", "Lorg/jspecify/annotations/NonNull;", "DEFAULT_DYNAMIC_RANGE", "Landroidx/camera/core/DynamicRange;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        DynamicRange dynamicRange = DynamicRange.d;
        dynamicRange.getClass();
        f2028e = dynamicRange;
    }

    public DynamicRangeFeature(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        this.f2029c = dynamicRange;
        this.d = FeatureTypeInternal.DYNAMIC_RANGE;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FeatureTypeInternal getF2032e() {
        return this.d;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public final boolean b(CameraInfoInternal cameraInfoInternal, LegacySessionConfig legacySessionConfig) {
        cameraInfoInternal.getClass();
        Set setA = cameraInfoInternal.a();
        setA.getClass();
        Objects.toString(setA);
        toString();
        Logger.c(3, "DynamicRangeFeature");
        DynamicRange dynamicRange = this.f2029c;
        if (!setA.contains(dynamicRange)) {
            return false;
        }
        for (UseCase useCase : legacySessionConfig.f1966f) {
            Set setJ = useCase.j(cameraInfoInternal);
            Objects.toString(setJ);
            toString();
            useCase.toString();
            Logger.c(3, "DynamicRangeFeature");
            if (setJ != null && !setJ.contains(dynamicRange)) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return "DynamicRangeFeature(dynamicRange=" + this.f2029c + ')';
    }
}
