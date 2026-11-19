.class abstract Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;
.super Lcom/perfectcorp/perfectlib/AccessoryVtoApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final c:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final d:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public k:Lcom/perfectcorp/perfectlib/ph/utility/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectEffect;->NECKLACE:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const-string p2, "#downloadTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const-string p2, "#applyTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    return-void
.end method

.method public static b(Ljava/util/List;Z)Landroid/util/Pair;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/l;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lq2;

    invoke-direct {p1, v1, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lq2;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)Lcom/perfectcorp/perfectlib/ph/utility/a;
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->d(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    if-ne v2, v4, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->patternGeneral:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$c;->guid:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/e;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->NECKLACE:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/utility/a$a;

    invoke-direct {v4, v2, v0, v3}, Lcom/perfectcorp/perfectlib/ph/utility/a$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    const-string v0, "obbPath can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v4, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->d:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/a;

    invoke-direct {p0, v4}, Lcom/perfectcorp/perfectlib/ph/utility/a;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/a$a;)V

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "No valid accessory VtoSetting"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public static e(ZLcom/perfectcorp/perfectlib/ph/utility/a;)Ljava/util/List;
    .locals 3

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->NECKLACE:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iput-object p1, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->m:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 8

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f()V

    const-string v0, "vtoSettings can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[apply] copiedVtoSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/perfectcorp/perfectlib/k;

    invoke-direct {v1, p0, v0, v3, p1}, Lcom/perfectcorp/perfectlib/k;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/j;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p2, v1}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/j;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p2, v2}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_0
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v5, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v0, "downloadAndApplySkus"

    invoke-direct {v5, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/m;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/m;-><init>(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/n;

    invoke-direct {v0, v1, v7, p1}, Lcom/perfectcorp/perfectlib/n;-><init>(Ljava/lang/Object;II)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/j;

    const/4 v0, 0x6

    invoke-direct {p1, v1, p2, v0}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/j;

    const/4 v2, 0x7

    invoke-direct {v0, v1, p2, v2}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/d;

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/perfectcorp/perfectlib/d;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f()V

    const-string v0, "effectIds can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Lcom/perfectcorp/perfectlib/k;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/perfectcorp/perfectlib/k;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/j;

    invoke-direct {v1, p0, p2, v0}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/j;

    const/4 v2, 0x3

    invoke-direct {v0, p0, p2, v2}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p1

    new-instance v1, Lcom/perfectcorp/perfectlib/d;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/d;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f()V

    const-class v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/perfectcorp/perfectlib/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/perfectlib/j;

    invoke-direct {v3, p0, p1, v2}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/perfectcorp/perfectlib/j;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/perfectcorp/perfectlib/d;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/perfectcorp/perfectlib/d;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract f()V
.end method

.method public final g(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$EffectIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/perfectcorp/perfectlib/g;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;ZI)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/h;

    invoke-direct {v2, p0, p1, v0}, Lcom/perfectcorp/perfectlib/h;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/h;

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v3}, Lcom/perfectcorp/perfectlib/h;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$EffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/perfectcorp/perfectlib/f;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ProductIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->f()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/g;

    invoke-direct {v2, p0, v1, v0}, Lcom/perfectcorp/perfectlib/g;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;ZI)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/e;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/e;

    invoke-direct {v3, p0, p1, v0}, Lcom/perfectcorp/perfectlib/e;-><init>(Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl$ProductIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/perfectcorp/perfectlib/f;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract h()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final i(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final j(Lcom/perfectcorp/perfectlib/ph/utility/a;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Necklace:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->p(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->r(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->s(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
