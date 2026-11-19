package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/PreprodAuthorizationInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PreprodAuthorizationInterceptor implements Interceptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f47078b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BuildConfigProvider f47079a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/PreprodAuthorizationInterceptor$Companion;", "", "", "PATTERN", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static boolean a(Request request, boolean z) {
            request.getClass();
            Pattern patternCompile = Pattern.compile(".+\\.(.+)vuitton\\..+");
            String str = request.f76969a.f76925i;
            String strA = request.f76971c.a("Authorization");
            return patternCompile.matcher(str).matches() && !(strA != null && StringsKt.P(strA, "Bearer", false)) && z;
        }
    }

    public PreprodAuthorizationInterceptor(BuildConfigProvider buildConfigProvider) {
        buildConfigProvider.getClass();
        this.f47079a = buildConfigProvider;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        this.f47079a.getClass();
        f47078b.getClass();
        Companion.a(request, false);
        return realInterceptorChain.b(request);
    }
}
