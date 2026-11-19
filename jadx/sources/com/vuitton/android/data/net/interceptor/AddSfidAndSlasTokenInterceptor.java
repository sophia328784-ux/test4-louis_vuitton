package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddSfidAndSlasTokenInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47055b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AddSfidAndSlasTokenInterceptor$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AddSfidAndSlasTokenInterceptor(Logger logger, AuthTokenRepository authTokenRepository) {
        logger.getClass();
        authTokenRepository.getClass();
        this.f47054a = logger;
        this.f47055b = authTokenRepository;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Pair pairA = AddSfidAndSlasTokenInterceptorKt.a((AuthToken) BuildersKt.e(EmptyCoroutineContext.f71840b, new AddSfidAndSlasTokenInterceptor$intercept$authToken$1(this, null)));
        String str = (String) pairA.f71705b;
        String str2 = (String) pairA.f71706c;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request requestB = realInterceptorChain.f77173e;
        Logger logger = this.f47054a;
        logger.getClass();
        if (str.length() != 0) {
            requestB = AddSfidAndSlasTokenInterceptorKt.b(requestB, logger, str, str2);
        }
        return realInterceptorChain.b(requestB);
    }
}
