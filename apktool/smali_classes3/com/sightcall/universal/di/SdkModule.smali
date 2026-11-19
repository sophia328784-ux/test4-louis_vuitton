.class public final Lcom/sightcall/universal/di/SdkModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0006\u001a\u00020\u0003H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0008\u000cJ\r\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/universal/di/SdkModule;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "provideApplicationContext",
        "provideApplicationContext$sdk_installedRelease",
        "provideSDKInjector",
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        "sdkComponent",
        "Lcom/sightcall/universal/di/SdkComponent;",
        "provideSDKInjector$sdk_installedRelease",
        "provideRxJava2ExecutionScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "provideRxJava2ExecutionScheduler$sdk_installedRelease",
        "provideRxJava2PostExecutionScheduler",
        "provideRxJava2PostExecutionScheduler$sdk_installedRelease",
        "provideNetworkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/SdkModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final provideApplicationContext$sdk_installedRelease()Landroid/content/Context;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/di/ApplicationContext;
    .end annotation

    .annotation runtime Lcom/sightcall/universal/di/SdkScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/di/SdkModule;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final provideNetworkConnector()Lcom/sightcall/libraries/network/NetworkConnector;
    .locals 4
    .annotation runtime Lcom/sightcall/universal/di/SdkScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    new-instance p0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v1, v0}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    new-instance v0, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    invoke-direct {v0}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;-><init>()V

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v3, v2, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, v2}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v3, "https://www.sightcall.com"

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    iget-object v1, v2, Lretrofit2/Retrofit$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v2, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/NetworkConnectorImpl;-><init>(Lretrofit2/Retrofit;)V

    return-object v0

    :cond_0
    const-string p0, "gson == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public final provideRxJava2ExecutionScheduler$sdk_installedRelease()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/di/IOScheduler;
    .end annotation

    .annotation runtime Lcom/sightcall/universal/di/SdkScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    sget-object p0, Lio/reactivex/rxjava3/schedulers/Schedulers;->b:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final provideRxJava2PostExecutionScheduler$sdk_installedRelease()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/di/MainScheduler;
    .end annotation

    .annotation runtime Lcom/sightcall/universal/di/SdkScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    sget-object p0, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "scheduler == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final provideSDKInjector$sdk_installedRelease(Lcom/sightcall/universal/di/SdkComponent;)Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/di/SdkScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/di/SDKInjectorImpl;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/SDKInjectorImpl;-><init>(Lcom/sightcall/universal/di/SdkComponent;)V

    return-object p0
.end method
