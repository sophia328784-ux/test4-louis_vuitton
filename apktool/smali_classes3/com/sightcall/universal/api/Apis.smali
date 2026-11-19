.class public final Lcom/sightcall/universal/api/Apis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGING_INTERCEPTOR:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/api/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOSHI:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOSHI_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lretrofit2/converter/moshi/MoshiConverterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final OK_HTTP_CLIENT:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFRESH_TOKEN_AUTHENTICATOR:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lokhttp3/Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETROFIT:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALAR_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lretrofit2/converter/scalars/ScalarsConverterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sightcall/universal/api/Environment;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/api/Apis$1;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->SCALAR_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$2;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$2;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->LOGGING_INTERCEPTOR:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$3;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$3;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->REFRESH_TOKEN_AUTHENTICATOR:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$4;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$4;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->OK_HTTP_CLIENT:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$5;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$5;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->MOSHI:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$6;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$6;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->MOSHI_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/api/Apis$7;

    invoke-direct {v0}, Lcom/sightcall/universal/api/Apis$7;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->RETROFIT:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/Apis;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/sightcall/universal/util/Lazy;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/api/Apis;->MOSHI:Lcom/sightcall/universal/util/Lazy;

    return-object v0
.end method

.method public static bridge synthetic b()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->newOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic c()Lretrofit2/Retrofit;
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->newRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sightcall/universal/api/Environment;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/UniversalSettings;->apiBaseUrl()Lcom/sightcall/universal/util/Lazy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/sightcall/universal/api/Apis;->RETROFIT:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Retrofit;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1, p1}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Retrofit;)V

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p1

    invoke-virtual {p1, p0}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/api/Apis;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sightcall/universal/api/Apis;->RETROFIT:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2, v0}, Lretrofit2/Retrofit$Builder;-><init>(Lretrofit2/Retrofit;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p1

    invoke-virtual {p1, p0}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public static lazyMoshi()Lcom/sightcall/universal/util/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/api/Apis;->MOSHI:Lcom/sightcall/universal/util/Lazy;

    return-object v0
.end method

.method public static loggingInterceptor()Lcom/sightcall/universal/api/HttpLoggingInterceptor;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/api/Apis;->LOGGING_INTERCEPTOR:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/api/HttpLoggingInterceptor;

    return-object v0
.end method

.method public static moshi()Lcom/squareup/moshi/Moshi;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/api/Apis;->MOSHI:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method private static newOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 9

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/sightcall/universal/api/RequestIdInterceptor;

    invoke-direct {v1}, Lcom/sightcall/universal/api/RequestIdInterceptor;-><init>()V

    iget-object v2, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sightcall/universal/agent/TimeoutInterceptor;

    invoke-direct {v1}, Lcom/sightcall/universal/agent/TimeoutInterceptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sightcall/httpclient/interceptors/UserAgentInterceptor;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->appVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "7.10.2 Build 800120953"

    const v8, 0x171a660

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/httpclient/interceptors/UserAgentInterceptor;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sightcall/universal/api/Apis;->LOGGING_INTERCEPTOR:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)V

    sget-object v1, Lcom/sightcall/universal/api/Apis;->REFRESH_TOKEN_AUTHENTICATOR:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Authenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v1
.end method

.method private static newRetrofit()Lretrofit2/Retrofit;
    .locals 3

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    invoke-virtual {v1}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/sightcall/universal/api/Apis;->SCALAR_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    sget-object v1, Lcom/sightcall/universal/api/Apis;->MOSHI_CONVERTER_FACTORY:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    sget-object v1, Lcom/sightcall/universal/api/Apis;->OK_HTTP_CLIENT:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    const-string v2, "client == null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method
