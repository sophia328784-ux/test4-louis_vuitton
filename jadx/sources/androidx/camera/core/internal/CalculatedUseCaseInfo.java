package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.streamsharing.StreamSharing;
import defpackage.n00;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/camera/core/internal/CalculatedUseCaseInfo;", "", "", "Landroidx/camera/core/UseCase;", "appUseCases", "cameraUseCases", "", "cameraUseCasesToAttach", "cameraUseCasesToKeep", "cameraUseCasesToDetach", "Landroidx/camera/core/streamsharing/StreamSharing;", "streamSharing", "placeholderForExtensions", "", "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;", "useCaseConfigs", "Landroidx/camera/core/internal/StreamSpecQueryResult;", "primaryStreamSpecResult", "secondaryStreamSpecResult", "<init>", "(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CalculatedUseCaseInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Collection f2463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f2464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f2465c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f2466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StreamSharing f2467f;
    public final UseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f2468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StreamSpecQueryResult f2469i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StreamSpecQueryResult f2470j;

    public CalculatedUseCaseInfo(Collection<? extends UseCase> collection, Collection<? extends UseCase> collection2, List<? extends UseCase> list, List<? extends UseCase> list2, List<? extends UseCase> list3, StreamSharing streamSharing, UseCase useCase, Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> map, StreamSpecQueryResult streamSpecQueryResult, StreamSpecQueryResult streamSpecQueryResult2) {
        collection.getClass();
        collection2.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        map.getClass();
        streamSpecQueryResult.getClass();
        this.f2463a = collection;
        this.f2464b = collection2;
        this.f2465c = list;
        this.d = list2;
        this.f2466e = list3;
        this.f2467f = streamSharing;
        this.g = useCase;
        this.f2468h = map;
        this.f2469i = streamSpecQueryResult;
        this.f2470j = streamSpecQueryResult2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalculatedUseCaseInfo)) {
            return false;
        }
        CalculatedUseCaseInfo calculatedUseCaseInfo = (CalculatedUseCaseInfo) obj;
        return Intrinsics.c(this.f2463a, calculatedUseCaseInfo.f2463a) && Intrinsics.c(this.f2464b, calculatedUseCaseInfo.f2464b) && Intrinsics.c(this.f2465c, calculatedUseCaseInfo.f2465c) && Intrinsics.c(this.d, calculatedUseCaseInfo.d) && Intrinsics.c(this.f2466e, calculatedUseCaseInfo.f2466e) && Intrinsics.c(this.f2467f, calculatedUseCaseInfo.f2467f) && Intrinsics.c(this.g, calculatedUseCaseInfo.g) && Intrinsics.c(this.f2468h, calculatedUseCaseInfo.f2468h) && Intrinsics.c(this.f2469i, calculatedUseCaseInfo.f2469i) && Intrinsics.c(this.f2470j, calculatedUseCaseInfo.f2470j);
    }

    public final int hashCode() {
        int iA = n00.a(n00.a(n00.a((this.f2464b.hashCode() + (this.f2463a.hashCode() * 31)) * 31, 31, this.f2465c), 31, this.d), 31, this.f2466e);
        StreamSharing streamSharing = this.f2467f;
        int iHashCode = (iA + (streamSharing == null ? 0 : streamSharing.hashCode())) * 31;
        UseCase useCase = this.g;
        int iHashCode2 = (this.f2469i.hashCode() + ((this.f2468h.hashCode() + ((iHashCode + (useCase == null ? 0 : useCase.hashCode())) * 31)) * 31)) * 31;
        StreamSpecQueryResult streamSpecQueryResult = this.f2470j;
        return iHashCode2 + (streamSpecQueryResult != null ? streamSpecQueryResult.hashCode() : 0);
    }

    public final String toString() {
        return "CalculatedUseCaseInfo(appUseCases=" + this.f2463a + ", cameraUseCases=" + this.f2464b + ", cameraUseCasesToAttach=" + this.f2465c + ", cameraUseCasesToKeep=" + this.d + ", cameraUseCasesToDetach=" + this.f2466e + ", streamSharing=" + this.f2467f + ", placeholderForExtensions=" + this.g + ", useCaseConfigs=" + this.f2468h + ", primaryStreamSpecResult=" + this.f2469i + ", secondaryStreamSpecResult=" + this.f2470j + ')';
    }
}
