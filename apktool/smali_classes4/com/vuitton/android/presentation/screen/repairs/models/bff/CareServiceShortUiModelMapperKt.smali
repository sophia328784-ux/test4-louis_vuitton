.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModelMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    move-object v3, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    move-object v9, v7

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    if-eqz v10, :cond_2

    new-instance v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->b:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v10, :cond_1

    invoke-static {v10}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v5

    :goto_1
    invoke-direct {v11, v13, v12, v10, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v5

    :goto_2
    move-object v5, v9

    goto :goto_3

    :cond_2
    move-object v10, v5

    move-object v11, v10

    goto :goto_2

    :goto_3
    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    invoke-virtual {v12}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v12

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_4

    :cond_3
    move-object v14, v10

    :goto_4
    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_5

    :cond_4
    move-object v15, v10

    :goto_5
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlinx/datetime/Instant;->a()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6

    :cond_5
    move-object v0, v10

    :goto_6
    const v20, 0x3e000

    const/16 v21, 0x0

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v8

    move-object v8, v11

    move-wide v10, v12

    move-object/from16 v12, v22

    move-object v13, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
