.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/plp/ProductListUiModelKt;
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
.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;->g:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lv40;->g()V

    :cond_5
    :goto_0
    return-object v1
.end method
