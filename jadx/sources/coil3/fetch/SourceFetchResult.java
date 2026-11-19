package coil3.fetch;

import coil3.graphics.DataSource;
import coil3.graphics.ImageSource;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/fetch/SourceFetchResult;", "Lcoil3/fetch/FetchResult;", "Lcoil3/decode/ImageSource;", Payload.SOURCE, "", "mimeType", "Lcoil3/decode/DataSource;", "dataSource", "<init>", "(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SourceFetchResult implements FetchResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageSource f21443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f21445c;

    public SourceFetchResult(ImageSource imageSource, String str, DataSource dataSource) {
        this.f21443a = imageSource;
        this.f21444b = str;
        this.f21445c = dataSource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceFetchResult)) {
            return false;
        }
        SourceFetchResult sourceFetchResult = (SourceFetchResult) obj;
        return Intrinsics.c(this.f21443a, sourceFetchResult.f21443a) && Intrinsics.c(this.f21444b, sourceFetchResult.f21444b) && this.f21445c == sourceFetchResult.f21445c;
    }

    public final int hashCode() {
        int iHashCode = this.f21443a.hashCode() * 31;
        String str = this.f21444b;
        return this.f21445c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "SourceFetchResult(source=" + this.f21443a + ", mimeType=" + this.f21444b + ", dataSource=" + this.f21445c + ")";
    }
}
