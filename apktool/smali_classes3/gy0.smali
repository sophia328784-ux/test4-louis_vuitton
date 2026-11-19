.class public final synthetic Lgy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;
.implements Lcom/batch/android/s/a$b;
.implements Lcom/batch/android/j1/c;
.implements Lcom/batch/android/j1/h;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p3, p0, Lgy0;->b:I

    iput-object p1, p0, Lgy0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lgy0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p3, p0, Lgy0;->b:I

    iput-object p1, p0, Lgy0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgy0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/b;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/v0/i;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/batch/android/v0/i;->j(Lcom/batch/android/v0/i;Landroid/content/Context;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public a(Lcom/batch/android/j1/g;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/v0/j;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p0, p1}, Lcom/batch/android/v0/j;->l(Lcom/batch/android/v0/j;Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public a(Lcom/batch/android/t/b;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/v0/f;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/batch/android/t/b;

    invoke-static {v0, p0, p1}, Lcom/batch/android/v0/f;->j(Lcom/batch/android/v0/f;Lcom/batch/android/t/b;Lcom/batch/android/t/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanBottomSheet$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NEXT"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "BACK"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/streamsharing/VirtualCameraControl;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/lang/Void;

    .line 392
    iget-object p1, v0, Landroidx/camera/core/streamsharing/VirtualCameraControl;->c:Landroidx/camera/core/streamsharing/a;

    const/4 v0, 0x0

    .line 393
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CaptureConfig;

    .line 394
    iget-object v1, v1, Landroidx/camera/core/impl/CaptureConfig;->b:Landroidx/camera/core/impl/OptionsBundle;

    .line 395
    sget-object v2, Landroidx/camera/core/impl/CaptureConfig;->j:Landroidx/camera/core/impl/Config$Option;

    const/16 v3, 0x64

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 397
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 398
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CaptureConfig;

    .line 399
    iget-object p0, p0, Landroidx/camera/core/impl/CaptureConfig;->b:Landroidx/camera/core/impl/OptionsBundle;

    .line 400
    sget-object v2, Landroidx/camera/core/impl/CaptureConfig;->i:Landroidx/camera/core/impl/Config$Option;

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 402
    invoke-virtual {p0, v2, v0}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 403
    iget-object p1, p1, Landroidx/camera/core/streamsharing/a;->a:Landroidx/camera/core/streamsharing/StreamSharing;

    .line 404
    iget-object p1, p1, Landroidx/camera/core/streamsharing/StreamSharing;->u:Landroidx/camera/core/processing/SurfaceProcessorNode;

    if-eqz p1, :cond_0

    .line 405
    iget-object p1, p1, Landroidx/camera/core/processing/SurfaceProcessorNode;->a:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 406
    invoke-interface {p1, v1, p0}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->b(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 407
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Failed to take picture: pipeline is not ready."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lgy0;->b:I

    const/4 v1, 0x3

    iget-object v2, p0, Lgy0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] #downloadPatternImages(); begin"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IdSystemDataHelper"

    invoke-static {v1, v5, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->d(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "] #getDownloadComponents(); component count="

    invoke-static {v0, v4, v6}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {p1, v3, p0, v2, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p0, Ljava/util/ArrayList;

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->g(Lcom/perfectcorp/thirdparty/com/google/common/collect/SetMultimap;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {v1, v0, v3, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->c(Ljava/util/Collection;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :sswitch_1
    check-cast v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;-><init>()V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->c:J

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;->d:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/a$a;)V

    return-object p0

    :sswitch_2
    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p0, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[updateExistingIdSystemItems] type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SkuHandler"

    invoke-static {v1, v5, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lpx0;

    const/4 v6, 0x6

    invoke-direct {v3, p0, v6}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v3}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p1, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p1, v6}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p0, ", patterns: "

    invoke-static {v4, p1, p0}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    const-string p0, ", all idc items: "

    invoke-static {v4, p1, p0}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->d(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;)Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;
    .locals 3

    iget-object p1, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object p1, p1, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p0, Lo11;

    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Lo11;-><init>(I)V

    new-instance p1, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {p1, v0, v0, p0}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextLinkScope;->c(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lo11;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lo11;-><init>(I)V

    new-instance p1, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {p1, v0, v0, p0}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    return-object p1

    :cond_1
    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->j(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->d()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->b()I

    move-result v0

    new-instance v1, Lhv0;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lhv0;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lgy0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lgy0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->i:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;->k(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    check-cast v2, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->i(Ljava/lang/Iterable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lgy0;->b:I

    iget-object v1, p0, Lgy0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lgy0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/concurrent/Executor;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lx90;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lx90;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {p1, v2, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lb5;

    const/16 v3, 0x19

    invoke-direct {v2, v0, p1, v1, v3}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Landroidx/camera/core/SurfaceRequest;->q:Landroid/util/Range;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SurfaceRequest-surface-recreation("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V
    .locals 1

    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    invoke-static {v0, p0, p1, p2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->y(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lgy0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object p0, p0, Lgy0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/agent/Agent;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->a(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V

    return-void
.end method
