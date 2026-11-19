.class public final synthetic Lpv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lpv0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget p0, p0, Lpv0;->a:I

    const-string v0, "ShadeFinderRecommendationHandler"

    const-string v1, "[clearAll] failed"

    const-string v2, "[downloadProducts] failed"

    const-string v3, "SkinCare3RecommendationHandler"

    const/4 v4, 0x3

    const-string v5, "SkuHandler"

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[deleteProducts] failed."

    invoke-static {v5, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    const-string p0, "[deleteProducts] completed."

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[deleteSkuSets] failed."

    invoke-static {v5, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    const-string p0, "[deleteSkuSets] completed."

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[downloadSkuSets] failed."

    invoke-static {v5, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/util/List;

    const-string p0, "[downloadSkuSets] succeed."

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "clearAll failed."

    invoke-static {v5, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v5, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/util/List;

    const-string p0, "[syncServerByProtocol] Download images success"

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[checkSkuTreeNeedToUpdate] SKUs needToUpdate="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[checkNeedToUpdate] product mask needToUpdate="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[checkNeedToUpdate] SKU set needToUpdate="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_b
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[downloadSku] success "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const-string v1, "SkuCacheStrategyHelper"

    invoke-static {p0, v0, v4, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->e(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V

    return-void

    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/util/List;

    const-string p0, "[downloadThumbnailsForOlderRecords] Download images success"

    invoke-static {v4, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[downloadRecommendRule] failed"

    invoke-static {v3, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_10
    check-cast p1, Ljava/util/List;

    const-string p0, "[downloadRecommendRule] end"

    invoke-static {v4, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_11
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[downloadSurveyContent] failed"

    invoke-static {v3, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_12
    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;->getProducts()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkinCareProduct;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/SkinCareProduct;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/SkinCareProduct;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;->SKINCARE:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent;-><init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    :cond_2
    return-void

    :pswitch_13
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_14
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "[syncServerInternal] failed"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_15
    check-cast p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKGetRecommendationEvent$Type;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;->getProductSets()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getBestMatch()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getBestMatch()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getWarmer()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getWarmer()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getCooler()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getCooler()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getLighter()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getLighter()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getDarker()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;->getDarker()Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;->getProductGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent;-><init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    :cond_9
    return-void

    :pswitch_16
    check-cast p1, Lcom/perfectcorp/perfectlib/ShadeFinder;

    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKCreateFunctionalityEvent$Functionality;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
