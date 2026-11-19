package coil3.size;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/size/RealSizeResolver;", "Lcoil3/size/SizeResolver;", "Lcoil3/size/Size;", "size", "<init>", "(Lcoil3/size/Size;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealSizeResolver implements SizeResolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f21686b;

    public RealSizeResolver(Size size) {
        this.f21686b = size;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RealSizeResolver) && Intrinsics.c(this.f21686b, ((RealSizeResolver) obj).f21686b);
    }

    @Override // coil3.size.SizeResolver
    public final Object g(Continuation continuation) {
        return this.f21686b;
    }

    public final int hashCode() {
        return this.f21686b.hashCode();
    }

    public final String toString() {
        return "RealSizeResolver(size=" + this.f21686b + ")";
    }
}
