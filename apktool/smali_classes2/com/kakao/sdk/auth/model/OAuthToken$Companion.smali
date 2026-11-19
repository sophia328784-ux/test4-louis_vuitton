.class public final Lcom/kakao/sdk/auth/model/OAuthToken$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/auth/model/OAuthToken;
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
        "Lcom/kakao/sdk/auth/model/OAuthToken$Companion;",
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

.method public static a(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Refresh token not found in the response."

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->e()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    mul-long/2addr v4, v7

    add-long/2addr v4, v9

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_2
    move-object v4, v6

    goto :goto_4

    :cond_3
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->e()Ljava/util/Date;

    move-result-object v4

    move-object v6, v4

    goto :goto_3

    :cond_5
    move-object v6, v3

    :goto_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, " "

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v6, v5

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->f()Ljava/util/List;

    move-result-object v3

    :cond_8
    move-object v6, v3

    :goto_6
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->c()Ljava/lang/String;

    move-result-object v5

    move-object v3, v0

    new-instance v0, Lcom/kakao/sdk/auth/model/OAuthToken;

    invoke-direct/range {v0 .. v6}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
