.class public abstract Lcom/vuitton/android/presentation/screen/account/addressbook/mappers/AddressMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a:Ljava/lang/String;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->c:Ljava/lang/String;

    const-string v5, ""

    move-object v6, v3

    if-nez v4, :cond_0

    move-object v7, v4

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    move-object v7, v3

    :goto_0
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->d:Ljava/lang/String;

    move-object v8, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->e:Ljava/lang/String;

    move-object v9, v6

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->i:Ljava/lang/String;

    if-nez v10, :cond_1

    move-object v10, v8

    :cond_1
    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->j:Ljava/lang/String;

    if-nez v11, :cond_2

    move-object v11, v8

    :cond_2
    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->k:Ljava/lang/String;

    if-nez v12, :cond_3

    move-object v12, v8

    :cond_3
    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    if-nez v13, :cond_4

    move-object v13, v8

    move-object v14, v13

    :goto_1
    move-object v8, v11

    goto :goto_2

    :cond_4
    move-object v14, v8

    goto :goto_1

    :goto_2
    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->o:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->n:Ljava/lang/String;

    if-nez v15, :cond_5

    move-object v15, v14

    :cond_5
    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->q:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v14

    move-object/from16 v17, v1

    goto :goto_3

    :cond_6
    move-object/from16 v17, v14

    :goto_3
    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    move-object/from16 v18, v9

    move-object v9, v12

    move-object v12, v15

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    if-eqz v2, :cond_7

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move-object/from16 p0, v0

    const v0, 0x7f14108b

    move-object/from16 v19, v1

    const/4 v1, 0x2

    move/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v7

    :goto_4
    move-object v7, v10

    move-object v10, v13

    move-object/from16 v1, v16

    move-object/from16 v0, v18

    move-object/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v16, p0

    goto :goto_5

    :cond_7
    move-object/from16 p0, v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    if-nez v7, :cond_8

    move-object/from16 v7, v17

    :cond_8
    invoke-direct {v0, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v17}, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-object v0
.end method
