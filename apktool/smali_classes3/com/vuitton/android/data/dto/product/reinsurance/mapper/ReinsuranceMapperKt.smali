.class public abstract Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;)Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->b:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->f:Ljava/util/List;

    if-eqz v8, :cond_1

    check-cast v8, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;->a:Ljava/lang/String;

    if-eqz v11, :cond_0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :cond_2
    iget-object v8, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->e:Ljava/util/List;

    if-eqz v8, :cond_7

    check-cast v8, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/text/StringsKt;->d0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v13, v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->c:Ljava/lang/String;

    iget-object v9, v12, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;->d:Ljava/lang/String;

    iget-object v0, v12, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;->a:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;->e:Ljava/util/List;

    if-eqz v12, :cond_5

    check-cast v12, Ljava/lang/Iterable;

    move-object/from16 v20, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v1, v23

    goto :goto_2

    :cond_4
    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v23, v1

    move-object/from16 v16, v13

    goto :goto_4

    :cond_5
    move-object/from16 v20, v0

    const/16 v18, 0x0

    goto :goto_3

    :goto_4
    new-instance v13, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    const/16 v21, 0x20

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v9

    invoke-direct/range {v13 .. v22}, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    goto :goto_1

    :cond_6
    move-object v9, v11

    :goto_5
    move-object/from16 v23, v1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :goto_6
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;

    move-object v4, v7

    const/4 v7, 0x0

    const/16 v8, 0x40

    move-object v3, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object v2, v5

    move-object v5, v10

    move-object/from16 v1, v23

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/product/Reinsurance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
