package androidx.camera.core.impl;

import defpackage.tr;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;", "", "", "Landroidx/camera/core/impl/UseCaseConfig;", "Landroidx/camera/core/impl/StreamSpec;", "useCaseStreamSpecs", "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "attachedSurfaceStreamSpecs", "", "maxSupportedFrameRate", "<init>", "(Ljava/util/Map;Ljava/util/Map;I)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class SurfaceStreamSpecQueryResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f2358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f2359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2360c;

    public SurfaceStreamSpecQueryResult(Map<UseCaseConfig<?>, ? extends StreamSpec> map, Map<AttachedSurfaceInfo, ? extends StreamSpec> map2, int i2) {
        map.getClass();
        map2.getClass();
        this.f2358a = map;
        this.f2359b = map2;
        this.f2360c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceStreamSpecQueryResult)) {
            return false;
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult = (SurfaceStreamSpecQueryResult) obj;
        return Intrinsics.c(this.f2358a, surfaceStreamSpecQueryResult.f2358a) && Intrinsics.c(this.f2359b, surfaceStreamSpecQueryResult.f2359b) && this.f2360c == surfaceStreamSpecQueryResult.f2360c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2360c) + ((this.f2359b.hashCode() + (this.f2358a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SurfaceStreamSpecQueryResult(useCaseStreamSpecs=");
        sb.append(this.f2358a);
        sb.append(", attachedSurfaceStreamSpecs=");
        sb.append(this.f2359b);
        sb.append(", maxSupportedFrameRate=");
        return tr.k(sb, this.f2360c, ')');
    }
}
