package com.vuitton.android.data.net.interceptor;

import android.net.Uri;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.extensions.StringAndroidExtKt;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/ReorderQueryParamListInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReorderQueryParamListInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentProvider f47089a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/ReorderQueryParamListInterceptor$Companion;", "", "", "QUERY_SPLITTER", "Ljava/lang/String;", "QUERY_EQUAL", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ReorderQueryParamListInterceptor(EnvironmentProvider environmentProvider) {
        environmentProvider.getClass();
        this.f47089a = environmentProvider;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Uri uri;
        String query;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        if (StringAndroidExtKt.a(request.f76969a.f76925i, this.f47089a) && (query = (uri = Uri.parse(request.f76969a.f76925i)).getQuery()) != null) {
            String string = uri.buildUpon().clearQuery().encodedQuery(CollectionsKt.K(CollectionsKt.o0(StringsKt__StringsKt.split$default(query, new String[]{"&"}, false, 0, 6, null), new Comparator() { // from class: com.vuitton.android.data.net.interceptor.ReorderQueryParamListInterceptor$intercept$lambda$0$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ComparisonsKt.a((String) StringsKt__StringsKt.split$default((String) obj, new String[]{"="}, false, 0, 6, null).get(0), (String) StringsKt__StringsKt.split$default((String) obj2, new String[]{"="}, false, 0, 6, null).get(0));
                }
            }), "&", null, null, null, 62)).toString();
            string.getClass();
            Request.Builder builder = new Request.Builder(request);
            builder.e(string);
            request = new Request(builder);
        }
        return realInterceptorChain.b(request);
    }
}
