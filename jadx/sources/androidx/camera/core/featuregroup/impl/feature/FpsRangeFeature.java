package androidx.camera.core.featuregroup.impl.feature;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "", "minFps", "maxFps", "<init>", "(II)V", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FpsRangeFeature extends GroupableFeature {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Range f2030f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2031c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FeatureTypeInternal f2032e = FeatureTypeInternal.FPS_RANGE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature$Companion;", "", "Landroid/util/Range;", "", "DEFAULT_FPS_RANGE", "Landroid/util/Range;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f2030f = new Range(30, 30);
    }

    public FpsRangeFeature(int i2, int i3) {
        this.f2031c = i2;
        this.d = i3;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FeatureTypeInternal getD() {
        return this.f2032e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FpsRangeFeature(minFps=");
        sb.append(this.f2031c);
        sb.append(", maxFps=");
        return tr.k(sb, this.d, ')');
    }
}
