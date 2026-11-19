.class final Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

.field public final g:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

.field public final h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

.field public final j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

.field public final m:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->A(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PhotoMakeupInternal#downloadTaskExecutor"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "PhotoMakeupInternal#applyTaskExecutor"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->g:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal$ApplyEffectIdsInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/q3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->p(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/perfectcorp/perfectlib/k1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1, v0}, Lcom/perfectcorp/perfectlib/k1;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance p3, Lcom/perfectcorp/perfectlib/o3;

    invoke-direct {p3, p0, p1}, Lcom/perfectcorp/perfectlib/o3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final b(IZLjava/lang/Iterable;Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v2, v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    move v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->q(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;ZLjava/util/ArrayList;Ljava/lang/Iterable;II)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/perfectcorp/perfectlib/k1;

    const/4 p4, 0x1

    invoke-direct {p3, p0, v2, p4}, Lcom/perfectcorp/perfectlib/k1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p4, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p4, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance p3, Lcom/perfectcorp/perfectlib/o3;

    invoke-direct {p3, p0, p1}, Lcom/perfectcorp/perfectlib/o3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/graphics/Bitmap;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 6

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/perfectcorp/perfectlib/c;

    const/4 v4, 0x5

    invoke-direct {v5, v0, v4}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v4, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/perfectlib/z2;

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/z2;-><init>(Ljava/util/Set;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ZLcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v2, Lcom/perfectcorp/perfectlib/i;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/j1;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/perfectcorp/perfectlib/j1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->k:Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PhotoMakeup;->m:Lcom/perfectcorp/perfectlib/FaceData;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[validateState] hasFaceTrackingModels="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a:Z

    const-string v4, ", isFaceDetected="

    const-string v5, ", hasSetFace="

    invoke-static {v2, v3, v4, v0, v5}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "PhotoMakeupInternal"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "Must call PhotoMakeup#setFace() first."

    :goto_1
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Must call PhotoMakeup#detectFace first."

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final e(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedDownloadTaskSN("

    const-string v2, ")"

    const-string v3, "currentDownloadTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(IILjava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V
    .locals 10

    move-object/from16 v8, p6

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[downloadAndApplySkusInternal] Start download. vtoSettings="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PhotoMakeupInternal"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v9

    new-instance v0, Lcom/perfectcorp/perfectlib/n1;

    const/4 v7, 0x3

    move-object v1, p0

    move v2, p1

    move-object v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/n1;-><init>(Ljava/lang/Object;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {v9, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v6

    new-instance v0, Lcom/perfectcorp/perfectlib/t0;

    const/4 v2, 0x5

    move v1, p2

    move-object v5, p4

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/q3;

    const/16 v3, 0x8

    invoke-direct {v0, p0, v3}, Lcom/perfectcorp/perfectlib/q3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/t1;

    const/16 v3, 0x1c

    invoke-direct {v2, v8, v3}, Lcom/perfectcorp/perfectlib/t1;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/w2;

    const/4 v4, 0x1

    invoke-direct {v3, p3, v8, v4}, Lcom/perfectcorp/perfectlib/w2;-><init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v4, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final g(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedApplyTaskSN("

    const-string v2, ")"

    const-string v3, "currentApplyTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
