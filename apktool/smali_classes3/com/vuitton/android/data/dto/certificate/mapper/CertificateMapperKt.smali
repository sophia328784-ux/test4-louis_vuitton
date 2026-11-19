.class public abstract Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;->PENDING:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;->UNLOCKED:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;->LOCKED:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/certificate/CertificateDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v3, :cond_16

    check-cast v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->h:Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    if-nez v3, :cond_1

    move-object v9, v5

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    if-eqz v7, :cond_2

    iget-object v8, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_3

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_3
    move-object v10, v8

    if-eqz v7, :cond_4

    iget-object v3, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    if-nez v3, :cond_5

    move-object v11, v5

    goto :goto_4

    :cond_5
    move-object v11, v3

    :goto_4
    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->a(Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    move-result-object v12

    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->f:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v13, v5

    goto :goto_5

    :cond_6
    move-object v13, v3

    :goto_5
    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->e:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v7, v4

    :goto_6
    if-nez v7, :cond_8

    move-object v14, v5

    goto :goto_7

    :cond_8
    move-object v14, v7

    :goto_7
    if-nez v3, :cond_9

    move-object v15, v5

    goto :goto_8

    :cond_9
    move-object v15, v3

    :goto_8
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object v2, v4

    :goto_9
    if-nez v2, :cond_b

    move-object/from16 v16, v5

    goto :goto_a

    :cond_b
    move-object/from16 v16, v2

    :goto_a
    if-eqz v6, :cond_c

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->a:Ljava/lang/Double;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_c
    move-object v2, v4

    :goto_b
    if-nez v2, :cond_d

    move-object/from16 v17, v5

    goto :goto_c

    :cond_d
    move-object/from16 v17, v2

    :goto_c
    if-eqz v6, :cond_e

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->b:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object v2, v4

    :goto_d
    if-nez v2, :cond_f

    move-object/from16 v18, v5

    goto :goto_e

    :cond_f
    move-object/from16 v18, v2

    :goto_e
    if-eqz v6, :cond_10

    iget-object v4, v6, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->c:Ljava/lang/String;

    :cond_10
    if-nez v4, :cond_11

    move-object/from16 v19, v5

    goto :goto_f

    :cond_11
    move-object/from16 v19, v4

    :goto_f
    if-eqz v6, :cond_15

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;->g:Ljava/util/List;

    if-eqz v2, :cond_15

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;

    iget-object v7, v4, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto;->a:Ljava/lang/String;

    if-nez v7, :cond_12

    move-object v7, v5

    :cond_12
    iget-object v4, v4, Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto;->b:Ljava/lang/String;

    if-nez v4, :cond_13

    move-object v4, v5

    :cond_13
    invoke-direct {v6, v7, v4}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_14
    :goto_11
    move-object/from16 v21, v3

    goto :goto_12

    :cond_15
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_11

    :goto_12
    new-instance v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    const/16 v20, 0x0

    const/16 v22, 0x800

    const/16 v23, 0x0

    invoke-direct/range {v8 .. v23}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_13
    move-object v4, v8

    goto/16 :goto_3d

    :cond_16
    instance-of v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;

    if-eqz v3, :cond_2a

    check-cast v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->h:Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    if-nez v3, :cond_17

    move-object v9, v5

    goto :goto_14

    :cond_17
    move-object v9, v3

    :goto_14
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    if-eqz v7, :cond_18

    iget-object v10, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->a:Ljava/lang/String;

    goto :goto_15

    :cond_18
    move-object v10, v4

    :goto_15
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_19

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_19
    if-eqz v7, :cond_1a

    iget-object v7, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->b:Ljava/lang/String;

    goto :goto_16

    :cond_1a
    move-object v7, v4

    :goto_16
    if-nez v7, :cond_1b

    move-object v11, v5

    goto :goto_17

    :cond_1b
    move-object v11, v7

    :goto_17
    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->a(Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    move-result-object v12

    if-nez v3, :cond_1c

    move-object v13, v5

    goto :goto_18

    :cond_1c
    move-object v13, v3

    :goto_18
    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->e:Ljava/lang/String;

    if-nez v3, :cond_1d

    move-object v14, v5

    goto :goto_19

    :cond_1d
    move-object v14, v3

    :goto_19
    if-eqz v6, :cond_1e

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->c:Ljava/lang/String;

    goto :goto_1a

    :cond_1e
    move-object v3, v4

    :goto_1a
    if-nez v3, :cond_1f

    move-object v15, v5

    goto :goto_1b

    :cond_1f
    move-object v15, v3

    :goto_1b
    iget-object v2, v2, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_1c

    :cond_20
    move-object v2, v4

    :goto_1c
    if-nez v2, :cond_21

    move-object/from16 v16, v5

    goto :goto_1d

    :cond_21
    move-object/from16 v16, v2

    :goto_1d
    if-eqz v6, :cond_22

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->a:Ljava/lang/String;

    goto :goto_1e

    :cond_22
    move-object v2, v4

    :goto_1e
    if-nez v2, :cond_23

    move-object/from16 v17, v5

    goto :goto_1f

    :cond_23
    move-object/from16 v17, v2

    :goto_1f
    if-eqz v6, :cond_27

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->e:Ljava/util/List;

    if-eqz v2, :cond_27

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v7, :cond_25

    iget-object v7, v7, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_21

    :cond_25
    move-object v7, v4

    :goto_21
    if-eqz v7, :cond_24

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_26
    :goto_22
    move-object/from16 v18, v3

    goto :goto_23

    :cond_27
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_22

    :goto_23
    if-eqz v6, :cond_28

    iget-object v2, v6, Lcom/vuitton/android/data/dto/certificate/CertificateCapucineDataDto;->d:Ljava/util/List;

    if-eqz v2, :cond_28

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v2, :cond_28

    iget-object v2, v2, Lcom/vuitton/android/data/dto/common/AssetDto;->b:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    if-eqz v2, :cond_28

    iget-object v4, v2, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->b:Ljava/lang/String;

    :cond_28
    if-nez v4, :cond_29

    move-object/from16 v19, v5

    goto :goto_24

    :cond_29
    move-object/from16 v19, v4

    :goto_24
    new-instance v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;

    const/16 v20, 0x0

    invoke-direct/range {v8 .. v20}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_13

    :cond_2a
    instance-of v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;

    if-eqz v3, :cond_37

    check-cast v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    if-nez v3, :cond_2b

    move-object v3, v5

    :cond_2b
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    if-eqz v7, :cond_2c

    iget-object v9, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->a:Ljava/lang/String;

    goto :goto_25

    :cond_2c
    move-object v9, v4

    :goto_25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_2d

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_2d
    move-object v8, v9

    if-eqz v7, :cond_2e

    iget-object v7, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->b:Ljava/lang/String;

    goto :goto_26

    :cond_2e
    move-object v7, v4

    :goto_26
    if-nez v7, :cond_2f

    move-object v9, v5

    goto :goto_27

    :cond_2f
    move-object v9, v7

    :goto_27
    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->a(Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    move-result-object v10

    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->h:Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;

    if-eqz v7, :cond_30

    iget-object v11, v7, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;->a:Ljava/lang/String;

    goto :goto_28

    :cond_30
    move-object v11, v4

    :goto_28
    if-nez v11, :cond_31

    move-object v11, v5

    :cond_31
    iget-object v12, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v12, :cond_32

    iget-object v12, v12, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v12, :cond_32

    iget-object v12, v12, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_29

    :cond_32
    move-object v12, v4

    :goto_29
    if-nez v12, :cond_33

    move-object v12, v5

    :cond_33
    iget-object v2, v2, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->e:Ljava/lang/String;

    if-nez v2, :cond_34

    move-object v13, v5

    goto :goto_2a

    :cond_34
    move-object v13, v2

    :goto_2a
    if-eqz v7, :cond_35

    iget-object v4, v7, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;->b:Ljava/lang/String;

    :cond_35
    if-nez v4, :cond_36

    move-object v14, v5

    goto :goto_2b

    :cond_36
    move-object v14, v4

    :goto_2b
    const/4 v15, 0x0

    move-object v7, v3

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v6

    goto/16 :goto_3d

    :cond_37
    instance-of v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;

    if-eqz v3, :cond_4c

    check-cast v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->h:Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;

    iget-object v7, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    if-nez v3, :cond_38

    move-object v9, v5

    goto :goto_2c

    :cond_38
    move-object v9, v3

    :goto_2c
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    if-eqz v7, :cond_39

    iget-object v8, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->a:Ljava/lang/String;

    goto :goto_2d

    :cond_39
    move-object v8, v4

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_3a

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_3a
    move-object v10, v8

    if-eqz v7, :cond_3b

    iget-object v3, v7, Lcom/vuitton/android/data/dto/certificate/ProductDto;->b:Ljava/lang/String;

    goto :goto_2e

    :cond_3b
    move-object v3, v4

    :goto_2e
    if-nez v3, :cond_3c

    move-object v11, v5

    goto :goto_2f

    :cond_3c
    move-object v11, v3

    :goto_2f
    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->a(Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;

    move-result-object v12

    if-eqz v6, :cond_3d

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->a:Ljava/lang/String;

    goto :goto_30

    :cond_3d
    move-object v3, v4

    :goto_30
    if-nez v3, :cond_3e

    move-object v13, v5

    goto :goto_31

    :cond_3e
    move-object v13, v3

    :goto_31
    if-eqz v6, :cond_3f

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->b:Ljava/lang/String;

    goto :goto_32

    :cond_3f
    move-object v3, v4

    :goto_32
    if-nez v3, :cond_40

    move-object v14, v5

    goto :goto_33

    :cond_40
    move-object v14, v3

    :goto_33
    if-eqz v6, :cond_42

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    if-eqz v3, :cond_42

    iget-object v7, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    if-eqz v7, :cond_42

    iget-object v3, v3, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v3, :cond_41

    move-object v3, v5

    :cond_41
    invoke-static {v7, v3, v4}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v3

    move-object v15, v3

    goto :goto_34

    :cond_42
    move-object v15, v4

    :goto_34
    if-eqz v6, :cond_43

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->d:Ljava/lang/String;

    move-object/from16 v16, v3

    goto :goto_35

    :cond_43
    move-object/from16 v16, v4

    :goto_35
    if-eqz v6, :cond_44

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->e:Ljava/lang/String;

    move-object/from16 v17, v3

    goto :goto_36

    :cond_44
    move-object/from16 v17, v4

    :goto_36
    if-eqz v6, :cond_45

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->f:Ljava/lang/String;

    move-object/from16 v18, v3

    goto :goto_37

    :cond_45
    move-object/from16 v18, v4

    :goto_37
    if-eqz v6, :cond_46

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->g:Ljava/lang/String;

    move-object/from16 v19, v3

    goto :goto_38

    :cond_46
    move-object/from16 v19, v4

    :goto_38
    if-eqz v6, :cond_47

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->h:Ljava/lang/String;

    move-object/from16 v20, v3

    goto :goto_39

    :cond_47
    move-object/from16 v20, v4

    :goto_39
    if-eqz v6, :cond_48

    iget-object v3, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->i:Ljava/lang/String;

    move-object/from16 v21, v3

    goto :goto_3a

    :cond_48
    move-object/from16 v21, v4

    :goto_3a
    iget-object v3, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v3, :cond_49

    iget-object v3, v3, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v3, :cond_49

    iget-object v3, v3, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_3b

    :cond_49
    move-object v3, v4

    :goto_3b
    if-nez v3, :cond_4a

    move-object/from16 v23, v5

    goto :goto_3c

    :cond_4a
    move-object/from16 v23, v3

    :goto_3c
    iget-object v2, v2, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->e:Ljava/lang/String;

    if-eqz v6, :cond_4b

    iget-object v4, v6, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;->j:Ljava/lang/String;

    :cond_4b
    move-object/from16 v22, v4

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;

    const/16 v25, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v8 .. v25}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_13

    :cond_4c
    instance-of v2, v2, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;

    if-eqz v2, :cond_4d

    :goto_3d
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4d
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_4e
    return-object v1
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->PENDING:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->UNLOCKED:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->LOCKED:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    return-object p0
.end method
