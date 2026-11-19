.class public final synthetic Lcom/perfectcorp/perfectlib/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/q3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/q3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/q3;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/graphics/Bitmap;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/graphics/Bitmap;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/perfectcorp/perfectlib/internal/AppliedResult;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/AppliedResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/q3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iput p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    const-string v0, "applyEffectIdsInfo can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/y;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/s0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/c1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/perfectcorp/perfectlib/q3;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    return-object p0
.end method
