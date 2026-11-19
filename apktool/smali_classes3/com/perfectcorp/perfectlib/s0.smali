.class public final synthetic Lcom/perfectcorp/perfectlib/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/s0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/s0;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/s0;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/s0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/s0;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/s0;->e:Ljava/lang/Object;

    iget v2, p0, Lcom/perfectcorp/perfectlib/s0;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/s0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v1, Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    sget p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g(I)V

    const-string p1, "[applyLookTransform] Start apply. lookGuid="

    const/4 v0, 0x3

    const-string v2, "PhotoMakeupInternal"

    invoke-static {v0, p1, v1, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/perfectcorp/perfectlib/d2;

    const/4 v7, 0x0

    move v8, v7

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/d2;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;II)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/p3;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/p3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    check-cast p1, Ljava/lang/Iterable;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    const/4 v0, 0x1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b(IZLjava/lang/Iterable;Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {p0, v2, v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->l(ILjava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->f(I)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Jewelry:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c:Ljava/util/Map;

    const-string v3, "look_guid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->j(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl$1;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->r(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
