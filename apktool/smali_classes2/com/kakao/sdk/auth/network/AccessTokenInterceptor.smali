.class public final Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "tokenManagerProvider",
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "manager",
        "<init>",
        "(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/kakao/sdk/auth/TokenManagerProvider;

.field public final b:Lcom/kakao/sdk/auth/AuthApiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;-><init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->a:Lcom/kakao/sdk/auth/TokenManagerProvider;

    .line 40
    iput-object p2, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->b:Lcom/kakao/sdk/auth/AuthApiManager;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/kakao/sdk/auth/TokenManagerProvider;->b:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/kakao/sdk/auth/TokenManagerProvider;->c:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/auth/TokenManagerProvider;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/kakao/sdk/auth/AuthApiManager;->f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/kakao/sdk/auth/AuthApiManager;->g:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/auth/AuthApiManager;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;-><init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    iget-object v0, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->a:Lcom/kakao/sdk/auth/TokenManagerProvider;

    iget-object v0, v0, Lcom/kakao/sdk/auth/TokenManagerProvider;->a:Lcom/kakao/sdk/auth/TokenManageable;

    invoke-interface {v0}, Lcom/kakao/sdk/auth/TokenManageable;->a()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_b

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-static {v2, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->a(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    iget-object v4, v3, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6, v3}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    if-eqz v5, :cond_2

    sget-object v3, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v7}, Lokhttp3/ResponseBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v6, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v3

    if-eqz v5, :cond_3

    sget-object v6, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Lokhttp3/ResponseBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    :cond_3
    iget-boolean v4, v3, Lokhttp3/Response;->r:Z

    if-nez v4, :cond_a

    if-eqz v5, :cond_4

    const-class v4, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    sget-object v6, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v6, v5, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_5

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {v1, v5}, Lcom/kakao/sdk/common/util/KakaoJson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    :cond_5
    if-eqz v1, :cond_a

    new-instance v5, Lcom/kakao/sdk/common/model/ApiError;

    iget v6, v3, Lokhttp3/Response;->e:I

    invoke-direct {v5, v6, v1, v4}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    invoke-virtual {v5}, Lcom/kakao/sdk/common/model/ApiError;->a()Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v1

    sget-object v4, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    if-eq v1, v4, :cond_6

    goto :goto_7

    :cond_6
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->a:Lcom/kakao/sdk/auth/TokenManagerProvider;

    iget-object v1, v1, Lcom/kakao/sdk/auth/TokenManagerProvider;->a:Lcom/kakao/sdk/auth/TokenManageable;

    invoke-interface {v1}, Lcom/kakao/sdk/auth/TokenManageable;->a()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->b:Lcom/kakao/sdk/auth/AuthApiManager;

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/auth/AuthApiManager;->a(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    :try_start_2
    iget-object v1, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    const-string v4, "/v1/user/check_access_token"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    :goto_5
    monitor-exit p0

    return-object v3

    :cond_9
    :try_start_3
    invoke-static {v2, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->a(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_4
    new-instance v0, Lcom/kakao/sdk/network/ExceptionWrapper;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1

    :cond_a
    :goto_7
    return-object v3

    :cond_b
    new-instance p0, Lcom/kakao/sdk/network/ExceptionWrapper;

    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method
