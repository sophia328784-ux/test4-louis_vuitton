.class public final Lcom/kakao/sdk/auth/AuthApiManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/auth/AuthApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthApiManager$Companion;",
        "",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lretrofit2/HttpException;)Ljava/lang/Throwable;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/kakao/sdk/common/model/AuthErrorResponse;

    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/common/model/AuthErrorResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/AuthErrorResponse;->a()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-static {v1, v2}, Lcom/kakao/sdk/common/util/KakaoJson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/common/model/AuthErrorCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_1
    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    instance-of v3, v1, Lkotlin/Result$Failure;

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    new-instance v2, Lcom/kakao/sdk/common/model/AuthError;

    iget p0, p0, Lretrofit2/HttpException;->b:I

    invoke-direct {v2, p0, v1, v0}, Lcom/kakao/sdk/common/model/AuthError;-><init>(ILcom/kakao/sdk/common/model/AuthErrorCause;Lcom/kakao/sdk/common/model/AuthErrorResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_1
    move-exception p0

    return-object p0
.end method
