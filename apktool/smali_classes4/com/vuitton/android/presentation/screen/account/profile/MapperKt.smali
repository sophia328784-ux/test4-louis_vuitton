.class public abstract Lcom/vuitton/android/presentation/screen/account/profile/MapperKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;
    .locals 15

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->d:Ljava/lang/String;

    iget-object v12, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    iget-object v13, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->q:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v0

    :cond_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->r:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->p:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->u:Ljava/lang/String;

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->t:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    const/4 v14, 0x0

    move-object v8, v7

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/profile/Address;
    .locals 41

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->c:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->d:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->e:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->f:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->g:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->h:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->i:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->j:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->k:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->l:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->m:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->n:Ljava/lang/String;

    move-object v15, v14

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->o:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->p:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->q:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->r:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->s:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->t:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->u:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->v:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->w:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->x:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->y:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->z:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->A:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->B:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->C:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->D:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->E:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->F:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->G:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->H:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->I:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->J:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->K:Ljava/lang/String;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v37, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    const/16 v21, 0x0

    const/high16 v38, 0x100000

    invoke-direct/range {v0 .. v40}, Lcom/vuitton/foundation/model/domain/model/profile/Address;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;
    .locals 38

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a:Ljava/lang/String;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->c:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->d:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->e:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->f:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->g:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->h:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->i:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->j:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->k:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->l:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->m:Ljava/lang/String;

    move-object v15, v14

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->n:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->o:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->q:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->r:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->v:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->x:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->y:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->z:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->A:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->B:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->C:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->D:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->E:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->F:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->G:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->H:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->I:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->J:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->K:Ljava/lang/String;

    move-object/from16 v37, v36

    move-object/from16 v36, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v37

    move-object/from16 v37, v35

    move-object/from16 v35, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v37

    invoke-direct/range {v0 .. v36}, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
