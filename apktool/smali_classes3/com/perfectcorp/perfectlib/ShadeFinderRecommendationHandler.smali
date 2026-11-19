.class final Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;,
        Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$ShadeFinderSingleton;,
        Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 5

    const-string v0, "ShadeFinderRecommendationHandler"

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lo7;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Lo7;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "[getProductAndSkuPair] query product mapping failed."

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "[getProductAndSkuPair] SkuHandler is null."

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3, p2}, Lcom/perfectcorp/perfectlib/SkuHandler;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Z)Lcom/perfectcorp/perfectlib/ProductInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ProductInfo;->getSkus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[getProductAndSkuPair] No matched product info and sku info. skuGuid="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", skuItemGuid="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;ZLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "[getProductAndSkuPair] No SKU can be found."

    const/4 p1, 0x3

    const-string v0, "ShadeFinderRecommendationHandler"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;IFFLcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    new-instance p1, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->a:Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->b:Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-direct {p1, p2, p0, p4}, Lcom/perfectcorp/perfectlib/ShadeFinderProduct;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ShadeFinderProduct$Type;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V
    .locals 7

    const-string v0, "recommendationData can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getRecommendedResult] start"

    const/4 v1, 0x3

    const-string v2, "ShadeFinderRecommendationHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;

    if-nez v0, :cond_0

    new-instance p0, Lcr0;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;->a:Lcom/perfectcorp/perfectlib/ShadeFinderData;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;->b:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->FOUNDATION:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->OK:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-direct {v3, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Luv0;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Luv0;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;ZLjava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->z(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "ShadeFinderRecommendationHandler#syncServer"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-direct {v1}, Lcom/perfectcorp/common/utility/EventPublisher;-><init>()V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/i;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/perfectlib/i;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;Landroid/util/Pair;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v3, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/x3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/x3;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    invoke-direct {v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    if-nez v3, :cond_2

    new-instance v4, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-direct {v4, v3, v5, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;)V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    return-object v3
.end method
