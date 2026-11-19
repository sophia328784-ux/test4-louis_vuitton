.class public abstract Lcom/vuitton/android/data/dto/profile/UserConsentsMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;)Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->e:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->f:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v7, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->g:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;)Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/data/dto/profile/UserConsentsMapperKt;->a(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;)Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->b:Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    if-eqz p0, :cond_1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v2, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->e:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->f:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;->g:Ljava/lang/Boolean;

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object v2, v3

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;->a:Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->a:Ljava/lang/Boolean;

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->c:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    iget-object v9, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->d:Ljava/lang/Boolean;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->e:Ljava/lang/Boolean;

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->f:Ljava/lang/Boolean;

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->g:Ljava/lang/Boolean;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->h:Ljava/lang/Boolean;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZZZZ)V

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    if-eqz p0, :cond_1

    new-instance v5, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->a:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->b:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->c:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->d:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->f:Ljava/lang/Boolean;

    iget-object v12, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->g:Ljava/lang/Boolean;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object v2, v5

    :cond_1
    invoke-direct {v0, v1, v4, v2}, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;-><init>(ZLcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsDto;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;)Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->a:Ljava/lang/Boolean;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->b:Ljava/lang/Boolean;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->c:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->d:Ljava/lang/Boolean;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->e:Ljava/lang/Boolean;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->f:Ljava/lang/Boolean;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->g:Ljava/lang/Boolean;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;->h:Ljava/lang/Boolean;

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;

    if-eqz p0, :cond_1

    new-instance v4, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->a:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->b:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->c:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->d:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->e:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->f:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;->g:Ljava/lang/Boolean;

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object v2, v4

    :cond_1
    invoke-direct {v0, v3, v2}, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;-><init>(Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsPatchDto;Lcom/vuitton/android/data/dto/profile/twist/MarketingConsentsPatchDto;)V

    return-object v0
.end method
