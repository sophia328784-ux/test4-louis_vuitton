package coil3.size;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcoil3/size/Size;", "", "Lcoil3/size/Dimension;", "width", "height", "<init>", "(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Size {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Size f21689c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Dimension f21690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Dimension f21691b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/size/Size$Companion;", "", "Lcoil3/size/Size;", "ORIGINAL", "Lcoil3/size/Size;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        Dimension.Undefined undefined = Dimension.Undefined.f21685a;
        f21689c = new Size(undefined, undefined);
    }

    public Size(Dimension dimension, Dimension dimension2) {
        this.f21690a = dimension;
        this.f21691b = dimension2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return Intrinsics.c(this.f21690a, size.f21690a) && Intrinsics.c(this.f21691b, size.f21691b);
    }

    public final int hashCode() {
        return this.f21691b.hashCode() + (this.f21690a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.f21690a + ", height=" + this.f21691b + ")";
    }
}
