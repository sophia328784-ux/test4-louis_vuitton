.class public abstract Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Landroid/content/Context;Lkotlinx/serialization/json/Json;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v7, "\n"

    if-lez v1, :cond_1

    invoke-static {v0, v7, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {v0, v7, v6}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-static {v0, v7, v5}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, ", "

    invoke-static {v0, p0, v4}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, " "

    if-lez p0, :cond_5

    invoke-static {v0, v1, v3}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6

    invoke-static {p1, p2, v2}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->b(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v7, p0, v1}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->p:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v7, ", "

    if-lez v1, :cond_1

    invoke-static {v0, v7, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {v0, v7, v6}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "\n"

    invoke-static {v0, p0, v5}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-static {v0, v7, v4}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, " "

    invoke-static {v0, p0, v3}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6

    invoke-static {v0, v7, v2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;
    .locals 47

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->b:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move/from16 v2, p2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->e(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Z)Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->f:Ljava/lang/String;

    iget-wide v9, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->g:D

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->h:Ljava/lang/Double;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->k:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->m:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->n:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->o:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->p:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->q:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->r:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->s:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->B:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->C:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->D:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 v17, v2

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v18, v3

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v25, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;

    move-object/from16 p2, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->a:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->b:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->c:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->d:Ljava/lang/String;

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    iget-wide v4, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->e:D

    move-object/from16 v29, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->f:Ljava/lang/Double;

    move-object/from16 v32, v1

    iget v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->g:I

    move/from16 v33, v1

    iget-boolean v1, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->h:Z

    iget-boolean v3, v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;->i:Z

    move/from16 v34, v1

    move/from16 v35, v3

    move-wide/from16 v30, v4

    invoke-direct/range {v25 .. v35}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;IZZ)V

    move-object/from16 v1, v25

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    goto :goto_0

    :cond_0
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->E:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->F:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->G:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->H:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->I:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->J:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->K:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->L:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v25, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    move-object/from16 v33, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->M:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->N:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->O:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->P:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->Q:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->R:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->S:Ljava/lang/String;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->T:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->U:Ljava/lang/String;

    move-object/from16 v28, v4

    move-object/from16 v4, v36

    move-object/from16 v36, v25

    move-object/from16 v25, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x80

    const/16 v46, 0x0

    move-object/from16 v42, v0

    move-object/from16 v41, v1

    move-object/from16 v29, v5

    move-object/from16 v5, v37

    move-object/from16 v37, v27

    move-object/from16 v27, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v46}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
