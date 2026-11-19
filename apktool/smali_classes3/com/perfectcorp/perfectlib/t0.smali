.class public final synthetic Lcom/perfectcorp/perfectlib/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/t0;->b:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/t0;->d:Ljava/lang/Object;

    iput p1, p0, Lcom/perfectcorp/perfectlib/t0;->c:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/t0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/t0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/t0;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/t0;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/t0;->f:Ljava/lang/Object;

    iget v3, p0, Lcom/perfectcorp/perfectlib/t0;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/t0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v2, Lcom/perfectcorp/perfectlib/EffectConfig;

    check-cast p1, Ljava/util/List;

    sget p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v2, Lcom/perfectcorp/perfectlib/s0;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/z0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/u2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string p1, "Can\'t find look="

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Ljava/util/List;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p1, v1, p0, v2, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v2, Lcom/perfectcorp/perfectlib/EffectConfig;

    check-cast p1, Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->o(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->w(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p1, v1, p0, v2, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->s(I)V

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
