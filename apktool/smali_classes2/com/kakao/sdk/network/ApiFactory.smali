.class public final Lcom/kakao/sdk/network/ApiFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/kakao/sdk/network/ApiFactory;",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;

.field public static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;->c:Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$appKeyInterceptor$2;->c:Lcom/kakao/sdk/network/ApiFactory$appKeyInterceptor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;->c:Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kapi$2;->c:Lcom/kakao/sdk/network/ApiFactory$kapi$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kapiNoLog$2;->c:Lcom/kakao/sdk/network/ApiFactory$kapiNoLog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static a(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit;
    .locals 2

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory;

    invoke-direct {p0}, Lcom/kakao/sdk/network/KakaoRetrofitConverterFactory;-><init>()V

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    if-eqz p0, :cond_0

    new-instance v1, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v1, p0}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)V

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object p0, v0, Lretrofit2/Retrofit$Builder;->a:Lokhttp3/Call$Factory;

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->d()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "gson == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
