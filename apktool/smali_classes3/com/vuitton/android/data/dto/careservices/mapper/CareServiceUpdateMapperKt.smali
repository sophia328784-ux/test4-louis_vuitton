.class public abstract Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceUpdateMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;)Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->w:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->a:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->h:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->i:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->j:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v14, v2

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->o:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->p:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->q:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->r:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->s:Lkotlinx/datetime/Instant;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkotlinx/datetime/Instant;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    const-string v1, ""

    if-nez v16, :cond_2

    move-object/from16 v16, v1

    move-object/from16 v22, v16

    goto :goto_2

    :cond_2
    move-object/from16 v22, v16

    move-object/from16 v16, v1

    :goto_2
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->t:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->u:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->v:Ljava/lang/String;

    move-object/from16 v25, v1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->REQUEST_SUBMITTED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->b:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-ne v0, v1, :cond_3

    if-nez v17, :cond_4

    :cond_3
    move-object/from16 v26, v16

    goto :goto_3

    :cond_4
    move-object/from16 v26, v17

    :goto_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-ne v0, v1, :cond_5

    if-nez v17, :cond_6

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v27, v16

    goto :goto_4

    :cond_6
    move-object/from16 v18, v4

    move-object/from16 v27, v17

    :goto_4
    new-instance v4, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v27}, Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
