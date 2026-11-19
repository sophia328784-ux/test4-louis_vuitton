.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;
    .locals 7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->b:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->b(Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->e:Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;

    sget-object v6, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v6, p0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_2

    const/4 v6, 0x2

    if-ne p0, v6, :cond_1

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->BASE64:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->THREEKIT:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->a:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->d:Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;

    sget-object v4, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->BASE64:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->THREEKIT:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    :goto_0
    invoke-direct {v3, v0, v2}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;)V

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v5

    :goto_2
    iget-object v0, v0, Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
