.class public final Lcom/sightcall/analytics/di/AnalyticsModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/analytics/di/AnalyticsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sightcall/analytics/di/AnalyticsModule$Companion;",
        "",
        "<init>",
        "()V",
        "provideAnalyticsUploadApi",
        "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;",
        "provideAnalyticsUploadApi$analytics_release",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/analytics/di/AnalyticsModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideAnalyticsUploadApi$analytics_release()Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "https://sightcall.com"

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v1, v0}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {p0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/sightcall/httpclient/interceptors/LocalForwardInterceptor;

    invoke-direct {v1}, Lcom/sightcall/httpclient/interceptors/LocalForwardInterceptor;-><init>()V

    iget-object v2, v0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object v1, p0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    return-object p0
.end method
