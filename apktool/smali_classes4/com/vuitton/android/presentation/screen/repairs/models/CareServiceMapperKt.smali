.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceMapperKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    invoke-static {v11}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v19

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->J:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    const v24, 0x43fc02

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object v0, v1

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v21, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;-><init>(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    move-object v5, v4

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move/from16 v8, p1

    invoke-static {v7, v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->e(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Z)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v7

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    if-nez v9, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    move-object v8, v9

    move-object v9, v10

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    iget-object v13, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v15, v14

    iget-object v14, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    move-object/from16 p0, v0

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    const/high16 v24, 0xf0000

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v2

    invoke-direct/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method
