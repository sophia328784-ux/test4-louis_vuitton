.class public abstract Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceDetailMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;
    .locals 56

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->b:Ljava/lang/String;

    :cond_0
    move-object v4, v2

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->e:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/mapper/RepairTypeMapperKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->STORE_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    :goto_0
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->DISTANT_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    goto :goto_1

    :goto_3
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->g:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt;->a(Lcom/vuitton/android/data/dto/repair/RepairStatusDto;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move-object v6, v1

    goto :goto_6

    :cond_6
    :goto_5
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    goto :goto_4

    :goto_6
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->j:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_7

    move-object v7, v2

    goto :goto_7

    :cond_7
    move-object v7, v1

    :goto_7
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->n:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v2

    goto :goto_8

    :cond_8
    move-object v8, v1

    :goto_8
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->o:Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v9, v2

    goto :goto_9

    :cond_9
    move-object v9, v1

    :goto_9
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->p:Ljava/lang/Double;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    goto :goto_a

    :cond_a
    const-wide/16 v12, 0x0

    :goto_a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->q:Ljava/lang/Double;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v14, :cond_b

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_b
    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->y:Ljava/lang/String;

    if-nez v3, :cond_c

    move-object v3, v2

    :cond_c
    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->D:Ljava/lang/String;

    if-nez v15, :cond_d

    move-object v15, v2

    :cond_d
    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->E:Ljava/lang/String;

    if-nez v10, :cond_e

    move-object/from16 v16, v2

    :goto_b
    const-wide/16 v17, 0x0

    goto :goto_c

    :cond_e
    move-object/from16 v16, v10

    goto :goto_b

    :goto_c
    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->F:Ljava/lang/String;

    move-wide/from16 v18, v17

    if-nez v11, :cond_f

    move-object/from16 v17, v2

    :goto_d
    move-object/from16 v20, v1

    goto :goto_e

    :cond_f
    move-object/from16 v17, v11

    goto :goto_d

    :goto_e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->G:Ljava/lang/String;

    move-wide/from16 v21, v18

    if-nez v1, :cond_10

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    goto :goto_f

    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v19, v18

    :goto_f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->H:Ljava/lang/String;

    move-object/from16 v24, v1

    move-object/from16 v23, v19

    if-nez v1, :cond_11

    move-object/from16 v19, v2

    goto :goto_10

    :cond_11
    move-object/from16 v19, v24

    :goto_10
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->I:Ljava/lang/String;

    move-object/from16 v26, v1

    move-object/from16 v53, v20

    if-nez v1, :cond_12

    move-object/from16 v20, v2

    :goto_11
    move-object/from16 v25, v11

    move-wide/from16 v54, v12

    move-object v13, v10

    move-wide/from16 v10, v54

    move-object/from16 v12, v53

    goto :goto_12

    :cond_12
    move-object/from16 v20, v26

    goto :goto_11

    :goto_12
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->J:Ljava/lang/String;

    move-wide/from16 v27, v21

    if-nez v1, :cond_13

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    goto :goto_13

    :cond_13
    move-object/from16 v21, v1

    move-object/from16 v22, v21

    :goto_13
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->K:Ljava/lang/String;

    move-object/from16 v30, v1

    move-object/from16 v29, v22

    if-nez v1, :cond_14

    move-object/from16 v22, v2

    goto :goto_14

    :cond_14
    move-object/from16 v22, v30

    :goto_14
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->L:Ljava/lang/String;

    move-object/from16 v31, v23

    if-nez v1, :cond_15

    move-object/from16 v23, v2

    goto :goto_15

    :cond_15
    move-object/from16 v23, v1

    :goto_15
    if-nez v13, :cond_16

    move-object v13, v2

    :cond_16
    if-nez v25, :cond_17

    move-object/from16 v25, v2

    :cond_17
    if-nez v31, :cond_18

    move-object/from16 v31, v2

    :cond_18
    if-nez v24, :cond_19

    move-object/from16 v24, v2

    :cond_19
    if-nez v26, :cond_1a

    move-object/from16 v26, v2

    :cond_1a
    if-nez v29, :cond_1b

    move-object/from16 v29, v2

    :cond_1b
    if-nez v30, :cond_1c

    move-object/from16 v30, v2

    :cond_1c
    if-nez v1, :cond_1d

    move-object/from16 v32, v2

    goto :goto_16

    :cond_1d
    move-object/from16 v32, v1

    :goto_16
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->A:Ljava/lang/String;

    if-nez v1, :cond_1e

    move-object/from16 v33, v2

    goto :goto_17

    :cond_1e
    move-object/from16 v33, v1

    :goto_17
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->B:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->O:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 v35, v2

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v36, v3

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v37, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;

    move-object/from16 v48, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->a:Ljava/lang/String;

    if-nez v1, :cond_1f

    move-object/from16 v38, v35

    goto :goto_19

    :cond_1f
    move-object/from16 v38, v1

    :goto_19
    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->b:Ljava/lang/String;

    if-nez v1, :cond_20

    move-object/from16 v39, v35

    goto :goto_1a

    :cond_20
    move-object/from16 v39, v1

    :goto_1a
    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->c:Ljava/lang/String;

    if-nez v1, :cond_21

    move-object/from16 v40, v35

    goto :goto_1b

    :cond_21
    move-object/from16 v40, v1

    :goto_1b
    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->d:Ljava/lang/String;

    if-nez v1, :cond_22

    move-object/from16 v41, v35

    goto :goto_1c

    :cond_22
    move-object/from16 v41, v1

    :goto_1c
    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->e:Ljava/lang/Double;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v42

    goto :goto_1d

    :cond_23
    move-wide/from16 v42, v27

    :goto_1d
    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->f:Ljava/lang/Double;

    move-object/from16 v44, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->g:Ljava/lang/Double;

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-int v1, v4

    :goto_1e
    move/from16 v45, v1

    goto :goto_1f

    :cond_24
    const/4 v1, 0x0

    goto :goto_1e

    :goto_1f
    iget-boolean v1, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->h:Z

    iget-boolean v3, v3, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;->i:Z

    move/from16 v46, v1

    move/from16 v47, v3

    invoke-direct/range {v37 .. v47}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;IZZ)V

    move-object/from16 v1, v37

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v48

    move-object/from16 v4, v49

    move-object/from16 v5, v50

    goto :goto_18

    :cond_25
    move-object/from16 v49, v4

    move-object/from16 v50, v5

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->M:Ljava/lang/String;

    if-nez v1, :cond_26

    move-object/from16 v1, v35

    :cond_26
    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->C:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    if-nez v3, :cond_27

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->AppForm:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    goto :goto_20

    :cond_27
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    move-result-object v3

    :goto_20
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->P:Ljava/lang/String;

    if-nez v4, :cond_28

    move-object/from16 v37, v35

    goto :goto_21

    :cond_28
    move-object/from16 v37, v4

    :goto_21
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Q:Ljava/lang/String;

    if-nez v4, :cond_29

    move-object/from16 v38, v35

    goto :goto_22

    :cond_29
    move-object/from16 v38, v4

    :goto_22
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->R:Ljava/lang/String;

    if-nez v4, :cond_2a

    move-object/from16 v39, v35

    goto :goto_23

    :cond_2a
    move-object/from16 v39, v4

    :goto_23
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->r:Ljava/lang/String;

    if-nez v4, :cond_2b

    move-object/from16 v40, v35

    goto :goto_24

    :cond_2b
    move-object/from16 v40, v4

    :goto_24
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->s:Ljava/lang/String;

    if-nez v4, :cond_2c

    move-object/from16 v41, v35

    goto :goto_25

    :cond_2c
    move-object/from16 v41, v4

    :goto_25
    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->v:Ljava/lang/String;

    if-nez v5, :cond_2d

    move-object/from16 v43, v35

    goto :goto_26

    :cond_2d
    move-object/from16 v43, v5

    :goto_26
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->x:Ljava/lang/String;

    if-nez v5, :cond_2e

    move-object/from16 v44, v35

    goto :goto_27

    :cond_2e
    move-object/from16 v44, v5

    :goto_27
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->h:Ljava/lang/String;

    if-nez v5, :cond_2f

    move-object/from16 v45, v35

    goto :goto_28

    :cond_2f
    move-object/from16 v45, v5

    :goto_28
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->i:Ljava/lang/String;

    if-nez v5, :cond_30

    move-object/from16 v46, v35

    goto :goto_29

    :cond_30
    move-object/from16 v46, v5

    :goto_29
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->S:Ljava/lang/String;

    if-nez v5, :cond_31

    move-object/from16 v47, v35

    goto :goto_2a

    :cond_31
    move-object/from16 v47, v5

    :goto_2a
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->T:Ljava/lang/String;

    if-nez v5, :cond_32

    move-object/from16 v48, v35

    goto :goto_2b

    :cond_32
    move-object/from16 v48, v5

    :goto_2b
    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->U:Ljava/lang/String;

    if-nez v5, :cond_33

    move-object/from16 v5, v35

    :cond_33
    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->V:Ljava/lang/String;

    if-nez v1, :cond_34

    move-object/from16 v1, v35

    :cond_34
    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->W:Ljava/lang/String;

    if-nez v0, :cond_35

    move-object/from16 v51, v35

    :goto_2c
    move-object/from16 v35, v27

    move-object/from16 v27, v24

    move-object/from16 v24, v13

    move-object v13, v14

    move-object/from16 v14, v36

    move-object/from16 v36, v3

    goto :goto_2d

    :cond_35
    move-object/from16 v51, v0

    goto :goto_2c

    :goto_2d
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    const/16 v52, 0x0

    move-object/from16 v42, v4

    move-object/from16 v28, v26

    move-object/from16 v26, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v4, v49

    move-object/from16 v34, v2

    move-object/from16 v49, v5

    move-object/from16 v5, v50

    move-object/from16 v50, v1

    invoke-direct/range {v3 .. v52}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
