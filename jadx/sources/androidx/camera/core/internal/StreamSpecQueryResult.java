package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.StreamSpec;
import defpackage.tr;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/camera/core/internal/StreamSpecQueryResult;", "", "", "Landroidx/camera/core/UseCase;", "Landroidx/camera/core/impl/StreamSpec;", "streamSpecs", "", "maxSupportedFrameRate", "<init>", "(Ljava/util/Map;I)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class StreamSpecQueryResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f2486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2487b;

    public /* synthetic */ StreamSpecQueryResult(Map map, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? MapsKt.c() : map, (i3 & 2) != 0 ? Integer.MAX_VALUE : i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamSpecQueryResult)) {
            return false;
        }
        StreamSpecQueryResult streamSpecQueryResult = (StreamSpecQueryResult) obj;
        return Intrinsics.c(this.f2486a, streamSpecQueryResult.f2486a) && this.f2487b == streamSpecQueryResult.f2487b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2487b) + (this.f2486a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamSpecQueryResult(streamSpecs=");
        sb.append(this.f2486a);
        sb.append(", maxSupportedFrameRate=");
        return tr.k(sb, this.f2487b, ')');
    }

    public StreamSpecQueryResult(Map<UseCase, ? extends StreamSpec> map, int i2) {
        map.getClass();
        this.f2486a = map;
        this.f2487b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StreamSpecQueryResult() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }
}
