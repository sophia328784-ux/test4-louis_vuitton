package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.extensions.StringAndroidExtKt;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.gc;
import defpackage.l0;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/BOLocaleInterceptor;", "Lokhttp3/Interceptor;", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lkotlin/Function0;", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatchProvider", "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;", "appConfigProvider", "<init>", "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BOLocaleInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnvironmentProvider f47063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f47064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f47065c;

    public BOLocaleInterceptor(EnvironmentProvider environmentProvider, Function0<InAppDispatch> function0, Function0<AppConfig> function1) {
        environmentProvider.getClass();
        function0.getClass();
        function1.getClass();
        this.f47063a = environmentProvider;
        this.f47064b = function0;
        this.f47065c = function1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0081  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e6  */
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Set setUnmodifiableSet;
        HttpUrl.Builder builderG;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        HttpUrl httpUrl = request.f76969a;
        List list = httpUrl.g;
        if (list == null) {
            setUnmodifiableSet = EmptySet.f71770b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet(list.size() / 2, 1.0f);
            IntProgression intProgressionI = RangesKt.i(RangesKt.j(0, list.size()), 2);
            int i2 = intProgressionI.f71951b;
            int i3 = intProgressionI.f71952c;
            int i4 = intProgressionI.d;
            if ((i4 > 0 && i2 <= i3) || (i4 < 0 && i3 <= i2)) {
                while (true) {
                    Object obj = list.get(i2);
                    obj.getClass();
                    linkedHashSet.add(obj);
                    if (i2 == i3) {
                        break;
                    }
                    i2 += i4;
                }
            }
            setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
            setUnmodifiableSet.getClass();
        }
        String str = httpUrl.f76925i;
        String str2 = httpUrl.f76925i;
        if (StringAndroidExtKt.a(str, this.f47063a)) {
            InAppDispatch inAppDispatch = (InAppDispatch) this.f47064b.mo47invoke();
            if (setUnmodifiableSet.contains("locale")) {
                builderG = null;
            } else {
                String lowerCase = str2.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                if (StringsKt.k(lowerCase, "clubs/sneakers/members", false)) {
                    builderG = null;
                } else {
                    builderG = httpUrl.g();
                    builderG.b("locale", inAppDispatch.f67478c);
                }
            }
            if (!setUnmodifiableSet.contains("country")) {
                AppConfig appConfig = (AppConfig) this.f47065c.mo47invoke();
                if (appConfig == null || !appConfig.A) {
                    List listP = CollectionsKt.P(new gc(str2, 0), new gc(str2, 1), new l0(str2, inAppDispatch, 18));
                    if (!(listP instanceof Collection) || !listP.isEmpty()) {
                        Iterator it = listP.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (((Boolean) ((Function0) it.next()).mo47invoke()).booleanValue()) {
                                    if (builderG == null) {
                                        builderG = httpUrl.g();
                                    }
                                    builderG.b("country", inAppDispatch.f67483j);
                                }
                            }
                        }
                    }
                } else {
                    if (builderG == null) {
                        builderG = httpUrl.g();
                    }
                    builderG.b("country", inAppDispatch.f67483j);
                }
            }
            if (builderG != null) {
                Request.Builder builder = new Request.Builder(request);
                builder.f76974a = builderG.c();
                request = new Request(builder);
            }
        }
        return realInterceptorChain.b(request);
    }
}
