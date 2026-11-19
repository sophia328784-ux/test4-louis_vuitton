.class Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;


# instance fields
.field public synthetic a:Landroid/util/Pair;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method

.method public final progress(D)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;->a:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/common/utility/EventPublisher;

    new-instance v0, Lkt0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lkt0;-><init>(DI)V

    const-class p1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    sget-object p2, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-virtual {p0, p1, v0, p2}, Lcom/perfectcorp/common/utility/EventPublisher;->a(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Publisher;Lcom/perfectcorp/common/concurrent/CallingThread;)V

    return-void
.end method
