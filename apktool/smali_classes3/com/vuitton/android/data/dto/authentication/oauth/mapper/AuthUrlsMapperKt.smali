.class public abstract Lcom/vuitton/android/data/dto/authentication/oauth/mapper/AuthUrlsMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;)Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;->b:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez p0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_3

    const-string v5, "client-id"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    if-nez v5, :cond_4

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v5

    :goto_4
    if-eqz v0, :cond_5

    const-string v5, "state"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v4

    :goto_5
    if-nez v5, :cond_6

    move-object v5, v1

    :cond_6
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_7

    const-string v5, "code-challenge"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_7
    move-object v5, v4

    :goto_6
    if-nez v5, :cond_8

    move-object v9, v1

    goto :goto_7

    :cond_8
    move-object v9, v5

    :goto_7
    if-eqz v0, :cond_9

    const-string v5, "redirect-uri"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_9
    move-object v0, v4

    :goto_8
    if-nez v0, :cond_a

    move-object v8, v1

    goto :goto_9

    :cond_a
    move-object v8, v0

    :goto_9
    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string v0, "code"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-nez v4, :cond_c

    move-object v11, v1

    goto :goto_a

    :cond_c
    move-object v11, v4

    :goto_a
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;

    invoke-direct {p0, v2, v3, v6}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;)V

    return-object p0
.end method
