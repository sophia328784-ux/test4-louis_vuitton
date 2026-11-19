.class public final Lcom/sightcall/httpclient/di/HttpClientModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/httpclient/di/HttpClientModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/httpclient/di/HttpClientModule;",
        "",
        "versionName",
        "",
        "versionMucl",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "provideRetrofit",
        "Lretrofit2/Retrofit;",
        "context",
        "Landroid/content/Context;",
        "Companion",
        "httpclient_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

.field private static baseUrl:Ljava/net/URL;

.field private static developerBaseUrl:Ljava/net/URL;


# instance fields
.field private final versionMucl:I

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/httpclient/di/HttpClientModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/httpclient/di/HttpClientModule;->Companion:Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/httpclient/di/HttpClientModule;->versionName:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/httpclient/di/HttpClientModule;->versionMucl:I

    return-void
.end method

.method public static final synthetic access$setBaseUrl$cp(Ljava/net/URL;)V
    .locals 0

    sput-object p0, Lcom/sightcall/httpclient/di/HttpClientModule;->baseUrl:Ljava/net/URL;

    return-void
.end method

.method public static final synthetic access$setDeveloperBaseUrl$cp(Ljava/net/URL;)V
    .locals 0

    sput-object p0, Lcom/sightcall/httpclient/di/HttpClientModule;->developerBaseUrl:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final provideRetrofit(Landroid/content/Context;)Lretrofit2/Retrofit;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v1, Lcom/sightcall/httpclient/di/HttpClientModule;->developerBaseUrl:Ljava/net/URL;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/sightcall/httpclient/di/HttpClientModule;->baseUrl:Ljava/net/URL;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "baseUrl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->c(Lokhttp3/HttpUrl;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v3, v1}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {v0, v3}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v3, Lcom/sightcall/httpclient/interceptors/UserAgentInterceptor;

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->appVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/sightcall/httpclient/di/HttpClientModule;->versionName:Ljava/lang/String;

    iget v8, p0, Lcom/sightcall/httpclient/di/HttpClientModule;->versionMucl:I

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/httpclient/interceptors/UserAgentInterceptor;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, v1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/sightcall/httpclient/interceptors/ContentTypeInterceptor;->INSTANCE:Lcom/sightcall/httpclient/interceptors/ContentTypeInterceptor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 p1, 0x1

    invoke-direct {p0, v2, p1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iget-object p1, v1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object p0, v0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method
