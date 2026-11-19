package coil3.request;

import coil3.Image;
import coil3.graphics.DataSource;
import coil3.memory.MemoryCache;
import defpackage.a;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcoil3/request/SuccessResult;", "Lcoil3/request/ImageResult;", "Lcoil3/Image;", "image", "Lcoil3/request/ImageRequest;", "request", "Lcoil3/decode/DataSource;", "dataSource", "Lcoil3/memory/MemoryCache$Key;", "memoryCacheKey", "", "diskCacheKey", "", "isSampled", "isPlaceholderCached", "<init>", "(Lcoil3/Image;Lcoil3/request/ImageRequest;Lcoil3/decode/DataSource;Lcoil3/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SuccessResult implements ImageResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Image f21668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageRequest f21669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f21670c;
    public final MemoryCache.Key d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f21672f;
    public final boolean g;

    public /* synthetic */ SuccessResult(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(image, imageRequest, (i2 & 4) != 0 ? DataSource.MEMORY : dataSource, (i2 & 8) != 0 ? null : key, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? false : z2);
    }

    @Override // coil3.request.ImageResult
    /* JADX INFO: renamed from: O, reason: from getter */
    public final Image getF21609a() {
        return this.f21668a;
    }

    @Override // coil3.request.ImageResult
    /* JADX INFO: renamed from: a, reason: from getter */
    public final ImageRequest getF21610b() {
        return this.f21669b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuccessResult)) {
            return false;
        }
        SuccessResult successResult = (SuccessResult) obj;
        return Intrinsics.c(this.f21668a, successResult.f21668a) && Intrinsics.c(this.f21669b, successResult.f21669b) && this.f21670c == successResult.f21670c && Intrinsics.c(this.d, successResult.d) && Intrinsics.c(this.f21671e, successResult.f21671e) && this.f21672f == successResult.f21672f && this.g == successResult.g;
    }

    public final int hashCode() {
        int iHashCode = (this.f21670c.hashCode() + ((this.f21669b.hashCode() + (this.f21668a.hashCode() * 31)) * 31)) * 31;
        MemoryCache.Key key = this.d;
        int iHashCode2 = (iHashCode + (key == null ? 0 : key.hashCode())) * 31;
        String str = this.f21671e;
        return Boolean.hashCode(this.g) + o60.b((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, 31, this.f21672f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SuccessResult(image=");
        sb.append(this.f21668a);
        sb.append(", request=");
        sb.append(this.f21669b);
        sb.append(", dataSource=");
        sb.append(this.f21670c);
        sb.append(", memoryCacheKey=");
        sb.append(this.d);
        sb.append(", diskCacheKey=");
        pq0.A(this.f21671e, ", isSampled=", ", isPlaceholderCached=", sb, this.f21672f);
        return a.p(sb, this.g, ")");
    }

    public SuccessResult(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2) {
        this.f21668a = image;
        this.f21669b = imageRequest;
        this.f21670c = dataSource;
        this.d = key;
        this.f21671e = str;
        this.f21672f = z;
        this.g = z2;
    }
}
