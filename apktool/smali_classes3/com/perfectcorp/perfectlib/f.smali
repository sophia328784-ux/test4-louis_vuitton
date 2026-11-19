.class public final synthetic Lcom/perfectcorp/perfectlib/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/f;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/f;->b:I

    const-string v1, "[apply] failed"

    const-string v2, "[getProductIds] failed"

    const-string v3, "[getEffectIds] failed"

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/f;->e:Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/f;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/f;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/conditionalinfo/a;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fceb851e0000000L    # 0.23999999463558197

    mul-double/2addr v0, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, v2

    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;

    check-cast v5, Lcom/perfectcorp/perfectlib/ShadeFinderData;

    check-cast v4, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    invoke-static {p0, v5, v4}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderFrameProcessingThread;->b(Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v3, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[getIntensities] failed"

    invoke-static {p0, v0, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v3, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p0, v3, v5}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
