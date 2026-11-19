.class public final synthetic Lcom/perfectcorp/perfectlib/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/c4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/c4;->c:Z

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/c4;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/c4;->e:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/c4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/c4;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/c4;->c:Z

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/c4;->e:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/c4;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/c4;->e:Ljava/io/Serializable;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/c4;->c:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/c4;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    new-instance v2, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a:Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface$1;

    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapperInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->MAPPING_INCOMPLETE:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v5, v4, v3, v6}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;

    invoke-virtual {v4, p1, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_10

    const-string v6, "fail"

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->errorMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    if-eqz v6, :cond_f

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->products:Ljava/util/List;

    if-eqz v7, :cond_f

    iget-object p1, v6, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->attrs:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;->productOrders:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_1
    iget-object p1, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->attrs:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;->productOrders:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$3;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->attrs:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;->productOrders:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse recommended order products. json="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_2
    iget-object p1, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->products:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[convertToProducts] products.size()="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    const-string v7, "SkinCare3RecommendationHandler"

    invoke-static {v6, v7, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v4, Lcom/perfectcorp/perfectlib/y;

    const/16 v6, 0x1a

    invoke-direct {v4, v6}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v2, p0, p1, v4}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->c(ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->products:Ljava/util/List;

    if-nez v4, :cond_4

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;

    iget-wide v6, v6, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;->productId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v2, v4

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/SkinCareProduct;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/SkinCareProduct;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;->srcType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;->productOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/SkinCareProduct;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/SkinCareProduct;->getProductId()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType$ProductOrder;->id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    new-instance p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->extra_info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    invoke-direct {p0, v3, p1}, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v3, p0

    goto :goto_7

    :cond_f
    const-string p0, "Can\'t get recommended products. json="

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string p0, "Parsed result is null. json="

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception p0

    const-string v0, "Can\'t parse recommended products. json="

    invoke-static {v0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
