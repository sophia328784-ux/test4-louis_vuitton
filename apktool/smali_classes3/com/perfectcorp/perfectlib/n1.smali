.class public final synthetic Lcom/perfectcorp/perfectlib/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V
    .locals 0

    iput p7, p0, Lcom/perfectcorp/perfectlib/n1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n1;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/n1;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/n1;->h:Ljava/io/Serializable;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p6, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V
    .locals 0

    .line 18
    iput p7, p0, Lcom/perfectcorp/perfectlib/n1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/n1;->h:Ljava/io/Serializable;

    iput p3, p0, Lcom/perfectcorp/perfectlib/n1;->d:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p6, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcom/perfectcorp/perfectlib/n1;->b:I

    iget v1, p0, Lcom/perfectcorp/perfectlib/n1;->d:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/n1;->h:Ljava/io/Serializable;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/n1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v3

    check-cast v5, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v2, Ljava/util/ArrayList;

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    iget-object v0, v5, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    iget v7, p0, Lcom/perfectcorp/perfectlib/n1;->d:I

    invoke-virtual {v5, v7}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e(I)V

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/l;

    const/4 v1, 0x7

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/t0;

    const/4 v6, 0x3

    move v12, v7

    move-object v7, v5

    move v5, v12

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v4, Lcom/perfectcorp/perfectlib/n1;

    const/4 v11, 0x2

    iget-boolean v10, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    invoke-direct/range {v4 .. v11}, Lcom/perfectcorp/perfectlib/n1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/w0;

    const/4 v0, 0x3

    invoke-direct {p1, v6, v10, v2, v0}, Lcom/perfectcorp/perfectlib/w0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;ZLjava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    check-cast v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e(I)V

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-boolean v9, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    sget-object v10, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->b:Li8;

    invoke-static/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0

    :pswitch_1
    move-object v1, v3

    check-cast v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    iget v3, p0, Lcom/perfectcorp/perfectlib/n1;->d:I

    invoke-virtual {v1, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->w(I)V

    iget-object v2, p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v2, :cond_1

    new-instance p0, Lcom/perfectcorp/perfectlib/l;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v8}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/t0;

    const/4 v2, 0x1

    move v12, v3

    move-object v3, v1

    move v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/n1;

    const/4 v7, 0x0

    iget-boolean v6, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/n1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/w0;

    const/4 v0, 0x2

    invoke-direct {p1, v2, v6, v8, v0}, Lcom/perfectcorp/perfectlib/w0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;ZLjava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_2
    check-cast v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoSetting;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->w(I)V

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/n1;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/n1;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-boolean v9, p0, Lcom/perfectcorp/perfectlib/n1;->g:Z

    sget-object v10, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->b:Li8;

    invoke-static/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
