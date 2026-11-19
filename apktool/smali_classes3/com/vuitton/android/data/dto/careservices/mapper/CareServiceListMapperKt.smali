.class public abstract Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceListMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/careservices/CareServicesDto;)Lcom/vuitton/foundation/model/domain/model/careservices/CareService;
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->b:Ljava/lang/String;

    :cond_0
    move-object v4, v2

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt;->a(Lcom/vuitton/android/data/dto/repair/RepairStatusDto;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v7, v1

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    goto :goto_2

    :goto_4
    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object v12, v1

    :goto_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v13, v2

    goto :goto_6

    :cond_6
    move-object v13, v1

    :goto_6
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_7

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_7
    move-object v14, v3

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v17, v2

    goto :goto_7

    :cond_8
    move-object/from16 v17, v1

    :goto_7
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    if-nez v1, :cond_9

    move-object/from16 v18, v2

    goto :goto_8

    :cond_9
    move-object/from16 v18, v1

    :goto_8
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-eqz v1, :cond_d

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/mapper/RepairTypeMapperKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->STORE_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    goto :goto_9

    :cond_a
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_b
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    :goto_9
    if-nez v1, :cond_c

    goto :goto_b

    :cond_c
    :goto_a
    move-object/from16 v19, v1

    goto :goto_c

    :cond_d
    :goto_b
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    goto :goto_a

    :goto_c
    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    goto :goto_d

    :cond_e
    const-wide/16 v0, 0x0

    :goto_d
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/high16 v22, 0x30000

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v23}, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
