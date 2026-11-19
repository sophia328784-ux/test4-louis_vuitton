.class public final synthetic Ly81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;
.implements Lcom/google/android/filament/View$OnPickCallback;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
.implements Lcom/batch/android/j1/h;
.implements Lcom/batch/android/e/c0$c;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;)V
    .locals 1

    .line 16
    const/4 v0, 0x7

    iput v0, p0, Ly81;->b:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly81;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly81;->d:Ljava/lang/Object;

    iput-object v0, p0, Ly81;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Ly81;->b:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly81;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly81;->d:Ljava/lang/Object;

    iput-object v0, p0, Ly81;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p4, p0, Ly81;->b:I

    iput-object p1, p0, Ly81;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly81;->d:Ljava/lang/Object;

    iput-object p3, p0, Ly81;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/e/c0;)V
    .locals 2

    .line 79
    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/v0/k;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/batch/android/v0/k;->i(Lcom/batch/android/v0/k;Landroid/content/Context;Ljava/util/ArrayList;Lcom/batch/android/e/c0;)V

    return-void
.end method

.method public a(Lcom/batch/android/j1/g;)V
    .locals 2

    .line 78
    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/v0/j;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Lcom/batch/android/BatchPushRegistration;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, v1, p0, p1}, Lcom/batch/android/v0/j;->k(Lcom/batch/android/v0/j;Lcom/batch/android/BatchPushRegistration;Landroid/content/Context;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public a(Lcom/google/android/filament/View$PickingQueryResult;)V
    .locals 4

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->d0:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->a()[I

    move-result-object v2

    iget p1, p1, Lcom/google/android/filament/View$PickingQueryResult;->a:I

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result p1

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->a0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    int-to-float p1, p1

    sub-float/2addr p0, p1

    iput v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->N:F

    iput p0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->O:F

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->Y:Z

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;->x:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const-string p0, "shoeAsset"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    invoke-interface {p1, v0, v1, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->e(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ly81;->b:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const-string v4, "SkuHandler"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Ly81;->e:Ljava/lang/Object;

    iget-object v9, v0, Ly81;->d:Ljava/lang/Object;

    iget-object v0, v0, Ly81;->c:Ljava/lang/Object;

    sparse-switch v1, :sswitch_data_0

    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/common/utility/Triple;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v0, v1, Lcom/perfectcorp/common/utility/Triple;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerByProtocol] Get sku tree returned with HTTP status code 304. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/perfectcorp/common/utility/Triple;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v1, Lcom/perfectcorp/common/utility/Triple;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    goto :goto_0

    :goto_1
    return-object v0

    :sswitch_0
    check-cast v0, Ljava/util/List;

    move-object v5, v9

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v8

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->e()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Ly81;

    check-cast v1, Ljava/util/Set;

    const/16 v6, 0xe

    invoke-direct {v2, v4, v5, v1, v6}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    move-object v2, v1

    new-instance v1, Lm7;

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lm7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v2

    :sswitch_1
    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v9, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v5, v10, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    new-instance v4, Lpx0;

    const/4 v5, 0x5

    invoke-direct {v4, v9, v5}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v4}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lyw0;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lua0;

    invoke-direct {v4, v0, v6}, Lua0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lhy0;

    invoke-direct {v3, v8, v2, v9, v7}, Lhy0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v2, Lo2;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    return-object v0

    :sswitch_2
    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v9, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v8, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object v2

    new-instance v3, Lq7;

    invoke-direct {v3, v0, v1, v6}, Lq7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Ley0;

    invoke-direct {v1, v9, v7}, Ley0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    :goto_3
    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    goto :goto_4

    :cond_2
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    new-instance v3, Lq7;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lq7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Ley0;

    invoke-direct {v1, v8, v6}, Ley0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    goto :goto_3

    :goto_4
    return-object v0

    :sswitch_3
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    move v10, v3

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v13, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->statusCode:I

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->b(I)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    move-result-object v13

    sget-object v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$e;

    const-string v15, " not found in SKU set id="

    const-string v6, "[checkNeedToUpdateWithSkuSetGuids] SKU id="

    if-eq v13, v14, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_5

    :cond_3
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iget-object v14, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    invoke-static {v13, v14, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-wide v13, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->j:J

    move-object/from16 p0, v8

    iget-wide v7, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    cmp-long v7, v13, v7

    if-gez v7, :cond_5

    goto :goto_6

    :cond_4
    move-object/from16 p0, v8

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-static {v3, v6, v5, v4}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    :cond_5
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p0

    goto :goto_5

    :cond_6
    move-object/from16 p0, v8

    if-nez v3, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    move-object/from16 v8, p0

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->UPDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    move-object/from16 v8, p0

    :goto_7
    invoke-virtual {v8, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :goto_8
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    goto :goto_7

    :goto_9
    return-object v1

    :sswitch_4
    check-cast v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast v9, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[downloadSkuByProtocolMethod] start id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SkuCacheStrategyHelper"

    invoke-static {v5, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0, v3, v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    new-instance v3, Lcx0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v8, v9, v4}, Lcx0;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v4, v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lln0;

    invoke-direct {v0, v1, v2}, Lln0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lbx0;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbx0;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v1

    :sswitch_5
    move-object v4, v0

    check-cast v4, Lcom/perfectcorp/perfectlib/LookHandler;

    move-object v6, v9

    check-cast v6, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v7, v8

    check-cast v7, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    move-object/from16 v5, p1

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v3, Lqx0;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lqx0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lv40;

    invoke-direct {v1, v2}, Lv40;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    return-object v0

    :sswitch_6
    check-cast v0, Ljava/lang/String;

    check-cast v9, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-wide v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/LookHandler;->e(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)J

    move-result-wide v10

    cmp-long v2, v6, v10

    const-string v4, "LookCacheFirstThenUpdateStrategy"

    if-lez v2, :cond_a

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    sget-object v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-direct {v2, v0, v6, v7, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->c(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "[startLookUpdateTask] Updating outdated look. lookGuid="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/camera/panel/a;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v0

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->g:Z

    iput-boolean v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->h:Z

    iput-boolean v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->i:Z

    sget-object v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST_THEN_UPDATE:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v9, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-eqz v8, :cond_9

    goto :goto_a

    :cond_9
    sget-object v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    :goto_a
    iput-object v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    sget-object v1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v2, "priority can\'t be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {v0, v3, v3}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lx1;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lx1;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_b

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Look is up-to-date. lookGuid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v2

    :goto_b
    return-object v2

    :sswitch_7
    check-cast v0, Ljava/lang/String;

    check-cast v9, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v1, v0, v9, v8}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v0

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    return-object v0

    :sswitch_8
    move-object v2, v0

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v4, v9

    check-cast v4, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    move-object v6, v8

    check-cast v6, Lcom/perfectcorp/common/network/ProgressCallback;

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    sget-object v1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v5, Lo7;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v3, v7}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v1, v3, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->n(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    move-result-object v0

    goto :goto_c

    :cond_b
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    :goto_c
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/transition/Transition;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroidx/transition/Transition;->cancel()V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/EventInternal;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->d:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v2, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->D1(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ly81;->b:I

    const-string v1, "Init GlRenderer"

    const/4 v2, 0x2

    iget-object v3, p0, Ly81;->d:Ljava/lang/Object;

    iget-object p0, p0, Ly81;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/DynamicRange;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    new-instance v0, Lxo;

    invoke-direct {v0, p0, v3, p1}, Lxo;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    new-instance p1, Le5;

    invoke-direct {p1, v2}, Le5;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->e(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v3, Landroidx/camera/core/DynamicRange;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    new-instance v0, Lxo;

    invoke-direct {v0, p0, v3, p1}, Lxo;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    new-instance p1, Le5;

    invoke-direct {p1, v2}, Le5;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->e(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/e/c0;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/review/ReviewManager;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, v1, p0, p1}, Lcom/batch/android/b/f;->b(Lcom/batch/android/e/c0;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/CancellationSignal;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/CredentialManagerCallback;

    invoke-static {v0, v1, p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$Cl2BKCsAmVhsKuatXKmGSWVFLNg(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Ly81;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ly81;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Ly81;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_FOUND:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->makeupVersion:Ljava/lang/String;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->a(Ljava/lang/String;F)F

    move-result v3

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->e(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    iget-wide v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lg7;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->OUTDATED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_4
    :goto_1
    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupItemStatus;->NOT_SUPPORTED:Lcom/perfectcorp/perfectlib/MakeupItemStatus;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method
