.class public final Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lcom/kakao/sdk/common/model/ApplicationContextInfo;",
        "contextInfo",
        "<init>",
        "(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V",
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
.field public final a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;-><init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;-><init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v4, Lokhttp3/Response$Builder;

    invoke-direct {v4, v0}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    if-eqz v3, :cond_1

    sget-object v0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lokhttp3/ResponseBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    if-eqz v3, :cond_2

    sget-object v4, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lokhttp3/ResponseBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    :cond_2
    iget-boolean v1, v0, Lokhttp3/Response;->r:Z

    if-nez v1, :cond_a

    if-eqz v3, :cond_3

    const-class v1, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v4, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {v3, v4}, Lcom/kakao/sdk/common/util/KakaoJson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/common/model/ApiErrorCause;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_a

    new-instance v4, Lcom/kakao/sdk/common/model/ApiError;

    iget v5, v0, Lokhttp3/Response;->e:I

    invoke-direct {v4, v5, v3, v1}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiError;->b()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiError;->a()Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v1

    sget-object v3, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    if-eq v1, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/kakao/sdk/auth/AuthApiClient;->b:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/kakao/sdk/auth/AuthApiClient;->c:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/auth/AuthApiClient;

    new-instance v5, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;

    move-object v8, p0

    invoke-direct/range {v5 .. v10}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Lcom/kakao/sdk/auth/AuthApiClient;->a:Lcom/kakao/sdk/auth/AuthApiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->b:Lcom/kakao/sdk/auth/TokenManagerProvider;

    iget-object v1, v1, Lcom/kakao/sdk/auth/TokenManagerProvider;->a:Lcom/kakao/sdk/auth/TokenManageable;

    invoke-interface {v1}, Lcom/kakao/sdk/auth/TokenManageable;->a()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/kakao/sdk/auth/AuthApiManager;->a:Lcom/kakao/sdk/auth/AuthApi;

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->c:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {p0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->d()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0, v1}, Lcom/kakao/sdk/auth/AuthApi;->agt(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    new-instance v1, Lcom/kakao/sdk/auth/AuthApiManager$agt$1$1;

    invoke-direct {v1, v5}, Lcom/kakao/sdk/auth/AuthApiManager$agt$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :cond_6
    move-object p0, v2

    :goto_4
    if-nez p0, :cond_7

    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v3, "Access token not found. You must login first."

    invoke-direct {p0, v1, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {v5, v2, p0}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object p0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Lcom/kakao/sdk/auth/model/OAuthToken;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/OAuthToken;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    iget-object v0, v0, Lokhttp3/Response;->b:Lokhttp3/Request;

    invoke-static {v0, p0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->a(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lcom/kakao/sdk/network/ExceptionWrapper;

    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    new-instance v5, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    sget-object p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->a()I

    move-result v6

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiError;->b()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiError;->b()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->a()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v7, "requiredScopes not exist"

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/kakao/sdk/common/model/ApiErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/kakao/sdk/common/model/ApiError;

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiError;->c()I

    move-result v0

    invoke-direct {p1, v0, p0, v5}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    new-instance p0, Lcom/kakao/sdk/network/ExceptionWrapper;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_a
    :goto_5
    return-object v0
.end method
