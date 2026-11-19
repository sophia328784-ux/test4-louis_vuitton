package com.sightcall.universal.api;

import android.text.TextUtils;
import com.sightcall.httpclient.interceptors.UserAgentInterceptor;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.ArOverlayModel;
import com.sightcall.universal.agent.Consent;
import com.sightcall.universal.agent.IntegrationScope;
import com.sightcall.universal.agent.Language;
import com.sightcall.universal.agent.Location;
import com.sightcall.universal.agent.Pincode;
import com.sightcall.universal.agent.Product;
import com.sightcall.universal.agent.Provider;
import com.sightcall.universal.agent.ProviderCustomization;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.util.Lazy;
import com.squareup.moshi.Moshi;
import com.squareup.moshi.adapters.Rfc3339DateJsonAdapter;
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory;
import defpackage.r81;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import okhttp3.Authenticator;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class Apis {
    private static final Lazy<ScalarsConverterFactory> SCALAR_CONVERTER_FACTORY = new Lazy<ScalarsConverterFactory>() { // from class: com.sightcall.universal.api.Apis.1
        @Override // com.sightcall.universal.util.Lazy
        public ScalarsConverterFactory init() {
            return new ScalarsConverterFactory();
        }
    };
    private static final Lazy<HttpLoggingInterceptor> LOGGING_INTERCEPTOR = new Lazy<HttpLoggingInterceptor>() { // from class: com.sightcall.universal.api.Apis.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public HttpLoggingInterceptor init() {
            return new HttpLoggingInterceptor();
        }
    };
    private static final Lazy<Authenticator> REFRESH_TOKEN_AUTHENTICATOR = new Lazy<Authenticator>() { // from class: com.sightcall.universal.api.Apis.3
        @Override // com.sightcall.universal.util.Lazy
        public Authenticator init() {
            return new RefreshTokenAuthenticator();
        }
    };
    private static final Lazy<OkHttpClient> OK_HTTP_CLIENT = new Lazy<OkHttpClient>() { // from class: com.sightcall.universal.api.Apis.4
        @Override // com.sightcall.universal.util.Lazy
        public OkHttpClient init() {
            return Apis.newOkHttpClient();
        }
    };
    private static final Lazy<Moshi> MOSHI = new Lazy<Moshi>() { // from class: com.sightcall.universal.api.Apis.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public Moshi init() {
            Moshi.Builder builder = new Moshi.Builder();
            builder.b(Transient.ADAPTER_FACTORY);
            builder.b(FallbackOnNull.ADAPTER_FACTORY);
            builder.b(FallbackEnumField.ADAPTER_FACTORY);
            builder.b(FallbackEnum.ADAPTER_FACTORY);
            builder.c(new Rfc3339DateJsonAdapter().nullSafe());
            builder.a(new Usecase.MultipleFormatsMultipartyAdapter());
            builder.b(PolymorphicJsonAdapterFactory.of(JsonApi.Included.class, "type").withSubtype(Usecase.class, Usecase.TYPE).withSubtype(Consent.class, Consent.TYPE).withSubtype(ProviderCustomization.class, ProviderCustomization.TYPE).withSubtype(ArOverlayModel.class, ArOverlayModel.TYPE).withSubtype(IntegrationScope.class, IntegrationScope.TYPE).withSubtype(Provider.class, Provider.TYPE).withSubtype(Product.class, Product.TYPE).withSubtype(Language.class, Language.TYPE).withSubtype(Location.class, Location.TYPE).withSubtype(Pincode.class, Pincode.TYPE).withDefaultValue(JsonApi.Included.UNKNOWN));
            builder.b(JsonAdapterFactory.of(CaseReportV3Request.Data.Attributes.Item.class).withSubtype(CaseReportV3Request.Data.Attributes.UserConnected.class).withSubtype(CaseReportV3Request.Data.Attributes.UserJoined.class).withSubtype(CaseReportV3Request.Data.Attributes.UserLeft.class).withSubtype(CaseReportV3Request.Data.Attributes.CallFailed.class).withSubtype(CaseReportV3Request.Data.Attributes.ConsentAccepted.class).withSubtype(CaseReportV3Request.Data.Attributes.ConsentDeclined.class).withSubtype(CaseReportV3Request.Data.Attributes.DisplayNameSet.class).withSubtype(CaseReportV3Request.Data.Attributes.ChatMessageSent.class).withSubtype(CaseReportV3Request.Data.Attributes.ChatMessageReceived.class).withSubtype(CaseReportV3Request.Data.Attributes.HostConnected.class).withSubtype(CaseReportV3Request.Data.Attributes.CallEnded.class).withSubtype(CaseReportV3Request.Data.Attributes.GpsReceived.class).withSubtype(CaseReportV3Request.Data.Attributes.BaseItem.class));
            builder.b(new KotlinJsonAdapterFactory());
            return new Moshi(builder);
        }
    };
    private static final Lazy<MoshiConverterFactory> MOSHI_CONVERTER_FACTORY = new Lazy<MoshiConverterFactory>() { // from class: com.sightcall.universal.api.Apis.6
        @Override // com.sightcall.universal.util.Lazy
        public MoshiConverterFactory init() {
            Moshi moshi = (Moshi) Apis.MOSHI.get();
            if (moshi != null) {
                return new MoshiConverterFactory(moshi);
            }
            r81.d("moshi == null");
            return null;
        }
    };
    private static final Lazy<Retrofit> RETROFIT = new Lazy<Retrofit>() { // from class: com.sightcall.universal.api.Apis.7
        @Override // com.sightcall.universal.util.Lazy
        public Retrofit init() {
            return Apis.newRetrofit();
        }
    };
    private static final Map<Environment, Map<Class<?>, Object>> cache = new HashMap();

    private Apis() {
    }

    public static <T> T get(Class<T> cls, Environment environment) {
        String str = Universal.settings().apiBaseUrl().get();
        if (!TextUtils.isEmpty(str)) {
            Retrofit retrofit = RETROFIT.get();
            retrofit.getClass();
            Retrofit.Builder builder = new Retrofit.Builder(retrofit);
            builder.b(str);
            return (T) builder.d().b(cls);
        }
        Map<Environment, Map<Class<?>, Object>> map = cache;
        Map map2 = map.get(environment);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(environment, (Map<Class<?>, Object>) map2);
        }
        T t = (T) map2.get(cls);
        if (t != null) {
            return t;
        }
        Retrofit retrofit3 = RETROFIT.get();
        retrofit3.getClass();
        Retrofit.Builder builder2 = new Retrofit.Builder(retrofit3);
        builder2.b(environment.baseUrl());
        T t2 = (T) builder2.d().b(cls);
        map2.put(cls, t2);
        return t2;
    }

    public static Lazy<Moshi> lazyMoshi() {
        return MOSHI;
    }

    public static HttpLoggingInterceptor loggingInterceptor() {
        return LOGGING_INTERCEPTOR.get();
    }

    public static Moshi moshi() {
        return MOSHI.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OkHttpClient newOkHttpClient() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        RequestIdInterceptor requestIdInterceptor = new RequestIdInterceptor();
        ArrayList arrayList = builder.f76962c;
        arrayList.add(requestIdInterceptor);
        arrayList.add(new com.sightcall.universal.agent.TimeoutInterceptor());
        arrayList.add(new UserAgentInterceptor(ContextExtensionsKt.appVersionCode(Universal.context()), Universal.context().getPackageName(), "7.10.2 Build 800120953", 24225376));
        builder.a(LOGGING_INTERCEPTOR.get());
        Authenticator authenticator = REFRESH_TOKEN_AUTHENTICATOR.get();
        authenticator.getClass();
        builder.f76965h = authenticator;
        return new OkHttpClient(builder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Retrofit newRetrofit() {
        Retrofit.Builder builder = new Retrofit.Builder();
        builder.b(Environment.PROD.baseUrl());
        builder.a(SCALAR_CONVERTER_FACTORY.get());
        builder.a(MOSHI_CONVERTER_FACTORY.get());
        OkHttpClient okHttpClient = OK_HTTP_CLIENT.get();
        Objects.requireNonNull(okHttpClient, "client == null");
        builder.f79461a = okHttpClient;
        return builder.d();
    }
}
