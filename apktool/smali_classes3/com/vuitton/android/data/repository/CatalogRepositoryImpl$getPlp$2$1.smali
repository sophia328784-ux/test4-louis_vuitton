.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPlp$2$1"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->d:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->e:I

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;

    iget-object v5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->g:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->h:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->d:Ljava/lang/String;

    iget v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->e:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->f:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v5, p0

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->b:I

    const/4 v7, 0x0

    iget-object v8, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iput v9, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->b:I

    iget-object v1, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->d:Ljava/lang/String;

    iget v2, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->e:I

    iget-object v3, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->f:Ljava/lang/String;

    iget-object v4, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getProductListForCategory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2

    return-object v6

    :cond_2
    :goto_0
    check-cast v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;

    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1$1;

    invoke-direct {v1, v8}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;->c:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;

    iget-object v8, v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;->a:Ljava/lang/String;

    instance-of v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;

    if-eqz v10, :cond_4

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v10, v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v10

    iget-boolean v15, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->h:Z

    invoke-static {v10, v15}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    invoke-direct {v4, v8, v6}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    move-object/from16 v23, v7

    :goto_4
    move v10, v9

    goto/16 :goto_a

    :cond_4
    instance-of v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;

    if-eqz v10, :cond_7

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;

    iget-object v4, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v4, v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v4

    iget-object v6, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, v7

    :goto_5
    if-eqz v6, :cond_6

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;

    invoke-direct {v10, v8, v4, v6}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/Asset;)V

    move-object/from16 v23, v7

    move-object v4, v10

    goto :goto_4

    :cond_6
    const-string v0, "ProductHighlight section \'"

    const-string v1, "\' requires a non-null asset"

    invoke-static {v0, v8, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-object v7

    :cond_7
    instance-of v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;

    if-eqz v10, :cond_8

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v6, v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v6

    invoke-direct {v4, v8, v6}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)V

    goto :goto_3

    :cond_8
    instance-of v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;

    if-eqz v10, :cond_9

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;

    iget-object v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v10, v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v10

    iget-object v6, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/editorial/mapper/EditorialModuleMapperKt;->l(Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;

    move-result-object v6

    invoke-direct {v4, v8, v10, v6}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Lcom/vuitton/foundation/model/domain/model/common/editorial/Ratio;)V

    goto :goto_3

    :cond_9
    instance-of v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;

    if-eqz v10, :cond_c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;

    iget-object v10, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    iget-object v3, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    move-object/from16 v23, v7

    iget-object v7, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    iget-object v15, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    sget-object v17, Lcom/vuitton/android/data/dto/plp/mapper/ProductListMapperKt$WhenMappings;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v17, v15

    if-eq v15, v9, :cond_b

    const/4 v9, 0x2

    if-ne v15, v9, :cond_a

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;->CENTER:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;

    :goto_6
    move-object/from16 v20, v9

    goto :goto_7

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v23

    :cond_b
    sget-object v9, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;->LEFT:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;

    goto :goto_6

    :goto_7
    iget-object v9, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v9}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v21

    iget-object v6, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v6, v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v22

    move-object/from16 v18, v3

    move-object v15, v4

    move-object/from16 v19, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito$Alignment;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)V

    const/4 v10, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v23, v7

    move-object v3, v8

    instance-of v7, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;

    if-eqz v7, :cond_11

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;

    check-cast v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;

    iget-object v7, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;

    sget-object v10, Lcom/vuitton/android/data/dto/plp/mapper/ProductListMapperKt$WhenMappings;->b:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v10, v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_f

    const/4 v15, 0x2

    if-eq v7, v15, :cond_e

    const/4 v15, 0x3

    if-ne v7, v15, :cond_d

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;->LARGE:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;

    goto :goto_8

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v23

    :cond_e
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;->MEDIUM:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;

    goto :goto_8

    :cond_f
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;->SMALL:Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;

    :goto_8
    invoke-direct {v8, v9, v7}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label$Font;)V

    iget-object v7, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v6, :cond_10

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v6

    goto :goto_9

    :cond_10
    move-object/from16 v6, v23

    :goto_9
    invoke-direct {v4, v3, v8, v7, v6}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText$Label;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    :goto_a
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    move-object/from16 v7, v23

    const/16 v3, 0xa

    goto/16 :goto_1

    :cond_11
    instance-of v0, v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    if-nez v0, :cond_12

    invoke-static {}, Lv40;->g()V

    return-object v23

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PLP section type \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for section \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget v15, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    iget-object v1, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    move-result-object v16

    iget-object v0, v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;

    move-object/from16 v17, v0

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/foundation/model/domain/model/plp/ProductList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;Ljava/lang/Integer;)V

    iget v0, v5, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;->e:I

    invoke-static {v10, v0}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/plp/ProductList;I)Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    move-result-object v0

    return-object v0
.end method
