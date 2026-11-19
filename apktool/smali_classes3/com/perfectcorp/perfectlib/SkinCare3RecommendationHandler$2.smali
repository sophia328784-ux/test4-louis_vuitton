.class Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SkinCare3RecommendationHandler"

    const-string v1, "[getInventory] failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$2;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$2;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
