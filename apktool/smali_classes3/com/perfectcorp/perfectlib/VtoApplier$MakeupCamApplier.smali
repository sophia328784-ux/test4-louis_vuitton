.class final Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;
.super Lcom/perfectcorp/perfectlib/VtoApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeupCamApplier"
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final c:Lcom/perfectcorp/perfectlib/MakeupVideoSourceImpl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;)V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/VtoApplier;-><init>()V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->setApplier(Ljava/lang/Object;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/MakeupCam;->getVideoCaptureSource()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/perfectcorp/perfectlib/MakeupVideoSourceImpl;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->c:Lcom/perfectcorp/perfectlib/MakeupVideoSourceImpl;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 11

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[apply] lookSetting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "VtoApplier"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    move v2, v1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    const/4 v4, 0x2

    const/4 v9, 0x4

    const-string v5, "MakeupCamInternal"

    const-string v6, "callback can\'t be null"

    const-string v7, "lookGuid can\'t be null"

    const-class v8, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object p1

    if-ne v3, v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    :goto_0
    invoke-static {v8, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    invoke-static {p1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "applyLookGuid::lookGuid="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[applyLookByGuid] Start apply. lookGuid="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    new-instance v2, Lcom/perfectcorp/perfectlib/j2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v2

    new-instance v4, Lcom/perfectcorp/perfectlib/w1;

    invoke-direct {v4, v1, v0, p0, p1}, Lcom/perfectcorp/perfectlib/w1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    invoke-direct {v0, p1, p2, v3}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k2;

    invoke-direct {v2, p1, p2, v5}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/perfectcorp/perfectlib/j2;

    invoke-direct {v3, p1, v5}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v5, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v5, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v3

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v3

    sget-object v5, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/perfectcorp/perfectlib/w1;

    invoke-direct {v5, v1, v0, p1, p0}, Lcom/perfectcorp/perfectlib/w1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILjava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {v0, v1, p1, v9}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    invoke-direct {v0, p1, p2, v4}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/k2;

    invoke-direct {v3, p1, p2, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    goto :goto_1

    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    :goto_3
    invoke-static {v8, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    invoke-static {p1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cacheStrategy can\'t be null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "downloadAndApplyLook::lookGuid="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[downloadAndApplyLookInternal] Start checking. lookGuid="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v5, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v0, "downloadAndApplyLook"

    invoke-direct {v5, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/LookHandler;->c(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/perfectcorp/perfectlib/j2;

    invoke-direct {v0, p1, v4}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v10

    new-instance v0, Lcom/perfectcorp/perfectlib/o2;

    const/4 v8, 0x0

    move-object v7, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/o2;-><init>(Ljava/lang/Object;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v10, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/perfectlib/k2;

    invoke-direct {p2, p1, v4, v9}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/k2;

    const/4 v2, 0x5

    invoke-direct {v0, p1, v4, v2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_4

    :cond_4
    move-object v4, p2

    move p2, v6

    new-instance v0, Lcom/perfectcorp/perfectlib/e1;

    const/4 v7, 0x2

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    move-object v4, v5

    move-object v5, v6

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/perfectlib/w1;

    invoke-direct {v0, v1, p2, v3, p0}, Lcom/perfectcorp/perfectlib/w1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILjava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {p1, v1, v3, v9}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/k2;

    const/4 p2, 0x6

    invoke-direct {p1, v3, v4, p2}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/perfectlib/k2;

    const/4 v0, 0x7

    invoke-direct {p2, v3, v4, v0}, Lcom/perfectcorp/perfectlib/k2;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    move-object p1, v0

    :goto_4
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v5
.end method

.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 11

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

    const/4 v1, 0x3

    .line 491
    const-string v2, "VtoApplier"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v3, "MakeupCamInternal"

    const-string v4, "callback can\'t be null"

    const-string v6, "effectConfig can\'t be null"

    const-class v7, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    sget-object p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    .line 494
    :goto_0
    invoke-static {v7, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/perfectcorp/perfectlib/b2;

    invoke-direct {p0, p3, v10}, Lcom/perfectcorp/perfectlib/b2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[applySkus] copiedVtoSettings="

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    .line 498
    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 499
    invoke-virtual {p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/perfectlib/y;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/perfectlib/f2;

    invoke-direct {v3, p0, v0, p2, v10}, Lcom/perfectcorp/perfectlib/f2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILcom/perfectcorp/perfectlib/EffectConfig;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    .line 501
    :cond_2
    sget-object v3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    .line 502
    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 503
    invoke-static {p1, v10, v3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    .line 504
    new-instance v3, Lcom/perfectcorp/perfectlib/f2;

    invoke-direct {v3, p0, v0, p2, v9}, Lcom/perfectcorp/perfectlib/f2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILcom/perfectcorp/perfectlib/EffectConfig;I)V

    .line 505
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    .line 506
    :goto_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/t1;

    invoke-direct {p2, p3, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/t1;

    invoke-direct {v0, p3, v1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    .line 507
    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 508
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    .line 509
    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_3

    .line 510
    :cond_4
    sget-object p3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    .line 511
    :goto_3
    invoke-static {v7, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "cacheStrategy can\'t be null"

    invoke-static {v5, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p0, Lcom/perfectcorp/perfectlib/b2;

    invoke-direct {p0, v7, v2}, Lcom/perfectcorp/perfectlib/b2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_5
    sget-object p3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    .line 513
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "[downloadAndApplySkus] copiedVtoSettings="

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 514
    invoke-static {v1, v3, p3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p3, "downloadAndApplySkus"

    invoke-direct {v8, p3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object p3, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p3, p3, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p3, :cond_6

    move v4, v3

    move v3, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    .line 516
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 517
    invoke-virtual {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/perfectcorp/perfectlib/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p3

    new-instance v0, Lcom/perfectcorp/perfectlib/l0;

    const/4 v9, 0x1

    move-object v1, p0

    move-object v6, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/l0;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    move-object v6, v7

    move-object v7, v8

    new-instance p0, Lcom/perfectcorp/perfectlib/t2;

    invoke-direct {p0, p1, v6, v10}, Lcom/perfectcorp/perfectlib/t2;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 519
    :goto_4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    return-object v7

    :cond_6
    move-object v1, p0

    move-object v4, p2

    move p0, v3

    move-object v6, v7

    move-object v7, v8

    move v3, v2

    .line 520
    sget-object p2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 521
    invoke-static {p1, v9, p2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    .line 522
    new-instance v0, Lcom/perfectcorp/perfectlib/n0;

    const/4 v8, 0x2

    move v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/n0;-><init>(Ljava/lang/Object;IILcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/perfectlib/t2;

    invoke-direct {p0, p1, v6, v9}, Lcom/perfectcorp/perfectlib/t2;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    .line 523
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_4
.end method

.method public final applyEffectIds(Ljava/util/List;Ljava/util/List;ZLcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 9

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p4}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string p0, "effectIds can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "reshapeEffectIds can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x3

    const-string v0, "MakeupCamInternal"

    const-string v2, "[applyEffectIds] start"

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "effectIds = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v5, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k:I

    iget v6, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l:I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/y;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/h2;

    move-object v4, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/h2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;IZLjava/util/List;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    :cond_1
    move-object v4, p2

    move v3, p3

    new-instance v0, Lcom/perfectcorp/perfectlib/i2;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/i2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;IZLjava/util/List;Ljava/util/List;IILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p1

    :goto_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v;

    const/4 p1, 0x1

    invoke-direct {p0, p4, p1}, Lcom/perfectcorp/perfectlib/v;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/4 p3, 0x4

    invoke-direct {p1, p4, p3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p3, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v1, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v2, "callback can\'t be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "clearAllEffects"

    const/4 v3, 0x3

    const-string v4, "MakeupCamInternal"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/perfectlib/o1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/perfectcorp/perfectlib/o1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/t1;

    invoke-direct {v0, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearAllEffectsExceptSkinSmooth(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v1, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v2, "callback can\'t be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "clearAllEffectsExceptSkinSmooth"

    const/4 v3, 0x3

    const-string v4, "MakeupCamInternal"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/perfectlib/o1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p0, v3}, Lcom/perfectcorp/perfectlib/o1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0xd

    invoke-direct {v0, p1, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearAllMakeupEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v1, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v2, "callback can\'t be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "clearAllMakeupEffects"

    const/4 v3, 0x3

    const-string v4, "MakeupCamInternal"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/perfectlib/o1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/perfectcorp/perfectlib/o1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0xa

    invoke-direct {v0, p1, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0xb

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .locals 6

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v0, "perfectEffects can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[clearEffects] perfectEffects="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "MakeupCamInternal"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-string p0, "[clearEffects] nothing can be cleared"

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/b2;

    invoke-direct {p0, p2, v4}, Lcom/perfectcorp/perfectlib/b2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/y1;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/y1;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    move-object v4, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/n2;

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/n2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ZZLcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/t1;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/16 v2, 0x8

    invoke-direct {v1, p2, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;)V
    .locals 7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v0, "effectIdCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    new-instance v6, Lo2;

    const/16 v1, 0xb

    invoke-direct {v6, v0, v1}, Lo2;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v5, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/z2;

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/z2;-><init>(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ZLcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/p2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/p2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/p2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/p2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;)V
    .locals 5

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v1, "intensitiesCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "[getIntensities] start"

    const/4 v2, 0x3

    const-string v3, "MakeupCamInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v3, Lcom/perfectcorp/perfectlib/z;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v2, v4}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/q2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/q2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/q2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/q2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getMakeupVideoSource()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->c:Lcom/perfectcorp/perfectlib/MakeupVideoSourceImpl;

    return-object p0
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v0, "productIdCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->b(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/perfectcorp/perfectlib/v1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/perfectcorp/perfectlib/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/r2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/r2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/r2;

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/r2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getReshapeEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;)V
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v1, "reshapeEffectIdCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v2, "MakeupCamInternal"

    const-string v3, "[getReshapeEffectIds] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v3, Lcom/perfectcorp/perfectlib/i;

    invoke-direct {v3, v2, v1}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/j1;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/g2;

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/g2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/g2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/g2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getReshapeIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;)V
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v1, "reshapeIntensitiesCallback can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "[getReshapeIntensities] start"

    const/4 v2, 0x3

    const-string v3, "MakeupCamInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/i;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/j1;

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/s2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/s2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/s2;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/s2;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
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

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v1, "intensities can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIntensities::intensities="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "MakeupCamInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/l2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/l2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Ljava/util/Map;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/j1;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/m2;

    invoke-direct {p1, p0, v2}, Lcom/perfectcorp/perfectlib/m2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/t1;

    const/4 v1, 0x5

    invoke-direct {p1, p2, v1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/t1;

    const/4 v2, 0x6

    invoke-direct {v1, p2, v2}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final setLipstickTransition(II)V
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "durationInMS can\'t less than 0"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const-string v0, "setLipstickTransition"

    const/4 v1, 0x3

    const-string v2, "MakeupCamInternal"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l:I

    return-void
.end method

.method public final setReshapeIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
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

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v1, "intensities can\'t be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "[setReshapeIntensities] start"

    const/4 v2, 0x3

    const-string v3, "MakeupCamInternal"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/l2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/l2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Ljava/util/Map;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/m2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/perfectlib/m2;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/u2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/perfectlib/t1;

    const/16 p1, 0x9

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
