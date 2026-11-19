package coil3.network;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/network/HttpException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Lcoil3/network/NetworkResponse;", Payload.RESPONSE, "<init>", "(Lcoil3/network/NetworkResponse;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HttpException extends RuntimeException {
    public HttpException(NetworkResponse networkResponse) {
        super(pq0.k(networkResponse.f21579a, "HTTP "));
    }
}
