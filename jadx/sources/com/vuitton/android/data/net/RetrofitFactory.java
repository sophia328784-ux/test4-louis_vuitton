package com.vuitton.android.data.net;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import com.vuitton.android.data.net.RetrofitFactory;
import com.vuitton.android.data.net.auth.ProactiveTokenRefreshInterceptor;
import com.vuitton.android.data.net.auth.TokenRefreshCoordinator;
import com.vuitton.android.data.net.interceptor.AddSfidAccessTokenInterceptor;
import com.vuitton.android.data.net.interceptor.AddSfidAndSlasTokenInterceptor;
import com.vuitton.android.data.net.interceptor.AddTwistOnlySfidAndSlasTokenInterceptor;
import com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor;
import com.vuitton.android.data.net.interceptor.RefreshAuthenticator;
import com.vuitton.android.data.net.serialization.retrofit.KotlinxSerializationConverterFactory;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.provider.feature.FeatureCheckerProvider;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.Json;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001&B\u0096\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0011\u0010#\u001a\r\u0012\t\u0012\u00070!¢\u0006\u0002\b\"0 ¢\u0006\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/vuitton/android/data/net/RetrofitFactory;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;", "kotlinxConverterFactory", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;", "featureCheckerProvider", "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;", "tokenRefreshCoordinator", "Lokhttp3/CookieJar;", "cookieJar", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/data/net/ProdUrls;", "prodUrls", "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;", "deviceIdLocalDataSource", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "", "Lokhttp3/Interceptor;", "Lkotlin/jvm/JvmSuppressWildcards;", "networkInterceptors", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/data/net/serialization/retrofit/KotlinxSerializationConverterFactory;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lokhttp3/CookieJar;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/data/net/ProdUrls;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Ljava/util/Set;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RetrofitFactory {
    public static final /* synthetic */ int q = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f46984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f46985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinxSerializationConverterFactory f46986c;
    public final Json d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AuthTokenRepository f46987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TwistAuthRepository f46988f;
    public final AppConfigRepository g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatchRepository f46989h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FeatureCheckerProvider f46990i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TokenRefreshCoordinator f46991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CookieJar f46992k;
    public final EnvironmentProvider l;
    public final ProdUrls m;
    public final DeviceIdLocalDataSource n;
    public final BuildConfigProvider o;
    public final Set p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/RetrofitFactory$Companion;", "", "", "OKHTTP_TIMEOUT", "J", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46993a;

        static {
            int[] iArr = new int[BffApi.values().length];
            try {
                iArr[BffApi.PUBLICATION_API.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BffApi.CATALOG_API.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BffApi.USER_API.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46993a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public RetrofitFactory(Logger logger, Context context, KotlinxSerializationConverterFactory kotlinxSerializationConverterFactory, Json json, AuthTokenRepository authTokenRepository, TwistAuthRepository twistAuthRepository, AppConfigRepository appConfigRepository, InAppDispatchRepository inAppDispatchRepository, FeatureCheckerProvider featureCheckerProvider, TokenRefreshCoordinator tokenRefreshCoordinator, CookieJar cookieJar, EnvironmentProvider environmentProvider, ProdUrls prodUrls, DeviceIdLocalDataSource deviceIdLocalDataSource, BuildConfigProvider buildConfigProvider, Set<Interceptor> set) {
        logger.getClass();
        context.getClass();
        kotlinxSerializationConverterFactory.getClass();
        json.getClass();
        authTokenRepository.getClass();
        twistAuthRepository.getClass();
        appConfigRepository.getClass();
        inAppDispatchRepository.getClass();
        featureCheckerProvider.getClass();
        tokenRefreshCoordinator.getClass();
        environmentProvider.getClass();
        prodUrls.getClass();
        deviceIdLocalDataSource.getClass();
        buildConfigProvider.getClass();
        set.getClass();
        this.f46984a = logger;
        this.f46985b = context;
        this.f46986c = kotlinxSerializationConverterFactory;
        this.d = json;
        this.f46987e = authTokenRepository;
        this.f46988f = twistAuthRepository;
        this.g = appConfigRepository;
        this.f46989h = inAppDispatchRepository;
        this.f46990i = featureCheckerProvider;
        this.f46991j = tokenRefreshCoordinator;
        this.f46992k = cookieJar;
        this.l = environmentProvider;
        this.m = prodUrls;
        this.n = deviceIdLocalDataSource;
        this.o = buildConfigProvider;
        this.p = set;
    }

    public static Retrofit a(RetrofitFactory retrofitFactory, BffApi bffApi, AuthRequirement authRequirement, int i2) {
        if ((i2 & 1) != 0) {
            bffApi = null;
        }
        boolean z = (i2 & 2) != 0;
        if ((i2 & 4) != 0) {
            authRequirement = AuthRequirement.NONE;
        }
        AuthRequirement authRequirement2 = authRequirement;
        retrofitFactory.getClass();
        authRequirement2.getClass();
        return f(retrofitFactory, retrofitFactory.e(bffApi), null, z, authRequirement2, 42);
    }

    public static /* synthetic */ Retrofit d(RetrofitFactory retrofitFactory, BffApi bffApi, AuthRequirement authRequirement, int i2) {
        if ((i2 & 1) != 0) {
            bffApi = null;
        }
        if ((i2 & 2) != 0) {
            authRequirement = AuthRequirement.NONE;
        }
        return retrofitFactory.c(bffApi, authRequirement);
    }

    public static Retrofit f(final RetrofitFactory retrofitFactory, String str, CookieJar cookieJar, boolean z, AuthRequirement authRequirement, int i2) {
        final int i3 = 1;
        final int i4 = 0;
        final int i5 = 2;
        final int i6 = 3;
        return RetrofitFactoryKt.b(retrofitFactory.f46985b, retrofitFactory.f46986c, str, retrofitFactory.g, retrofitFactory.f46989h, retrofitFactory.n, retrofitFactory.l, retrofitFactory.o, retrofitFactory.p, (i2 & 2) != 0 ? null : cookieJar, (i2 & 4) != 0 ? true : z, false, (i2 & 16) != 0 ? AuthRequirement.NONE : authRequirement, new Function1(retrofitFactory) { // from class: ft0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RetrofitFactory f69210c;

            {
                this.f69210c = retrofitFactory;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i7 = i4;
                RetrofitFactory retrofitFactory2 = this.f69210c;
                OkHttpClient.Builder builder = (OkHttpClient.Builder) obj;
                switch (i7) {
                    case 0:
                        int i8 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.getClass();
                        Logger logger = retrofitFactory2.f46984a;
                        TokenRefreshCoordinator tokenRefreshCoordinator = retrofitFactory2.f46991j;
                        AuthTokenRepository authTokenRepository = retrofitFactory2.f46987e;
                        logger.getClass();
                        xe0 xe0Var = new xe0(logger, 11);
                        retrofitFactory2.o.getClass();
                        sv svVar = new sv(false, 1);
                        Json json = retrofitFactory2.d;
                        json.getClass();
                        builder.f76965h = new RefreshAuthenticator(logger, tokenRefreshCoordinator, authTokenRepository, CollectionsKt.P(xe0Var, svVar, new xe0(json, 10)));
                        break;
                    case 1:
                        int i9 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        TwistAuthRepository twistAuthRepository = retrofitFactory2.f46988f;
                        AuthTokenRepository authTokenRepository2 = retrofitFactory2.f46987e;
                        GuestAuthenticatorInterceptor guestAuthenticatorInterceptor = new GuestAuthenticatorInterceptor(twistAuthRepository, authTokenRepository2, new xn0(retrofitFactory2, 16));
                        ArrayList arrayList = builder.f76962c;
                        arrayList.add(guestAuthenticatorInterceptor);
                        arrayList.add(new AddSfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, authTokenRepository2));
                        break;
                    case 2:
                        int i10 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddSfidAccessTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                    default:
                        int i11 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddTwistOnlySfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                }
                return Unit.f71739a;
            }
        }, new Function1(retrofitFactory) { // from class: ft0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RetrofitFactory f69210c;

            {
                this.f69210c = retrofitFactory;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i7 = i3;
                RetrofitFactory retrofitFactory2 = this.f69210c;
                OkHttpClient.Builder builder = (OkHttpClient.Builder) obj;
                switch (i7) {
                    case 0:
                        int i8 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.getClass();
                        Logger logger = retrofitFactory2.f46984a;
                        TokenRefreshCoordinator tokenRefreshCoordinator = retrofitFactory2.f46991j;
                        AuthTokenRepository authTokenRepository = retrofitFactory2.f46987e;
                        logger.getClass();
                        xe0 xe0Var = new xe0(logger, 11);
                        retrofitFactory2.o.getClass();
                        sv svVar = new sv(false, 1);
                        Json json = retrofitFactory2.d;
                        json.getClass();
                        builder.f76965h = new RefreshAuthenticator(logger, tokenRefreshCoordinator, authTokenRepository, CollectionsKt.P(xe0Var, svVar, new xe0(json, 10)));
                        break;
                    case 1:
                        int i9 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        TwistAuthRepository twistAuthRepository = retrofitFactory2.f46988f;
                        AuthTokenRepository authTokenRepository2 = retrofitFactory2.f46987e;
                        GuestAuthenticatorInterceptor guestAuthenticatorInterceptor = new GuestAuthenticatorInterceptor(twistAuthRepository, authTokenRepository2, new xn0(retrofitFactory2, 16));
                        ArrayList arrayList = builder.f76962c;
                        arrayList.add(guestAuthenticatorInterceptor);
                        arrayList.add(new AddSfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, authTokenRepository2));
                        break;
                    case 2:
                        int i10 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddSfidAccessTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                    default:
                        int i11 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddTwistOnlySfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                }
                return Unit.f71739a;
            }
        }, new Function1(retrofitFactory) { // from class: ft0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RetrofitFactory f69210c;

            {
                this.f69210c = retrofitFactory;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i7 = i5;
                RetrofitFactory retrofitFactory2 = this.f69210c;
                OkHttpClient.Builder builder = (OkHttpClient.Builder) obj;
                switch (i7) {
                    case 0:
                        int i8 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.getClass();
                        Logger logger = retrofitFactory2.f46984a;
                        TokenRefreshCoordinator tokenRefreshCoordinator = retrofitFactory2.f46991j;
                        AuthTokenRepository authTokenRepository = retrofitFactory2.f46987e;
                        logger.getClass();
                        xe0 xe0Var = new xe0(logger, 11);
                        retrofitFactory2.o.getClass();
                        sv svVar = new sv(false, 1);
                        Json json = retrofitFactory2.d;
                        json.getClass();
                        builder.f76965h = new RefreshAuthenticator(logger, tokenRefreshCoordinator, authTokenRepository, CollectionsKt.P(xe0Var, svVar, new xe0(json, 10)));
                        break;
                    case 1:
                        int i9 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        TwistAuthRepository twistAuthRepository = retrofitFactory2.f46988f;
                        AuthTokenRepository authTokenRepository2 = retrofitFactory2.f46987e;
                        GuestAuthenticatorInterceptor guestAuthenticatorInterceptor = new GuestAuthenticatorInterceptor(twistAuthRepository, authTokenRepository2, new xn0(retrofitFactory2, 16));
                        ArrayList arrayList = builder.f76962c;
                        arrayList.add(guestAuthenticatorInterceptor);
                        arrayList.add(new AddSfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, authTokenRepository2));
                        break;
                    case 2:
                        int i10 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddSfidAccessTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                    default:
                        int i11 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddTwistOnlySfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                }
                return Unit.f71739a;
            }
        }, new Function1(retrofitFactory) { // from class: ft0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RetrofitFactory f69210c;

            {
                this.f69210c = retrofitFactory;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i7 = i6;
                RetrofitFactory retrofitFactory2 = this.f69210c;
                OkHttpClient.Builder builder = (OkHttpClient.Builder) obj;
                switch (i7) {
                    case 0:
                        int i8 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.getClass();
                        Logger logger = retrofitFactory2.f46984a;
                        TokenRefreshCoordinator tokenRefreshCoordinator = retrofitFactory2.f46991j;
                        AuthTokenRepository authTokenRepository = retrofitFactory2.f46987e;
                        logger.getClass();
                        xe0 xe0Var = new xe0(logger, 11);
                        retrofitFactory2.o.getClass();
                        sv svVar = new sv(false, 1);
                        Json json = retrofitFactory2.d;
                        json.getClass();
                        builder.f76965h = new RefreshAuthenticator(logger, tokenRefreshCoordinator, authTokenRepository, CollectionsKt.P(xe0Var, svVar, new xe0(json, 10)));
                        break;
                    case 1:
                        int i9 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        TwistAuthRepository twistAuthRepository = retrofitFactory2.f46988f;
                        AuthTokenRepository authTokenRepository2 = retrofitFactory2.f46987e;
                        GuestAuthenticatorInterceptor guestAuthenticatorInterceptor = new GuestAuthenticatorInterceptor(twistAuthRepository, authTokenRepository2, new xn0(retrofitFactory2, 16));
                        ArrayList arrayList = builder.f76962c;
                        arrayList.add(guestAuthenticatorInterceptor);
                        arrayList.add(new AddSfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, authTokenRepository2));
                        break;
                    case 2:
                        int i10 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddSfidAccessTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                    default:
                        int i11 = RetrofitFactory.q;
                        builder.getClass();
                        retrofitFactory2.g(builder);
                        builder.f76962c.add(new AddTwistOnlySfidAndSlasTokenInterceptor(retrofitFactory2.f46984a, retrofitFactory2.f46987e));
                        break;
                }
                return Unit.f71739a;
            }
        });
    }

    public final Retrofit b(BffApi bffApi) {
        return f(this, e(bffApi), this.f46992k, false, null, 60);
    }

    public final Retrofit c(BffApi bffApi, AuthRequirement authRequirement) {
        authRequirement.getClass();
        return f(this, e(bffApi), this.f46992k, false, authRequirement, 44);
    }

    public final String e(BffApi bffApi) {
        int i2 = bffApi == null ? -1 : WhenMappings.f46993a[bffApi.ordinal()];
        if (i2 == -1) {
            return "https://fakeurl.com/";
        }
        EnvironmentProvider environmentProvider = this.l;
        if (i2 == 1) {
            return environmentProvider.b();
        }
        if (i2 == 2) {
            return environmentProvider.o();
        }
        if (i2 == 3) {
            return environmentProvider.e();
        }
        v40.g();
        return null;
    }

    public final void g(OkHttpClient.Builder builder) {
        ProactiveTokenRefreshInterceptor proactiveTokenRefreshInterceptor = new ProactiveTokenRefreshInterceptor(this.f46991j);
        builder.getClass();
        builder.f76962c.add(proactiveTokenRefreshInterceptor);
    }

    public /* synthetic */ RetrofitFactory(Logger logger, Context context, KotlinxSerializationConverterFactory kotlinxSerializationConverterFactory, Json json, AuthTokenRepository authTokenRepository, TwistAuthRepository twistAuthRepository, AppConfigRepository appConfigRepository, InAppDispatchRepository inAppDispatchRepository, FeatureCheckerProvider featureCheckerProvider, TokenRefreshCoordinator tokenRefreshCoordinator, CookieJar cookieJar, EnvironmentProvider environmentProvider, ProdUrls prodUrls, DeviceIdLocalDataSource deviceIdLocalDataSource, BuildConfigProvider buildConfigProvider, Set set, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger, context, kotlinxSerializationConverterFactory, json, authTokenRepository, twistAuthRepository, appConfigRepository, inAppDispatchRepository, featureCheckerProvider, tokenRefreshCoordinator, (i2 & 1024) != 0 ? null : cookieJar, environmentProvider, prodUrls, deviceIdLocalDataSource, buildConfigProvider, set);
    }
}
