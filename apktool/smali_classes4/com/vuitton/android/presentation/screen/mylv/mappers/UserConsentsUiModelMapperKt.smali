.class public abstract Lcom/vuitton/android/presentation/screen/mylv/mappers/UserConsentsUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->a:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->c:Ljava/lang/Boolean;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->d:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->e:Ljava/lang/Boolean;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->f:Ljava/lang/Boolean;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->g:Ljava/lang/Boolean;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->h:Ljava/lang/Boolean;

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    if-eqz p0, :cond_6

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->a:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->c:Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->d:Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->f:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->g:Ljava/lang/Boolean;

    move v4, v1

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_6
    new-instance v4, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

    const/16 v12, 0x7f

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;-><init>(ZZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;)V

    return-object v0
.end method
