.class public final Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/kakao/sdk/auth/AuthApiManager$issueAccessToken$1",
        "Lretrofit2/Callback;",
        "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lcom/kakao/sdk/auth/AuthApiManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/AuthApiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;->c:Lcom/kakao/sdk/auth/AuthApiManager;

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;->b:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;->b:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/kakao/sdk/auth/model/AccessTokenResponse;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->a(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;->c:Lcom/kakao/sdk/auth/AuthApiManager;

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->b:Lcom/kakao/sdk/auth/TokenManagerProvider;

    iget-object p0, p0, Lcom/kakao/sdk/auth/TokenManagerProvider;->a:Lcom/kakao/sdk/auth/TokenManageable;

    invoke-interface {p0, p1}, Lcom/kakao/sdk/auth/TokenManageable;->b(Lcom/kakao/sdk/auth/model/OAuthToken;)V

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p2, "No body"

    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object p0, Lcom/kakao/sdk/auth/AuthApiManager;->f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->a(Lretrofit2/HttpException;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
