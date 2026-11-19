.class final Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;
.super Lcom/perfectcorp/perfectlib/VtoApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoMakeupApplier"
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;)V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/VtoApplier;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 15

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[apply] lookSetting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x3

    const-string v2, "VtoApplier"

    invoke-static {v8, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v12, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/4 v11, 0x4

    const-string v2, "callback can\'t be null"

    const-string v4, "lookGuid can\'t be null"

    const-string v5, "PhotoMakeupInternal"

    const-class v6, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    if-ne v3, v0, :cond_2

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object v14

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    :goto_0
    invoke-static {v6, v0}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object v13, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "applyLookGuid::lookGuid="

    invoke-virtual {p0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "[applyLookByGuid] Start apply. lookGuid="

    invoke-virtual {p0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/perfectcorp/perfectlib/j2;

    invoke-direct {v0, v14, v8}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    new-instance v9, Lcom/perfectcorp/perfectlib/t0;

    const/4 v11, 0x4

    move v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v0, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    const/16 v2, 0x8

    invoke-direct {v0, v14, v1, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k2;

    const/16 v3, 0x9

    invoke-direct {v2, v14, v1, v3}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/perfectcorp/perfectlib/j2;

    invoke-direct {v0, v14, v11}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    iget-object v2, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v3, Lcom/perfectcorp/perfectlib/s0;

    invoke-direct {v3, v12, p0, v14, v11}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/z0;

    invoke-direct {v0, v2, v8}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/u2;

    invoke-direct {p0, v12, v14, v2, v10}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {v0, v12, v9}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    const/16 v2, 0xa

    invoke-direct {v0, v14, v1, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k2;

    const/16 v3, 0xb

    invoke-direct {v2, v14, v1, v3}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/v3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/perfectcorp/perfectlib/v3;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_2
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object v13

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    :goto_3
    invoke-static {v6, v0}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "cacheStrategy can\'t be null"

    invoke-static {v3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v12}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p0, "downloadAndApplyLook::lookGuid="

    invoke-virtual {p0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "[downloadAndApplyLookInternal] Start checking. lookGuid="

    invoke-virtual {p0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iget-object p0, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v5, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p0, "downloadAndApplyLook"

    invoke-direct {v5, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v5, v12, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/LookHandler;->c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p0, :cond_4

    new-instance p0, Lcom/perfectcorp/perfectlib/j2;

    const/4 v0, 0x5

    invoke-direct {p0, v13, v0}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/o2;

    const/4 v8, 0x1

    move-object v4, v1

    move-object v1, v12

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/o2;-><init>(Ljava/lang/Object;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    const/16 v2, 0xc

    invoke-direct {v0, v13, v4, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k2;

    const/16 v3, 0xd

    invoke-direct {v2, v13, v4, v3}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    :goto_4
    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto/16 :goto_5

    :cond_4
    move-object v4, v1

    move p0, v6

    move-object v1, v12

    new-instance v0, Lcom/perfectcorp/perfectlib/e1;

    const/4 v7, 0x5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v13

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    move-object v4, v5

    move-object v5, v6

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget v6, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v6, Lcom/perfectcorp/perfectlib/s0;

    invoke-direct {v6, v1, p0, v3, v11}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/z0;

    invoke-direct {v0, v2, v8}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v6, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/u2;

    invoke-direct {p0, v1, v3, v2, v10}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {v0, v1, v9}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    const/16 v2, 0xe

    invoke-direct {v0, v3, v4, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k2;

    const/16 v6, 0xf

    invoke-direct {v2, v3, v4, v6}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    goto :goto_4

    :goto_5
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v5

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object p0, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/v3;

    invoke-direct {v0, p0, v4, v10}, Lcom/perfectcorp/perfectlib/v3;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0
.end method

.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 10

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[apply] vtoSettings="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheStrategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", effectConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    .line 595
    const-string v1, "VtoApplier"

    invoke-static {v9, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    const/4 p0, 0x7

    const/4 v2, 0x1

    const-string v3, "PhotoMakeupInternal"

    const-string v4, "callback can\'t be null"

    const-string v6, "effectConfig can\'t be null"

    const-class v7, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    if-ne v5, v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    sget-object p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    .line 598
    :goto_0
    invoke-static {v7, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[applySkus] copiedVtoSettings="

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v9, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    .line 602
    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 603
    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lcom/perfectcorp/perfectlib/y;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v2, Lcom/perfectcorp/perfectlib/w3;

    invoke-direct {v2, v1, v0, p2, v4}, Lcom/perfectcorp/perfectlib/w3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;ILcom/perfectcorp/perfectlib/EffectConfig;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    .line 605
    :cond_1
    sget-object v3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    .line 606
    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 607
    invoke-static {p1, v4, v3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    .line 608
    new-instance v3, Lcom/perfectcorp/perfectlib/w3;

    invoke-direct {v3, v1, v0, p2, v2}, Lcom/perfectcorp/perfectlib/w3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;ILcom/perfectcorp/perfectlib/EffectConfig;I)V

    .line 609
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    .line 610
    :goto_1
    new-instance p1, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {p1, v1, p0}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    .line 611
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    .line 612
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/16 p2, 0x1a

    invoke-direct {p1, p3, p2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v0, 0x1b

    invoke-direct {p2, p3, v0}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    .line 613
    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 614
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/v2;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p3, p2}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    .line 615
    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_3

    .line 616
    :cond_3
    sget-object p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    .line 617
    :goto_3
    invoke-static {v7, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p3, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "cacheStrategy can\'t be null"

    invoke-static {v5, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    .line 619
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "[downloadAndApplySkus] copiedVtoSettings="

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-static {v9, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p1, "downloadAndApplySkus"

    invoke-direct {v8, p1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    .line 622
    sget-object p3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 623
    invoke-virtual {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p3, Lcom/perfectcorp/perfectlib/l;

    const/16 v0, 0x8

    invoke-direct {p3, v0, v2}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/l0;

    const/4 v9, 0x2

    move-object v6, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/l0;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    move-object v6, v7

    move-object v7, v8

    new-instance p2, Lcom/perfectcorp/perfectlib/t2;

    const/4 p3, 0x2

    invoke-direct {p2, p0, v6, p3}, Lcom/perfectcorp/perfectlib/t2;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 625
    :goto_4
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    return-object v7

    :cond_4
    move p1, v4

    move-object v6, v7

    move-object v7, v8

    move-object v4, p2

    .line 626
    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 627
    invoke-static {p0, v2, p2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    .line 628
    new-instance v0, Lcom/perfectcorp/perfectlib/n0;

    const/4 v8, 0x3

    move v2, v3

    move v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/n0;-><init>(Ljava/lang/Object;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/perfectlib/t2;

    invoke-direct {p1, p0, v6, v9}, Lcom/perfectcorp/perfectlib/t2;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    .line 629
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v7

    move-object p1, v0

    .line 630
    new-instance p2, Lcom/perfectcorp/perfectlib/v2;

    invoke-direct {p2, p1, v6, p0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0
.end method

.method public final applyEffectIds(Ljava/util/List;Ljava/util/List;ZLcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 8

    const-string v0, "reshapeEffectIds can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p4}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string p0, "effectIds can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "[applyEffectIds] start"

    const/4 v0, 0x3

    const-string v1, "PhotoMakeupInternal"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "EffectIDs = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/y;

    const/16 v0, 0x13

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/s3;

    move-object v5, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/s3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;IZLjava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    :cond_1
    move-object v5, p2

    move v4, p3

    new-instance v1, Lcom/perfectcorp/perfectlib/u3;

    move-object v7, v6

    move-object v6, v5

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/perfectcorp/perfectlib/u3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;IZLjava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    :goto_1
    new-instance p0, Lcom/perfectcorp/perfectlib/q3;

    const/4 p2, 0x7

    invoke-direct {p0, v2, p2}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/16 p2, 0x18

    invoke-direct {p1, p4, p2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/perfectlib/t1;

    const/16 p3, 0x19

    invoke-direct {p2, p4, p3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/v2;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "callback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "[clearAllEffects] start"

    const/4 v2, 0x3

    const-string v3, "PhotoMakeupInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/t3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/t3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/q3;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0x10

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/perfectcorp/perfectlib/v2;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAllEffectsExceptSkinSmooth(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 0

    return-void
.end method

.method public final clearAllMakeupEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "callback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "PhotoMakeupInternal"

    const-string v2, "clearAllMakeupEffects"

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/t3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/t3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {v1, p0, v3}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0x15

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "perfectEffects can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[clearEffects] perfectEffects="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhotoMakeupInternal"

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/y1;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/z;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/q3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v1, 0x11

    invoke-direct {p1, p2, v1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0x12

    invoke-direct {v1, p2, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/perfectlib/v2;

    invoke-direct {p1, p0, p2, v1}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;)V
    .locals 10

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "effectIdCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "PhotoMakeupInternal"

    const-string v3, "[getEffectIds] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/perfectcorp/perfectlib/c;

    const/4 v2, 0x5

    invoke-direct {v9, p0, v2}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v8, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/perfectcorp/perfectlib/z2;

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/z2;-><init>(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ZLcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v2, Lcom/perfectcorp/perfectlib/p2;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/p2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/p2;

    invoke-direct {v3, p1, v1}, Lcom/perfectcorp/perfectlib/p2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;)V
    .locals 6

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "intensitiesCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "PhotoMakeupInternal"

    const-string v2, "[getIntensities] start"

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/perfectcorp/perfectlib/z;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v1, v5}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/q2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/q2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/q2;

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/q2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getMakeupVideoSource()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;)V
    .locals 5

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "productIdCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "PhotoMakeupInternal"

    const-string v2, "[getProductIds] start"

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v4, v4, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-static {v1, v2, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Z)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v4, Lcom/perfectcorp/perfectlib/v1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/perfectcorp/perfectlib/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/r2;

    invoke-direct {v2, p1, v0}, Lcom/perfectcorp/perfectlib/r2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/r2;

    invoke-direct {v0, p1, v3}, Lcom/perfectcorp/perfectlib/r2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Lcom/perfectcorp/perfectlib/g1;

    invoke-direct {v1, p0, p1, v0}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getReshapeEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;)V
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "reshapeEffectIdCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v2, "PhotoMakeupInternal"

    const-string v3, "[getReshapeEffectIds] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/perfectcorp/perfectlib/i;

    invoke-direct {v3, v2, v1}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/j1;

    invoke-direct {p0, v2, v1}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v2, Lcom/perfectcorp/perfectlib/g2;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/g2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/g2;

    invoke-direct {v3, p1, v1}, Lcom/perfectcorp/perfectlib/g2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getReshapeIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;)V
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "reshapeIntensitiesCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "PhotoMakeupInternal"

    const-string v2, "[getReshapeIntensities] start"

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/t3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/t3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/j1;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/s2;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/s2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/s2;

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/s2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/perfectcorp/perfectlib/g1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/g1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 5

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "intensities can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[setIntensities] start. intensities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "PhotoMakeupInternal"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/perfectlib/r3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/r3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;Ljava/util/Map;I)V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {v2, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/j1;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v2, Lcom/perfectcorp/perfectlib/y;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v4, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {p1, p0, v3}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v4, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/q3;

    invoke-direct {p1, p0, v1}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v1, 0x16

    invoke-direct {p1, p2, v1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0x17

    invoke-direct {v1, p2, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/perfectlib/v2;

    invoke-direct {p1, p0, p2, v1}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLipstickTransition(II)V
    .locals 0

    const-string p0, "[setLipstickTransition] Unsupported usage."

    const/4 p1, 0x5

    const-string p2, "VtoApplier"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setReshapeIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 5

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v1, "intensities can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "[setReshapeIntensities] start"

    const/4 v2, 0x3

    const-string v3, "PhotoMakeupInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/r3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/r3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;Ljava/util/Map;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/q3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/q3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v4, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/perfectlib/u2;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/perfectlib/t1;

    const/16 p1, 0x13

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/perfectlib/v2;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lcom/perfectcorp/perfectlib/v2;-><init>(Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
