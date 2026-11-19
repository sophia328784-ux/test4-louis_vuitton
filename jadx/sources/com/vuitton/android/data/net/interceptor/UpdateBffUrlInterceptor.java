package com.vuitton.android.data.net.interceptor;

import com.linkplay.network.SecurityConstants;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.extensions.StringAndroidExtKt;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;
import timber.log.Timber;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\b\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor;", "Lokhttp3/Interceptor;", "Lkotlin/Function0;", "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;", "appConfigProvider", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateBffUrlInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f47095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f47096b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/UpdateBffUrlInterceptor$Companion;", "", "", "TAG", "Ljava/lang/String;", "DISPATCH_URL_IDENTIFIER", "URL_PREFIX", "API_SUFFIX", "PREVIEW_SUFFIX", "API_SUFFIX_WITH_PREVIEW", "API_SUFFIX_FOR_USER_API", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public UpdateBffUrlInterceptor(Function0<AppConfig> function0, EnvironmentProvider environmentProvider) {
        function0.getClass();
        environmentProvider.getClass();
        this.f47095a = function0;
        this.f47096b = environmentProvider;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws Throwable {
        Object failure;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        AppConfig appConfig = (AppConfig) this.f47095a.mo47invoke();
        String strJ = appConfig != null ? appConfig.t : null;
        if (strJ != null && !StringsKt.w(strJ)) {
            HttpUrl httpUrl = request.f76969a;
            if (StringAndroidExtKt.a(httpUrl.f76925i, this.f47096b)) {
                String str = httpUrl.f76925i;
                String str2 = httpUrl.f76925i;
                if (!StringsKt.k(str, "lv-app-configuration", false) && !StringsKt.k(str2, "publication/dispatch", false)) {
                    String str3 = "api/preview/";
                    if (StringsKt.k(str2, "api/user/", false) && StringsKt.k(strJ, "api/preview/", false)) {
                        strJ = StringsKt.J(strJ, "preview/", "");
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        int iV = StringsKt.v(str2, SecurityConstants.SECURITY_NONE, 0, false, 6);
                        if (StringsKt.v(str2, "api/preview/", 0, false, 6) == -1) {
                            str3 = "api/";
                        }
                        int iV2 = StringsKt.v(str2, str3, 0, false, 6);
                        if (iV == -1 || iV2 == -1) {
                            throw new IllegalArgumentException("Cannot find substring used for replacing");
                        }
                        failure = new Result(StringsKt.J(str2, str2.substring(iV, iV2 + str3.length()), strJ));
                        Throwable thA = Result.a(failure);
                        if (thA != null) {
                            if (thA instanceof CancellationException) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        Object obj = ((Result) failure).f71708b;
                        Throwable thA2 = Result.a(obj);
                        if (thA2 == null) {
                            Request.Builder builder = new Request.Builder(request);
                            builder.e((String) obj);
                            request = new Request(builder);
                        } else {
                            Timber.Forest forest = Timber.f80066a;
                            forest.g("UpdateBffUrlInterceptor");
                            forest.b(thA2, "Unable to replace the base url", new Object[0]);
                        }
                        return realInterceptorChain.b(request);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                }
            }
        }
        return realInterceptorChain.b(request);
    }
}
