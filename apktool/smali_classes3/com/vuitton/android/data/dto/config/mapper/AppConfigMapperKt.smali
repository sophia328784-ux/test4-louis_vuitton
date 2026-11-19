.class public abstract Lcom/vuitton/android/data/dto/config/mapper/AppConfigMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/config/CertificateConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;
    .locals 3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/CertificateConfigDto;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/CertificateConfigDto;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "https://api-ppf.louisvuitton.com/lva-eu/lvapp-product-eapi/v1"

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/CertificateConfigDto;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v0, "Unable to map the app config: InvalidDiamondApiUrl"

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;
    .locals 15

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->h:Ljava/lang/String;

    iget-object v12, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->i:Ljava/lang/String;

    iget-object v13, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->j:Ljava/lang/String;

    iget-object v14, p0, Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;->k:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance p0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v0, "Unable to map the app config: InvalidRepairsApiUrl"

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;
    .locals 101

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v8, v1

    goto :goto_5

    :cond_5
    move v8, v2

    :goto_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v10, v1

    goto :goto_6

    :cond_6
    move v10, v2

    :goto_6
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_7

    :cond_7
    move v11, v2

    :goto_7
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v12, v1

    goto :goto_8

    :cond_8
    move v12, v2

    :goto_8
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v13, v1

    goto :goto_9

    :cond_9
    move v13, v2

    :goto_9
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v14, v1

    goto :goto_a

    :cond_a
    move v14, v2

    :goto_a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v15, v1

    goto :goto_b

    :cond_b
    move v15, v2

    :goto_b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v16, v1

    goto :goto_c

    :cond_c
    move/from16 v16, v2

    :goto_c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v18, v1

    goto :goto_d

    :cond_d
    move/from16 v18, v2

    :goto_d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v19, v1

    goto :goto_e

    :cond_e
    move/from16 v19, v2

    :goto_e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v20, v1

    goto :goto_f

    :cond_f
    move/from16 v20, v2

    :goto_f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v21, v1

    goto :goto_10

    :cond_10
    move/from16 v21, v2

    :goto_10
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v22, v1

    goto :goto_11

    :cond_11
    move/from16 v22, v2

    :goto_11
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v23, v1

    goto :goto_12

    :cond_12
    move/from16 v23, v2

    :goto_12
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v25, v1

    goto :goto_13

    :cond_13
    move/from16 v25, v2

    :goto_13
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v26, v1

    goto :goto_14

    :cond_14
    move/from16 v26, v2

    :goto_14
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v27, v1

    goto :goto_15

    :cond_15
    move/from16 v27, v2

    :goto_15
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v28, v1

    goto :goto_16

    :cond_16
    move/from16 v28, v2

    :goto_16
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x:Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v29, v1

    goto :goto_17

    :cond_17
    move/from16 v29, v2

    :goto_17
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v30, v1

    goto :goto_18

    :cond_18
    move/from16 v30, v2

    :goto_18
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v31, v1

    goto :goto_19

    :cond_19
    move/from16 v31, v2

    :goto_19
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v32, v1

    goto :goto_1a

    :cond_1a
    move/from16 v32, v2

    :goto_1a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v33, v1

    goto :goto_1b

    :cond_1b
    move/from16 v33, v2

    :goto_1b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C:Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v34, v1

    goto :goto_1c

    :cond_1c
    move/from16 v34, v2

    :goto_1c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D:Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v35, v1

    goto :goto_1d

    :cond_1d
    move/from16 v35, v2

    :goto_1d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v36, v1

    goto :goto_1e

    :cond_1e
    move/from16 v36, v2

    :goto_1e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F:Ljava/lang/Boolean;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v37, v1

    goto :goto_1f

    :cond_1f
    move/from16 v37, v2

    :goto_1f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G:Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v38, v1

    goto :goto_20

    :cond_20
    move/from16 v38, v2

    :goto_20
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H:Ljava/lang/Boolean;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v39, v1

    goto :goto_21

    :cond_21
    move/from16 v39, v2

    :goto_21
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I:Ljava/lang/Boolean;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v40, v1

    goto :goto_22

    :cond_22
    move/from16 v40, v2

    :goto_22
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J:Ljava/lang/Boolean;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v41, v1

    goto :goto_23

    :cond_23
    move/from16 v41, v2

    :goto_23
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K:Ljava/lang/Boolean;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v42, v1

    goto :goto_24

    :cond_24
    move/from16 v42, v2

    :goto_24
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L:Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v43, v1

    goto :goto_25

    :cond_25
    move/from16 v43, v2

    :goto_25
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M:Ljava/lang/Boolean;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v44, v1

    goto :goto_26

    :cond_26
    move/from16 v44, v2

    :goto_26
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N:Ljava/lang/Boolean;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v45, v1

    goto :goto_27

    :cond_27
    move/from16 v45, v2

    :goto_27
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O:Ljava/lang/Boolean;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v46, v1

    goto :goto_28

    :cond_28
    move/from16 v46, v2

    :goto_28
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P:Ljava/lang/Boolean;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v47, v1

    goto :goto_29

    :cond_29
    move/from16 v47, v2

    :goto_29
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q:Ljava/lang/Boolean;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v48, v1

    goto :goto_2a

    :cond_2a
    move/from16 v48, v2

    :goto_2a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->R:Ljava/lang/Boolean;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v49, v1

    goto :goto_2b

    :cond_2b
    move/from16 v49, v2

    :goto_2b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->S:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v50, v1

    goto :goto_2c

    :cond_2c
    move/from16 v50, v2

    :goto_2c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->T:Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v51, v1

    goto :goto_2d

    :cond_2d
    move/from16 v51, v2

    :goto_2d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->V:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v53, v1

    goto :goto_2e

    :cond_2e
    move/from16 v53, v2

    :goto_2e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->W:Ljava/lang/Boolean;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v54, v1

    goto :goto_2f

    :cond_2f
    move/from16 v54, v2

    :goto_2f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->X:Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v55, v1

    goto :goto_30

    :cond_30
    move/from16 v55, v2

    :goto_30
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->U:Ljava/lang/Boolean;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v52, v1

    goto :goto_31

    :cond_31
    move/from16 v52, v2

    :goto_31
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Y:Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v56, v1

    goto :goto_32

    :cond_32
    move/from16 v56, v2

    :goto_32
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Z:Ljava/lang/Boolean;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v57, v1

    goto :goto_33

    :cond_33
    move/from16 v57, v2

    :goto_33
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->a0:Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v58, v1

    goto :goto_34

    :cond_34
    move/from16 v58, v2

    :goto_34
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->b0:Ljava/lang/Boolean;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v59, v1

    goto :goto_35

    :cond_35
    move/from16 v59, v2

    :goto_35
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->c0:Ljava/lang/Boolean;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v60, v1

    goto :goto_36

    :cond_36
    move/from16 v60, v2

    :goto_36
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->d0:Ljava/lang/Boolean;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v61, v1

    goto :goto_37

    :cond_37
    move/from16 v61, v2

    :goto_37
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->e0:Ljava/lang/Boolean;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v62, v1

    goto :goto_38

    :cond_38
    move/from16 v62, v2

    :goto_38
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->f0:Ljava/lang/Boolean;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v63, v1

    goto :goto_39

    :cond_39
    move/from16 v63, v2

    :goto_39
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->g0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v64, v1

    goto :goto_3a

    :cond_3a
    move/from16 v64, v2

    :goto_3a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->h0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v65, v1

    goto :goto_3b

    :cond_3b
    move/from16 v65, v2

    :goto_3b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->i0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v66, v1

    goto :goto_3c

    :cond_3c
    move/from16 v66, v2

    :goto_3c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->j0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v67, v1

    goto :goto_3d

    :cond_3d
    move/from16 v67, v2

    :goto_3d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->k0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v68, v1

    goto :goto_3e

    :cond_3e
    move/from16 v68, v2

    :goto_3e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->l0:Ljava/lang/Boolean;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v69, v1

    goto :goto_3f

    :cond_3f
    move/from16 v69, v2

    :goto_3f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->m0:Ljava/lang/Boolean;

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v70, v1

    goto :goto_40

    :cond_40
    move/from16 v70, v2

    :goto_40
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->n0:Ljava/lang/Boolean;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v71, v1

    goto :goto_41

    :cond_41
    move/from16 v71, v2

    :goto_41
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->o0:Ljava/lang/Boolean;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v72, v1

    goto :goto_42

    :cond_42
    move/from16 v72, v2

    :goto_42
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->p0:Ljava/lang/Boolean;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v73, v1

    goto :goto_43

    :cond_43
    move/from16 v73, v2

    :goto_43
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->q0:Ljava/lang/Boolean;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v74, v1

    goto :goto_44

    :cond_44
    move/from16 v74, v2

    :goto_44
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->r0:Ljava/lang/Boolean;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v75, v1

    goto :goto_45

    :cond_45
    move/from16 v75, v2

    :goto_45
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->s0:Ljava/lang/Boolean;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v76, v1

    goto :goto_46

    :cond_46
    move/from16 v76, v2

    :goto_46
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->t0:Ljava/lang/Boolean;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v77, v1

    goto :goto_47

    :cond_47
    move/from16 v77, v2

    :goto_47
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->u0:Ljava/lang/Boolean;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v78, v1

    goto :goto_48

    :cond_48
    move/from16 v78, v2

    :goto_48
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->v0:Ljava/lang/Boolean;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v79, v1

    goto :goto_49

    :cond_49
    move/from16 v79, v2

    :goto_49
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->w0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v80, v1

    goto :goto_4a

    :cond_4a
    move/from16 v80, v2

    :goto_4a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->x0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v81, v1

    goto :goto_4b

    :cond_4b
    move/from16 v81, v2

    :goto_4b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->y0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v82, v1

    goto :goto_4c

    :cond_4c
    move/from16 v82, v2

    :goto_4c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->z0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v83, v1

    goto :goto_4d

    :cond_4d
    move/from16 v83, v2

    :goto_4d
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->A0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v84, v1

    goto :goto_4e

    :cond_4e
    move/from16 v84, v2

    :goto_4e
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->B0:Ljava/lang/Boolean;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v85, v1

    goto :goto_4f

    :cond_4f
    move/from16 v85, v2

    :goto_4f
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->C0:Ljava/lang/Boolean;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v86, v1

    goto :goto_50

    :cond_50
    move/from16 v86, v2

    :goto_50
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->D0:Ljava/lang/Boolean;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v87, v1

    goto :goto_51

    :cond_51
    move/from16 v87, v2

    :goto_51
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->E0:Ljava/lang/Boolean;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v88, v1

    goto :goto_52

    :cond_52
    move/from16 v88, v2

    :goto_52
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->F0:Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v89, v1

    goto :goto_53

    :cond_53
    move/from16 v89, v2

    :goto_53
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->G0:Ljava/lang/Boolean;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v90, v1

    goto :goto_54

    :cond_54
    move/from16 v90, v2

    :goto_54
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->H0:Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v91, v1

    goto :goto_55

    :cond_55
    move/from16 v91, v2

    :goto_55
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->I0:Ljava/lang/Boolean;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v92, v1

    goto :goto_56

    :cond_56
    move/from16 v92, v2

    :goto_56
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->J0:Ljava/lang/Boolean;

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v93, v1

    goto :goto_57

    :cond_57
    move/from16 v93, v2

    :goto_57
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->K0:Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v94, v1

    goto :goto_58

    :cond_58
    move/from16 v94, v2

    :goto_58
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->L0:Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v95, v1

    goto :goto_59

    :cond_59
    move/from16 v95, v2

    :goto_59
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->M0:Ljava/lang/Boolean;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v96, v1

    goto :goto_5a

    :cond_5a
    move/from16 v96, v2

    :goto_5a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->N0:Ljava/lang/Boolean;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v97, v1

    goto :goto_5b

    :cond_5b
    move/from16 v97, v2

    :goto_5b
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->O0:Ljava/lang/Boolean;

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v98, v1

    goto :goto_5c

    :cond_5c
    move/from16 v98, v2

    :goto_5c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->P0:Ljava/lang/Boolean;

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v99, v1

    goto :goto_5d

    :cond_5d
    move/from16 v99, v2

    :goto_5d
    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;->Q0:Ljava/lang/Boolean;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_5e
    move/from16 v100, v2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    const/16 v17, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v3 .. v100}, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V

    return-object v3
.end method

.method public static final d(Lcom/vuitton/android/data/dto/config/AbTestDto;)Ljava/lang/Object;
    .locals 9

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/config/AbTestDto;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/config/AbTestDto;->c:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/config/AbTestDto;->b:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v3

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :cond_9
    :goto_5
    if-nez v5, :cond_d

    if-nez v6, :cond_d

    if-nez v3, :cond_d

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/config/AbTest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Required value was null."

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    if-eqz v1, :cond_a

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/vuitton/foundation/model/domain/model/config/AbTest;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/config/AbTestDto;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to map the app config: Invalid AbTestDto: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", flags="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", percentage="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    :goto_7
    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_f
    throw p0
.end method
