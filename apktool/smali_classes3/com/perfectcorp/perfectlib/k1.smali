.class public final synthetic Lcom/perfectcorp/perfectlib/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 11
    iput p3, p0, Lcom/perfectcorp/perfectlib/k1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/k1;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/k1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/perfectcorp/perfectlib/ShadeFinderDeltaE;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/perfectcorp/perfectlib/k1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/k1;->c:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/k1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/perfectcorp/perfectlib/k1;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/k1;->d:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/k1;->c:Z

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x3

    const-string v3, "ShadeFinderRecommendationHandler"

    if-nez v0, :cond_6

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v4, 0x0

    move v9, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    iget v6, v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->distance:F

    iget v7, v1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;->a:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    goto/16 :goto_3

    :cond_0
    new-instance v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;

    new-instance v6, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    sget-object v10, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->BEST_MATCH:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-direct {v6, v7, v8, v10}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)V

    invoke-direct {v11, v6}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderProduct;)V

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->warmer:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->WARMER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {v6, p0, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b(Ljava/lang/String;ZLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v6, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->cooler:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->COOLER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {v6, p0, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b(Ljava/lang/String;ZLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v6, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->lighter:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->LIGHTER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {v6, p0, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b(Ljava/lang/String;ZLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v6, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/c;->darker:Ljava/lang/String;

    sget-object v6, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->DARKER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {v5, p0, v6}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b(Ljava/lang/String;ZLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    goto :goto_2

    :cond_1
    iget v12, v1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;->b:F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v8, v5, [Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ColorLab32f;

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;

    invoke-direct {v10}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;-><init>()V

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$ShadeFinderSingleton;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    iget-wide v5, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;->a:J

    invoke-static/range {v5 .. v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIShadeFinderJNI;->CUIShadeFinder_GetShadeFinderNeighborShade(JLcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->warmer_item_index:I

    iget v6, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->warmer_item_delta_e:F

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->WARMER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {p1, v5, v6, v12, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->c(Ljava/util/List;IFFLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->b:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget v5, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->cooler_item_index:I

    iget v6, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->cooler_item_delta_e:F

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->COOLER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {p1, v5, v6, v12, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->c(Ljava/util/List;IFFLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->c:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget v5, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->lighter_item_index:I

    iget v6, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->lighter_item_delta_e:F

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->LIGHTER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {p1, v5, v6, v12, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->c(Ljava/util/List;IFFLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->e:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget v5, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->darker_item_index:I

    iget v6, v10, Lcom/perfectcorp/perfectlib/rh/kernelctrl/a;->darker_item_delta_e:F

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;->DARKER:Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;

    invoke-static {p1, v5, v6, v12, v7}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->c(Ljava/util/List;IFFLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iput-object v5, v11, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;->d:Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    :goto_2
    new-instance v5, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;

    invoke-direct {v5, v11}, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderProductSet$Builder;)V

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    :goto_3
    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    const-string p0, "Get shade finder neighbor shade result failed."

    invoke-static {v3, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Can\'t get shade finder neighbor shade result."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getBestMatchAndNeighborsList] Return result. productSet size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "There has no products. Maybe the delta E is too small?"

    const/4 v0, 0x5

    invoke-static {v0, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getRecommendedResult] productSets.size()="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;-><init>(Ljava/util/List;)V

    move-object p0, p1

    :goto_4
    return-object p0

    :cond_6
    const-string p0, "[getBestMatchAndNeighborsList] skuDatas is empty"

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;

    const-string p1, "skuDatas is empty."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast p1, Ljava/util/List;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {v0, v1, p1, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {v0, v1, p1, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/k1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/TagType;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-wide v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;

    iget-wide v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/TagHandler;->c(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/AbstractCollection;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/perfectcorp/perfectlib/TagType;->LOOK:Lcom/perfectcorp/perfectlib/TagType;

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/k1;->c:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/TagHandler;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractCollection;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
