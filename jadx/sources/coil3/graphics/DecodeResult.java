package coil3.graphics;

import coil3.Image;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/decode/DecodeResult;", "", "Lcoil3/Image;", "image", "", "isSampled", "<init>", "(Lcoil3/Image;Z)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DecodeResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Image f21355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21356b;

    public DecodeResult(Image image, boolean z) {
        this.f21355a = image;
        this.f21356b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DecodeResult)) {
            return false;
        }
        DecodeResult decodeResult = (DecodeResult) obj;
        return Intrinsics.c(this.f21355a, decodeResult.f21355a) && this.f21356b == decodeResult.f21356b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f21356b) + (this.f21355a.hashCode() * 31);
    }

    public final String toString() {
        return "DecodeResult(image=" + this.f21355a + ", isSampled=" + this.f21356b + ")";
    }
}
