.class public final synthetic Lrw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lrw0;->a:I

    iput-object p1, p0, Lrw0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lrw0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lrw0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lrw0;->a:I

    iget-object v1, p0, Lrw0;->d:Ljava/lang/Object;

    iget-object v2, p0, Lrw0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lrw0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v2, v1}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    check-cast v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Lcom/perfectcorp/perfectlib/y3;

    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
