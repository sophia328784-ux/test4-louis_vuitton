.class public final synthetic Lcom/perfectcorp/perfectlib/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/g;


# instance fields
.field public final synthetic b:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/a2;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a2;->b:Ljava/util/HashMap;

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Ljava/util/HashMap;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter$Ids;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a2;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$2;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/SkinCareProduct;->getInventory(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;)V

    return-void
.end method
