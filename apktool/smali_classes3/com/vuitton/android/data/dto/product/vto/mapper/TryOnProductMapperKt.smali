.class public abstract Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;->LIPLINER:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;->EYESHADOW:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;->LIPSTICK:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;->a(Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;->a(Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object v6, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    iget-object v9, v8, Lcom/vuitton/android/data/dto/product/vto/ColorDto;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/product/vto/ColorDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    iget-object v8, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    if-eqz v8, :cond_1

    check-cast v8, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;

    iget-object v11, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->a:Ljava/lang/String;

    iget-object v12, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->b:Ljava/lang/String;

    iget-object v13, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->c:Ljava/lang/String;

    iget-object v14, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->d:Ljava/lang/String;

    iget-object v15, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v15}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v15

    iget-boolean v9, v9, Lcom/vuitton/android/data/dto/product/vto/LookDto;->f:Z

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/vuitton/foundation/model/domain/model/product/vto/Look;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Z)V

    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v8, v5

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    iget-boolean v9, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    iget-boolean v10, v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/Color;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
