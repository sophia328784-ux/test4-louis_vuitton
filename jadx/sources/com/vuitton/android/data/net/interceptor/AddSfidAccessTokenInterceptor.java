package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddSfidAccessTokenInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47051b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/AddSfidAccessTokenInterceptor$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AddSfidAccessTokenInterceptor(Logger logger, AuthTokenRepository authTokenRepository) {
        logger.getClass();
        authTokenRepository.getClass();
        this.f47050a = logger;
        this.f47051b = authTokenRepository;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        String str;
        AuthToken authToken = (AuthToken) BuildersKt.e(EmptyCoroutineContext.f71840b, new AddSfidAccessTokenInterceptor$intercept$accessTokenSFID$authToken$1(this, null));
        if (authToken instanceof AuthToken.Atg) {
            str = ((AuthToken.Atg) authToken).f66589b;
        } else {
            if (!(authToken instanceof AuthToken.Twist.User)) {
                if (!(authToken instanceof AuthToken.Twist.Guest) && !Intrinsics.c(authToken, AuthToken.None.f66591a)) {
                    v40.g();
                    return null;
                }
                this.f47050a.c("TwistOrSalesforceTokenInterceptor", "Service available only for authenticated users", null);
                RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
                return realInterceptorChain.b(realInterceptorChain.f77173e);
            }
            str = ((AuthToken.Twist.User) authToken).f66595b;
        }
        RealInterceptorChain realInterceptorChain2 = (RealInterceptorChain) chain;
        Request request = realInterceptorChain2.f77173e;
        request.getClass();
        Request.Builder builder = new Request.Builder(request);
        if (str == null) {
            str = "";
        }
        builder.b(LVConstants.SFID_ACCESS_TOKEN, str);
        return realInterceptorChain2.b(new Request(builder));
    }
}
