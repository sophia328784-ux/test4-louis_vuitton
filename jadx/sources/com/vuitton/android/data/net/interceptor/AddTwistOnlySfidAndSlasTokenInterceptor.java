package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AddTwistOnlySfidAndSlasTokenInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddTwistOnlySfidAndSlasTokenInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47059b;

    public AddTwistOnlySfidAndSlasTokenInterceptor(Logger logger, AuthTokenRepository authTokenRepository) {
        logger.getClass();
        authTokenRepository.getClass();
        this.f47058a = logger;
        this.f47059b = authTokenRepository;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        AuthToken authToken = (AuthToken) BuildersKt.e(EmptyCoroutineContext.f71840b, new AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1(this, null));
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request requestB = realInterceptorChain.f77173e;
        if (authToken instanceof AuthToken.Twist.User) {
            AuthToken.Twist.User user = (AuthToken.Twist.User) authToken;
            requestB = AddSfidAndSlasTokenInterceptorKt.b(requestB, this.f47058a, user.d, user.f66595b);
        }
        return realInterceptorChain.b(requestB);
    }
}
