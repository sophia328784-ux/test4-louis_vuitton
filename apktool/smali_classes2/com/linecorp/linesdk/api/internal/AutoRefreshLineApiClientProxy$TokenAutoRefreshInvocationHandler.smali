.class Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenAutoRefreshInvocationHandler"
.end annotation


# instance fields
.field public final a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object p1, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v5, Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_a

    instance-of p0, v1, Lcom/linecorp/linesdk/LineApiResponse;

    if-nez p0, :cond_3

    goto/16 :goto_6

    :cond_3
    move-object p0, v1

    check-cast p0, Lcom/linecorp/linesdk/LineApiResponse;

    iget-object p0, p0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    iget p0, p0, Lcom/linecorp/linesdk/LineApiError;->b:I

    const/16 v0, 0x191

    if-ne p0, v0, :cond_a

    iget-object p0, p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->d:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    :try_start_2
    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->a()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->b:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v9, p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->a:Landroid/net/Uri;

    const-string v5, "oauth2/v2.1"

    const-string v6, "token"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v7, v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->d:Ljava/lang/String;

    const-string v8, "client_id"

    const-string v4, "grant_type"

    const-string v5, "refresh_token"

    const-string v6, "refresh_token"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->b([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v3, v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->g:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v3, v10, v0, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->g(Landroid/net/Uri;Ljava/util/LinkedHashMap;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object p0, v0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v0, v0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    iget-object v3, v0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->c:Ljava/lang/String;

    goto :goto_2

    :goto_3
    new-instance v3, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    iget-object v4, v0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->a:Ljava/lang/String;

    iget-wide v5, v0, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v3 .. v9}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    :try_start_3
    invoke-virtual {p0, v3}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->b(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    new-instance v4, Lcom/linecorp/linesdk/LineAccessToken;

    iget-wide v6, v3, Lcom/linecorp/linesdk/internal/InternalAccessToken;->b:J

    iget-wide v8, v3, Lcom/linecorp/linesdk/internal/InternalAccessToken;->c:J

    iget-object v5, v3, Lcom/linecorp/linesdk/internal/InternalAccessToken;->a:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v4}, Lcom/linecorp/linesdk/LineApiResponse;->b(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save access token fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    goto :goto_5

    :cond_7
    :goto_4
    sget-object p0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v0, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get access token fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    :goto_5
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p1, p0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    if-ne p1, p2, :cond_8

    move-object v1, p0

    :cond_8
    return-object v1

    :cond_9
    :try_start_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    return-object p0

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_a
    :goto_6
    return-object v1

    :catch_4
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
