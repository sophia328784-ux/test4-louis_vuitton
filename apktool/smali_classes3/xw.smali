.class public final synthetic Lxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxw;->a:I

    iput-object p1, p0, Lxw;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lxw;->a:I

    const-string v1, "[clearAll] succeeded"

    const-string v2, "TagHandler"

    const/4 v3, 0x3

    iget-object p0, p0, Lxw;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[insertToDb] succeeded. guid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    const-string v1, "BackgroundDownloader"

    invoke-static {v0, p0, v3, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;

    invoke-static {v3, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;->onSuccess()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    const-string v0, "[syncServer] succeeded"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->onSuccess()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;->onComplete()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;->onComplete()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;->onCleared()V

    return-void

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[downloadThenUpdateOnNextSdkInit] end id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const-string v1, "SkuCacheStrategyHelper"

    invoke-static {v0, p0, v3, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;

    const-string v0, "RecommendationHandler"

    invoke-static {v3, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;->onSuccess()V

    return-void

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;->onReleased()V

    return-void

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->f()V

    return-void

    :pswitch_a
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;->onReleased()V

    return-void

    :pswitch_b
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$DeleteLooksCallback;->onComplete()V

    return-void

    :pswitch_c
    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$ClearCallback;->onCleared()V

    return-void

    :pswitch_d
    check-cast p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;

    const-string v0, "FaceAttributeAnalyzer"

    const-string v1, "[setImage] succeeded"

    invoke-static {v3, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;->onSuccess()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
