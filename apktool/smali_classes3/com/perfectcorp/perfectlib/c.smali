.class public final synthetic Lcom/perfectcorp/perfectlib/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/c;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/c;->a:I

    const-string v1, "SkuCacheStrategyHelper"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/WatchVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/WatchVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/WatchVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/WatchVtoApplier;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerByType] failed. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagHandler"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " remove CacheStrategyForCacheFirstThenUpdate table guid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/SkuCacheStrategyHelper;->c(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[downloadSku] failed, try to remove failed data, guid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/SkuCacheStrategyHelper;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[downloadSku] done for remove failed data, guid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/RingVtoApplier;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/HandFunctionalities;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->f:Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/Configuration;->m:Lcom/perfectcorp/perfectlib/Configuration;

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    const/4 v1, 0x0

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->e:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->O:Z

    sput-boolean v1, Lcom/perfectcorp/perfectlib/developermode/WatermarkBlender;->a:Z

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string v0, "PerfectLib"

    const-string v1, "SDK release failed."

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/common/logger/j;->d()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_6
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/NailVtoApplier;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/JewelryVtoApplier;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/BraceletVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/BraceletVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/BraceletVtoApplier;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier;)V

    return-void

    nop

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
