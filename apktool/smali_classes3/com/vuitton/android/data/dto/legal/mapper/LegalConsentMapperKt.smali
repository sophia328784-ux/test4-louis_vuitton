.class public abstract Lcom/vuitton/android/data/dto/legal/mapper/LegalConsentMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/legal/mapper/LegalConsentMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/data/dto/legal/LegalConsentDto;)Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/legal/LegalConsentDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/legal/LegalConsentDto;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;->b:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;->c:Z

    iget-object v0, v0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;->d:Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    sget-object v8, Lcom/vuitton/android/data/dto/legal/mapper/LegalConsentMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;->SHADE_FINDER_IMAGE_STORAGE:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v7

    :cond_1
    :goto_1
    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
