.class public abstract Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    const-string v1, ""

    if-eqz v0, :cond_2

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->d:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-direct {p1, v0, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/data/dto/authentication/oauth/mapper/ApiTokenMapperKt;->b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget-object v3, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->b:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->g:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v2

    :cond_6
    invoke-direct {p1, v0, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;)V

    return-object p1

    :cond_7
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Cannot refresh token from None state"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method

.method public static final b(Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;)Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->e:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v0

    :goto_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;->g:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object p0

    :goto_5
    move-object v8, p0

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    goto :goto_5

    :goto_6
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
