.class public abstract Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;
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
.method public static final a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    new-instance v0, Lkotlin/Triple;

    invoke-virtual {p1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->a()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->a()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->a()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Lkotlin/Triple;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/address/AddressDto;)Lcom/vuitton/foundation/model/domain/model/profile/Address;
    .locals 45

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->v:Ljava/util/List;

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    iget-boolean v6, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->b:Z

    iget-object v7, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->u:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->q:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->r:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v10, v3

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    iget-object v11, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->s:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->t:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->c:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->d:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->j:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->n:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->m:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object/from16 v19, v3

    goto :goto_4

    :cond_4
    move-object/from16 v19, v1

    :goto_4
    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->f:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->l:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->k:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->o:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object/from16 v23, v3

    goto :goto_5

    :cond_5
    move-object/from16 v23, v1

    :goto_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->p:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object/from16 v24, v3

    goto :goto_6

    :cond_6
    move-object/from16 v24, v1

    :goto_6
    if-eqz v2, :cond_7

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_8

    move-object/from16 v27, v3

    goto :goto_8

    :cond_8
    move-object/from16 v27, v1

    :goto_8
    if-eqz v2, :cond_9

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_a

    move-object/from16 v28, v3

    goto :goto_a

    :cond_a
    move-object/from16 v28, v1

    :goto_a
    if-eqz v2, :cond_c

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    :goto_b
    move-object/from16 v29, v1

    goto :goto_d

    :cond_c
    :goto_c
    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->MAIN:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->b()Lcom/vuitton/android/data/account/address/model/PhoneType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhoneType;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :goto_d
    new-instance v30, Ljava/lang/String;

    invoke-direct/range {v30 .. v30}, Ljava/lang/String;-><init>()V

    new-instance v31, Ljava/lang/String;

    invoke-direct/range {v31 .. v31}, Ljava/lang/String;-><init>()V

    if-eqz v2, :cond_d

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v32, v1

    goto :goto_e

    :cond_d
    const/16 v32, 0x0

    :goto_e
    if-eqz v2, :cond_e

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v33, v1

    goto :goto_f

    :cond_e
    const/16 v33, 0x0

    :goto_f
    if-eqz v2, :cond_10

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_f

    goto :goto_11

    :cond_f
    :goto_10
    move-object/from16 v34, v1

    goto :goto_12

    :cond_10
    :goto_11
    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->OTHER:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->b()Lcom/vuitton/android/data/account/address/model/PhoneType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhoneType;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :goto_12
    new-instance v35, Ljava/lang/String;

    invoke-direct/range {v35 .. v35}, Ljava/lang/String;-><init>()V

    new-instance v36, Ljava/lang/String;

    invoke-direct/range {v36 .. v36}, Ljava/lang/String;-><init>()V

    if-eqz v2, :cond_11

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v37, v1

    goto :goto_13

    :cond_11
    const/16 v37, 0x0

    :goto_13
    if-eqz v2, :cond_12

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v38, v1

    goto :goto_14

    :cond_12
    const/16 v38, 0x0

    :goto_14
    if-eqz v2, :cond_14

    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-static {v2, v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->a(Ljava/util/List;Lcom/vuitton/android/data/account/address/model/PhonePrimacy;)Lkotlin/Triple;

    move-result-object v1

    iget-object v1, v1, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_13

    goto :goto_16

    :cond_13
    :goto_15
    move-object/from16 v39, v1

    goto :goto_17

    :cond_14
    :goto_16
    sget-object v1, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->THIRD:Lcom/vuitton/android/data/account/address/model/PhonePrimacy;

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhonePrimacy;->b()Lcom/vuitton/android/data/account/address/model/PhoneType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vuitton/android/data/account/address/model/PhoneType;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :goto_17
    new-instance v40, Ljava/lang/String;

    invoke-direct/range {v40 .. v40}, Ljava/lang/String;-><init>()V

    iget-object v1, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->w:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/address/AddressDto;->h:Ljava/lang/String;

    move-object/from16 v17, v4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v26, 0x0

    const/high16 v42, 0x200000

    move-object/from16 v25, v0

    move-object/from16 v41, v1

    invoke-direct/range {v4 .. v44}, Lcom/vuitton/foundation/model/domain/model/profile/Address;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public static final c(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/address/AddressDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->b(Lcom/vuitton/android/data/dto/address/AddressDto;)Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;)Lcom/vuitton/android/data/dto/address/AddressCreationDto;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->c:Z

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->k:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->p:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->l:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->m:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->q:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->r:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->o:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->n:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->s:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->f:Ljava/lang/String;

    move/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->g:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->h:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->d:Ljava/lang/String;

    move-object/from16 v19, v1

    new-instance v1, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->t:Ljava/lang/String;

    const-string v21, ""

    if-nez v2, :cond_0

    move-object/from16 v2, v21

    :cond_0
    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->v:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v3, v21

    :cond_1
    move-object/from16 v23, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->u:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object/from16 v4, v21

    :cond_2
    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->w:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object/from16 v3, v21

    :cond_3
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->y:Ljava/lang/String;

    if-nez v4, :cond_4

    move-object/from16 v4, v21

    :cond_4
    move-object/from16 v24, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->x:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object/from16 v5, v21

    :cond_5
    invoke-direct {v2, v3, v4, v5}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->z:Ljava/lang/String;

    if-nez v4, :cond_6

    move-object/from16 v4, v21

    :cond_6
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->B:Ljava/lang/String;

    if-nez v5, :cond_7

    move-object/from16 v5, v21

    :cond_7
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;->A:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object/from16 v0, v21

    :cond_8
    invoke-direct {v3, v4, v5, v0}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1, v2, v3}, [Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, v3, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/vuitton/android/data/dto/address/AddressCreationDto;

    move-object/from16 v2, v20

    move-object/from16 v20, v1

    move/from16 v1, v16

    move-object/from16 v16, v7

    const/4 v7, 0x0

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    invoke-direct/range {v0 .. v20}, Lcom/vuitton/android/data/dto/address/AddressCreationDto;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
