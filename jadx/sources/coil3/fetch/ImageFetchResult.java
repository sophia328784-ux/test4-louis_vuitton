package coil3.fetch;

import coil3.Image;
import coil3.graphics.DataSource;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/fetch/ImageFetchResult;", "Lcoil3/fetch/FetchResult;", "Lcoil3/Image;", "image", "", "isSampled", "Lcoil3/decode/DataSource;", "dataSource", "<init>", "(Lcoil3/Image;ZLcoil3/decode/DataSource;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ImageFetchResult implements FetchResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Image f21436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f21438c;

    public ImageFetchResult(Image image, boolean z, DataSource dataSource) {
        this.f21436a = image;
        this.f21437b = z;
        this.f21438c = dataSource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageFetchResult)) {
            return false;
        }
        ImageFetchResult imageFetchResult = (ImageFetchResult) obj;
        return Intrinsics.c(this.f21436a, imageFetchResult.f21436a) && this.f21437b == imageFetchResult.f21437b && this.f21438c == imageFetchResult.f21438c;
    }

    public final int hashCode() {
        return this.f21438c.hashCode() + o60.b(this.f21436a.hashCode() * 31, 31, this.f21437b);
    }

    public final String toString() {
        return "ImageFetchResult(image=" + this.f21436a + ", isSampled=" + this.f21437b + ", dataSource=" + this.f21438c + ")";
    }
}
