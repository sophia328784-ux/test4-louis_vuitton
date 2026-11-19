package okhttp3.internal.http1;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http1/HeadersReader;", "", "Lokio/BufferedSource;", Payload.SOURCE, "<init>", "(Lokio/BufferedSource;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HeadersReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BufferedSource f77184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f77185b;

    public HeadersReader(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        this.f77184a = bufferedSource;
        this.f77185b = 262144L;
    }
}
