package coil3.request;

import coil3.Image;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/request/ErrorResult;", "Lcoil3/request/ImageResult;", "Lcoil3/Image;", "image", "Lcoil3/request/ImageRequest;", "request", "", "throwable", "<init>", "(Lcoil3/Image;Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ErrorResult implements ImageResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Image f21609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageRequest f21610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Throwable f21611c;

    public ErrorResult(Image image, ImageRequest imageRequest, Throwable th) {
        this.f21609a = image;
        this.f21610b = imageRequest;
        this.f21611c = th;
    }

    @Override // coil3.request.ImageResult
    /* JADX INFO: renamed from: O, reason: from getter */
    public final Image getF21668a() {
        return this.f21609a;
    }

    @Override // coil3.request.ImageResult
    /* JADX INFO: renamed from: a, reason: from getter */
    public final ImageRequest getF21669b() {
        return this.f21610b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorResult)) {
            return false;
        }
        ErrorResult errorResult = (ErrorResult) obj;
        return Intrinsics.c(this.f21609a, errorResult.f21609a) && Intrinsics.c(this.f21610b, errorResult.f21610b) && Intrinsics.c(this.f21611c, errorResult.f21611c);
    }

    public final int hashCode() {
        Image image = this.f21609a;
        int iHashCode = image == null ? 0 : image.hashCode();
        return this.f21611c.hashCode() + ((this.f21610b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ErrorResult(image=" + this.f21609a + ", request=" + this.f21610b + ", throwable=" + this.f21611c + ")";
    }
}
