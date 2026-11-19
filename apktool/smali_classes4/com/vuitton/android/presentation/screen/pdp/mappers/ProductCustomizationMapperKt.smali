.class public abstract Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->BASE64:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->THREEKIT:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;->e:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v6, p0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_2

    const/4 v6, 0x2

    if-ne p0, v6, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->BASE64:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->THREEKIT:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->BASE64:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->THREEKIT:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    :goto_0
    invoke-direct {v3, v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    move-object v0, v5

    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
