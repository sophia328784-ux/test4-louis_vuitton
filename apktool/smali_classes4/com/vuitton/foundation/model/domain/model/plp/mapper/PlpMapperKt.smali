.class public abstract Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "domain"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/plp/ProductList;I)Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;
    .locals 9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    iget v6, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->e:I

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;->g:Ljava/lang/Integer;

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->i:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->h:Z

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->q:Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move/from16 v17, v9

    :goto_1
    move/from16 v16, v6

    goto :goto_2

    :cond_1
    move/from16 v17, v8

    goto :goto_1

    :goto_2
    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->j:Ljava/util/List;

    move v10, v8

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->f:Ljava/util/List;

    move v11, v9

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    move v12, v10

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->l:Ljava/util/List;

    move v13, v11

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v11, :cond_2

    if-eqz p1, :cond_2

    move v12, v13

    :cond_2
    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->k:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->m:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->p:Z

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->s:Ljava/lang/String;

    move/from16 v18, v13

    move-object v13, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    const/high16 v20, 0x40000

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
