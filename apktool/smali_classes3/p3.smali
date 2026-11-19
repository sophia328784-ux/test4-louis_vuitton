.class public final synthetic Lp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/core/impl/Config$OptionMatcher;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/g;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    const/16 p1, 0xe

    iput p1, p0, Lp3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lp3;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lp3;->b:I

    iput-object p1, p0, Lp3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 2

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    new-instance v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->f:Landroid/util/SparseArray;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;-><init>(Landroidx/media3/common/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p1, p0, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->e(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lp3;->b:I

    iget-object v1, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, p0, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->k0(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    :sswitch_0
    check-cast p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    check-cast v1, Lcom/sightcall/universal/model/Session;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, v1, p1}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->b(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V

    return-void

    :sswitch_1
    check-cast p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    check-cast v1, Lcom/sightcall/universal/model/Session;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, v1, p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->a(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lp3;->b:I

    const/4 v1, 0x0

    const-string v2, "SkuHandler"

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    move-object v9, v5

    check-cast v9, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v10, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, ", messageDigest="

    const-string v1, ", newMessageDigest="

    const-string v6, "[checkSkuTreeNeedToUpdate] featureType="

    invoke-static {v6, p0, v0, v5, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, v4, v2}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;

    check-cast v5, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;->a:Ljava/lang/String;

    invoke-static {p0, p1, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :sswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast v5, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$a;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lna0;

    invoke-direct {v0, p0, v5, v4}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p1

    :sswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast v5, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;->a()Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->b()Ljava/util/List;

    move-result-object v9

    new-instance p1, Lcom/perfectcorp/perfectlib/a4;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/a4;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V

    const-string p0, "ShadeFinderRecommendationHandler"

    const-string v0, "[syncServerInternal] Sync all foundation SKUs."

    invoke-static {v4, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "recommendedGuids can\'t be null"

    invoke-static {v9, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class p0, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/perfectcorp/common/network/ProgressCallback;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[downloadFoundationProducts] start, size="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p0, "downloadFoundationProducts"

    invoke-direct {v8, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[downloadFoundationProducts] recommended GUID list is empty."

    invoke-static {v4, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lpx0;

    const/16 p1, 0x8

    invoke-direct {p0, v10, p1}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    new-instance p1, Ljx0;

    const/4 v0, 0x2

    invoke-direct {p1, v7, v8, v0}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    :goto_0
    invoke-static {v0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/perfectcorp/perfectlib/b0;

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    new-instance p1, Ljx0;

    invoke-direct {p1, v7, v8, v4}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ler0;

    invoke-direct {v0, p1, v3}, Ler0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p1

    new-array v0, v3, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p1, v0, v1

    invoke-virtual {v5, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/b;

    return-object p0

    :sswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    check-cast v5, Landroid/graphics/Bitmap;

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;

    new-instance p1, Lcom/perfectcorp/perfectlib/e0;

    invoke-direct {p1, p0, v5, v1}, Lcom/perfectcorp/perfectlib/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object p0

    :sswitch_5
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast v5, Ljava/io/File;

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->b:J

    invoke-static {p1, v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->b(Landroid/database/sqlite/SQLiteDatabase;JLcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    return-object v5

    :sswitch_6
    check-cast p0, Ljava/lang/String;

    check-cast v5, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :sswitch_7
    check-cast p0, Ljava/util/concurrent/LinkedBlockingDeque;

    check-cast v5, Ljava/util/concurrent/LinkedBlockingDeque;

    check-cast p1, Ljava/util/Map$Entry;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    new-instance v0, Lh7;

    invoke-direct {v0, p0, p1, v5}, Lh7;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/Map$Entry;Ljava/util/concurrent/LinkedBlockingDeque;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->N:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x7 -> :sswitch_5
        0xc -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lp3;->b:I

    iget-object v1, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, v1, p1}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->b(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/Fragment;Ljava/util/Map;)V

    return-void

    :sswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, v1, p1}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/Map;)V

    return-void

    :sswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/components/Component;

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/components/Component;->f:Lcom/google/firebase/components/ComponentFactory;

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentFactory;->c(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public d(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget p1, p0, Lp3;->b:I

    iget-object v0, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    check-cast v0, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v0, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->d(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;

    check-cast v0, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {v0, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->d(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 3

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/JsExecutor;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lqw0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lqw0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p0, v1}, Lcom/perfectcorp/perfectlib/JsExecutor;->executeJs(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public f(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 2

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    sget-object v1, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->DEFAULT:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    iget-object p0, p0, Landroidx/camera/core/SurfaceRequest;->c:Landroidx/camera/core/DynamicRange;

    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v1, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->YUV:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    :cond_0
    iget-object p0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->b:Landroidx/camera/core/processing/OpenGlRenderer;

    iget-object p1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object p1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {p1}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    iget-object p1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->l:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    if-eq p1, v1, :cond_1

    iput-object v1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->l:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    iget p1, p0, Landroidx/camera/core/processing/OpenGlRenderer;->m:I

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/OpenGlRenderer;->k(I)V

    :cond_1
    return-void
.end method

.method public g(Lcom/google/firebase/inject/Provider;)V
    .locals 1

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Deferred$DeferredHandler;

    invoke-interface {v0, p1}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->g(Lcom/google/firebase/inject/Provider;)V

    invoke-interface {p0, p1}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->g(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lp3;->b:I

    iget-object v1, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    check-cast v1, Lb41;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lx90;

    invoke-direct {v3, v0, v2}, Lx90;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {p1, v3, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lb5;

    const/16 v3, 0xf

    invoke-direct {v2, v0, p1, v1, v3}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "setForegroundAsync"

    return-object p0

    :pswitch_0
    move-object v5, p0

    check-cast v5, Landroidx/camera/core/CameraX;

    move-object v4, v1

    check-cast v4, Landroid/content/Context;

    iget-object v7, v5, Landroidx/camera/core/CameraX;->d:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Landroidx/camera/core/b;

    const/4 v1, 0x1

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/b;-><init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "CameraX initInternal"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lp3;->b:I

    iget-object v1, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/MediaItem;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->L(ILandroidx/media3/common/MediaItem;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {p1, p0, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget v0, p0, Lp3;->b:I

    iget-object v1, p0, Lp3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    sget v0, Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;->g:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "app_instance_id"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string p0, "ga_session_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setAdditionalData(Ljava/util/Map;)V

    :cond_2
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/messaging/EnhancedIntentService;

    check-cast v1, Landroid/content/Intent;

    sget p1, Lcom/google/firebase/messaging/EnhancedIntentService;->b:I

    invoke-virtual {p0, v1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lp3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lp3;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->b:J

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
