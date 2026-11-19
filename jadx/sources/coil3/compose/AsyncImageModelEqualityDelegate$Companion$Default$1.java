package coil3.compose;

import coil3.request.ImageRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"coil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1", "Lcoil3/compose/AsyncImageModelEqualityDelegate;", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AsyncImageModelEqualityDelegate$Companion$Default$1 implements AsyncImageModelEqualityDelegate {
    @Override // coil3.compose.AsyncImageModelEqualityDelegate
    public final int a(Object obj) {
        if (!(obj instanceof ImageRequest)) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        int iHashCode = (imageRequest.f21613b.hashCode() + (imageRequest.f21612a.hashCode() * 31)) * 31;
        String str = imageRequest.f21615e;
        int iHashCode2 = (imageRequest.f21616f.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        String str2 = imageRequest.g;
        return imageRequest.w.hashCode() + ((imageRequest.v.hashCode() + ((imageRequest.u.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    @Override // coil3.compose.AsyncImageModelEqualityDelegate
    public final boolean b(Object obj, Object obj2) {
        if (this == obj2) {
            return true;
        }
        if (!(obj instanceof ImageRequest) || !(obj2 instanceof ImageRequest)) {
            return Intrinsics.c(obj, obj2);
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        ImageRequest imageRequest2 = (ImageRequest) obj2;
        return Intrinsics.c(imageRequest.f21612a, imageRequest2.f21612a) && Intrinsics.c(imageRequest.f21613b, imageRequest2.f21613b) && Intrinsics.c(imageRequest.f21615e, imageRequest2.f21615e) && Intrinsics.c(imageRequest.f21616f, imageRequest2.f21616f) && Intrinsics.c(imageRequest.g, imageRequest2.g) && Intrinsics.c(imageRequest.u, imageRequest2.u) && imageRequest.v == imageRequest2.v && imageRequest.w == imageRequest2.w;
    }

    public final String toString() {
        return "AsyncImageModelEqualityDelegate.Default";
    }
}
