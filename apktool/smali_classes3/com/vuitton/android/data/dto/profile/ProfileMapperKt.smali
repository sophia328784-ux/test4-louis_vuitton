.class public abstract Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;
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
.method public static final a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;
    .locals 2

    const-string v0, "atg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    invoke-direct {v1, p0}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;-><init>(Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "salesforce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;

    invoke-direct {v1, p0}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;-><init>(Ljava/lang/String;)V

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;)Lcom/vuitton/foundation/model/domain/model/profile/Profile;
    .locals 59

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    move-result-object v4

    iget-object v5, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->g:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->i:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->k:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v17, v1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v15, v1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->p:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->j:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v19, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-object/from16 v58, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v1

    iget-boolean v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->b:Z

    move/from16 v21, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->c:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->d:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->e:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->f:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->g:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->h:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->i:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->j:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->k:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->l:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->m:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->n:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->o:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->p:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->q:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->r:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->s:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->t:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->u:Ljava/lang/String;

    move-object/from16 v40, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->v:Ljava/lang/String;

    move-object/from16 v41, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->w:Ljava/lang/String;

    move-object/from16 v42, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->x:Ljava/lang/String;

    move-object/from16 v43, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->y:Ljava/lang/String;

    move-object/from16 v44, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->z:Ljava/lang/String;

    move-object/from16 v45, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->A:Ljava/lang/String;

    move-object/from16 v46, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->B:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->C:Ljava/lang/String;

    move-object/from16 v48, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->D:Ljava/lang/String;

    move-object/from16 v49, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->E:Ljava/lang/String;

    move-object/from16 v50, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->F:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->G:Ljava/lang/String;

    move-object/from16 v52, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->H:Ljava/lang/String;

    move-object/from16 v53, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->I:Ljava/lang/String;

    move-object/from16 v54, v1

    iget-object v1, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->J:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/database/entity/address/AddressEntity;->K:Ljava/lang/String;

    const/16 v57, 0x0

    move-object/from16 v55, v1

    move-object/from16 v56, v3

    invoke-direct/range {v19 .. v57}, Lcom/vuitton/foundation/model/domain/model/profile/Address;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v19

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v58

    goto/16 :goto_3

    :cond_3
    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->q:Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    iget-object v3, v1, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;->a:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;->b:Ljava/lang/String;

    sget-object v18, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v18}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    move-object/from16 v4, v18

    goto :goto_5

    :cond_4
    sget-object v18, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->HOME:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v18 .. v18}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    sget-object v18, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->WORK:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v18 .. v18}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    sget-object v18, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    goto :goto_4

    :goto_5
    iget-object v1, v1, Lcom/vuitton/android/data/database/entity/profile/PhoneNumberEntity;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/4 v2, 0x0

    :goto_6
    iget-object v1, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->r:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->s:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-object/from16 v4, v19

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v0

    move-object/from16 v21, v1

    move-object/from16 v5, v20

    move-object/from16 v18, v58

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v23}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public static final c(Lcom/vuitton/android/data/dto/profile/ProfileDto;Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    move-result-object v4

    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->c:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    iget-object v7, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    iget-object v9, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    iget-object v13, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->k:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v15, v1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object/from16 v16, v1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->n:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object/from16 v17, v1

    :goto_6
    move-object/from16 v1, p1

    goto :goto_7

    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    :goto_7
    iget-object v1, v1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->a:Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/vuitton/android/data/dto/profile/twist/KisaConsentsDto;->b:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    goto :goto_8

    :cond_7
    const/16 v18, 0x0

    :goto_8
    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->p:Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v12, v12, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->b:Ljava/lang/String;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    :goto_9
    check-cast v11, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    if-eqz v11, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    iget-object v3, v11, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->a:Ljava/lang/String;

    iget-object v12, v11, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->b:Ljava/lang/String;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v21, v2

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_a
    move-object/from16 v2, v19

    goto :goto_b

    :cond_a
    sget-object v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->HOME:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    sget-object v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->WORK:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    sget-object v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    goto :goto_a

    :goto_b
    iget-object v11, v11, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v11}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    goto :goto_c

    :cond_d
    move-object/from16 v21, v2

    const/4 v1, 0x0

    :goto_c
    iget-object v2, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->o:Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;

    if-eqz v2, :cond_e

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;

    iget-object v11, v2, Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;->a:Ljava/lang/Boolean;

    iget-object v12, v2, Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;->b:Ljava/lang/Boolean;

    move-object/from16 p1, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;->c:Ljava/lang/Boolean;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/profile/legacy/ContactabilityDto;->d:Ljava/lang/Boolean;

    invoke-direct {v3, v11, v12, v1, v2}, Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v19, v3

    goto :goto_d

    :cond_e
    move-object/from16 p1, v1

    const/16 v19, 0x0

    :goto_d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->q:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->r:Ljava/lang/String;

    if-nez v0, :cond_f

    move-object/from16 v22, v21

    goto :goto_e

    :cond_f
    move-object/from16 v22, v0

    :goto_e
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const/16 v23, 0x100

    const/16 v24, 0x0

    const/4 v12, 0x0

    move-object/from16 v20, p1

    move-object/from16 v11, p2

    move-object/from16 v21, v1

    invoke-direct/range {v3 .. v24}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
