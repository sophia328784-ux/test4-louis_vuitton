package com.vuitton.android.data.net;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.data.net.interceptor.AcceptLanguageInterceptor;
import com.vuitton.android.data.net.interceptor.AkamaiBotProtectionInterceptor;
import com.vuitton.android.data.net.interceptor.BOLocaleInterceptor;
import com.vuitton.android.data.net.interceptor.DeviceIdInterceptor;
import com.vuitton.android.data.net.interceptor.EphemeralEnvironmentHeaderInterceptor;
import com.vuitton.android.data.net.interceptor.MobileCorrelationIdInterceptor;
import com.vuitton.android.data.net.interceptor.ReorderQueryParamListInterceptor;
import com.vuitton.android.data.net.interceptor.UpdateBffUrlInterceptor;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.data.net.serialization.retrofit.KotlinxSerializationConverterFactory;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import defpackage.u6;
import defpackage.v40;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.Cache;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RetrofitFactoryKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46994a;

        static {
            int[] iArr = new int[AuthRequirement.values().length];
            try {
                iArr[AuthRequirement.FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AuthRequirement.ADD_SFID_HEADER_FOR_PERMANENT_USER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AuthRequirement.ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AuthRequirement.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AuthRequirement.TRIGGER_REFRESH_TOKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f46994a = iArr;
        }
    }

    public static final OkHttpClient a(Context context, CookieJar cookieJar, EnvironmentProvider environmentProvider, final AppConfigRepository appConfigRepository, InAppDispatchRepository inAppDispatchRepository, DeviceIdLocalDataSource deviceIdLocalDataSource, BuildConfigProvider buildConfigProvider, Set set, boolean z, boolean z2, AuthRequirement authRequirement, Function1 function1, Function1 function2, Function1 function3, Function1 function4) {
        ArrayList arrayList;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        File cacheDir = context.getCacheDir();
        cacheDir.getClass();
        builder.l = new Cache(cacheDir, 16777216L);
        buildConfigProvider.getClass();
        DeviceIdInterceptor deviceIdInterceptor = new DeviceIdInterceptor(deviceIdLocalDataSource);
        ArrayList arrayList2 = builder.f76962c;
        arrayList2.add(deviceIdInterceptor);
        arrayList2.add(new MobileCorrelationIdInterceptor(environmentProvider));
        final int i2 = 1;
        if (z) {
            arrayList2.add(new BOLocaleInterceptor(environmentProvider, new u6(inAppDispatchRepository, 1), new Function0() { // from class: ht0
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i3 = i2;
                    AppConfigRepository appConfigRepository2 = appConfigRepository;
                    switch (i3) {
                        case 0:
                            break;
                    }
                    return appConfigRepository2.c();
                }
            }));
        }
        final int i3 = 0;
        arrayList2.add(new UpdateBffUrlInterceptor(new Function0() { // from class: ht0
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                AppConfigRepository appConfigRepository2 = appConfigRepository;
                switch (i4) {
                    case 0:
                        break;
                }
                return appConfigRepository2.c();
            }
        }, environmentProvider));
        arrayList2.add(new UserAgentInterceptor(context, buildConfigProvider));
        builder.c(90L);
        builder.d(90L);
        if (cookieJar != null) {
            builder.f76968k = cookieJar;
        }
        if (z2) {
            arrayList2.add(new AcceptLanguageInterceptor());
        }
        arrayList2.add(new AkamaiBotProtectionInterceptor(environmentProvider));
        if (environmentProvider.d() instanceof Environment.DevEphemeral) {
            arrayList2.add(new EphemeralEnvironmentHeaderInterceptor(environmentProvider.g()));
        }
        arrayList2.add(new ReorderQueryParamListInterceptor(environmentProvider));
        if (authRequirement != AuthRequirement.NONE) {
            function1.invoke(builder);
        }
        int i4 = WhenMappings.f46994a[authRequirement.ordinal()];
        if (i4 == 1) {
            function2.invoke(builder);
        } else if (i4 == 2) {
            function3.invoke(builder);
        } else if (i4 == 3) {
            function4.invoke(builder);
        } else if (i4 != 4 && i4 != 5) {
            v40.g();
            return null;
        }
        Iterator it = set.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = builder.d;
            if (!zHasNext) {
                break;
            }
            Interceptor interceptor = (Interceptor) it.next();
            interceptor.getClass();
            arrayList.add(interceptor);
        }
        if (environmentProvider.d() instanceof Environment.DevEphemeral) {
            arrayList.add(new Interceptor() { // from class: com.vuitton.android.data.net.RetrofitFactoryKt$createOkHttpClient$lambda$4$$inlined$-addNetworkInterceptor$1
                @Override // okhttp3.Interceptor
                public final Response intercept(Interceptor.Chain chain) {
                    RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
                    Response responseB = realInterceptorChain.b(realInterceptorChain.f77173e);
                    if (responseB.g.a("x-ephe-matched") != null) {
                        return responseB;
                    }
                    Response.Builder builder2 = new Response.Builder(responseB);
                    builder2.f76994c = 404;
                    return builder2.a();
                }
            });
        }
        return new OkHttpClient(builder);
    }

    public static final Retrofit b(Context context, KotlinxSerializationConverterFactory kotlinxSerializationConverterFactory, String str, AppConfigRepository appConfigRepository, InAppDispatchRepository inAppDispatchRepository, DeviceIdLocalDataSource deviceIdLocalDataSource, EnvironmentProvider environmentProvider, BuildConfigProvider buildConfigProvider, Set set, CookieJar cookieJar, boolean z, boolean z2, AuthRequirement authRequirement, Function1 function1, Function1 function2, Function1 function3, Function1 function4) {
        context.getClass();
        kotlinxSerializationConverterFactory.getClass();
        str.getClass();
        appConfigRepository.getClass();
        inAppDispatchRepository.getClass();
        deviceIdLocalDataSource.getClass();
        environmentProvider.getClass();
        buildConfigProvider.getClass();
        set.getClass();
        authRequirement.getClass();
        Retrofit.Builder builder = new Retrofit.Builder();
        builder.b(str);
        builder.f79461a = a(context, cookieJar, environmentProvider, appConfigRepository, inAppDispatchRepository, deviceIdLocalDataSource, buildConfigProvider, set, z, z2, authRequirement, function1, function2, function3, function4);
        builder.a(kotlinxSerializationConverterFactory.a());
        return builder.d();
    }
}
