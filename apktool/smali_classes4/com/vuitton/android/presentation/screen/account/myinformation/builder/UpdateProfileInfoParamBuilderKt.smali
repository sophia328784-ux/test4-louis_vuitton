.class public abstract Lcom/vuitton/android/presentation/screen/account/myinformation/builder/UpdateProfileInfoParamBuilderKt;
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
.method public static a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;
    .locals 15

    move-object/from16 v0, p1

    and-int/lit8 v1, p4, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p2

    :goto_1
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    move-object v13, v1

    goto :goto_3

    :cond_3
    move-object/from16 v13, p3

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    move-object v4, v1

    goto :goto_4

    :cond_4
    move-object v4, v2

    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    move-object v5, v1

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    move-object v6, v1

    goto :goto_6

    :cond_6
    move-object v6, v2

    :goto_6
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    move-object v7, v1

    goto :goto_7

    :cond_7
    move-object v7, v2

    :goto_7
    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    move-object v8, v1

    goto :goto_8

    :cond_8
    move-object v8, v2

    :goto_8
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    move-object v9, v1

    goto :goto_9

    :cond_9
    move-object v9, v2

    :goto_9
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    move-object v10, v1

    goto :goto_a

    :cond_a
    move-object v10, v2

    :goto_a
    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object p0

    move-object v11, p0

    goto :goto_b

    :cond_b
    move-object v11, v2

    :goto_b
    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    :cond_c
    move-object v14, v2

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V

    return-object v3
.end method
