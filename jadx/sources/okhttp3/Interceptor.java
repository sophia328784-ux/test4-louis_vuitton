package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lokhttp3/Interceptor;", "", "Chain", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Interceptor {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/Interceptor$Chain;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Chain {
        RealInterceptorChain a(int i2, TimeUnit timeUnit);

        Response b(Request request);

        RealInterceptorChain c(int i2, TimeUnit timeUnit);

        RealConnection d();

        RealInterceptorChain e(int i2, TimeUnit timeUnit);

        /* JADX INFO: renamed from: request */
        Request getF77173e();
    }

    Response intercept(Chain chain);
}
