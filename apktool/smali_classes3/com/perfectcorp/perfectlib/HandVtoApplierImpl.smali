.class abstract Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;,
        Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;
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

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const-string p2, "#downloadTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const-string p2, "#applyTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    return-void
.end method

.method public static a(Ljava/util/List;)Landroid/util/Pair;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/l;

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v1, Lq2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v1, Lq2;

    invoke-direct {v1, v2, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0
.end method

.method public static e(Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/ph/utility/b;
    .locals 10

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-static {v1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v8, "^"

    if-eqz v1, :cond_1

    iget-object v1, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v4, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v5, v6, Lcom/perfectcorp/perfectlib/ph/utility/b;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;

    invoke-direct {p0, p1, v1, v2}, Lcom/perfectcorp/perfectlib/ph/utility/b$a;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "skuSetId can\'t be null"

    invoke-static {v4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->b:Ljava/lang/String;

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "lookGuid can\'t be null"

    invoke-static {v5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/ph/utility/b$a;->c:Ljava/lang/String;

    :cond_7
    new-instance p1, Lcom/perfectcorp/perfectlib/ph/utility/b;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/utility/b;-><init>(Lcom/perfectcorp/perfectlib/ph/utility/b$a;)V

    return-object p1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/perfectcorp/perfectlib/ph/utility/b;)Lcom/perfectcorp/perfectlib/EffectId;
.end method

.method public final c(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;
    .locals 9

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-string v0, "vtoSettings can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[apply] copiedVtoSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    invoke-static {v7, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    if-ne v4, v0, :cond_0

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    new-instance v0, Lcom/perfectcorp/perfectlib/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/perfectcorp/perfectlib/o0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/g0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v5, v0}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/g0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v5, v1}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v1, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_0
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v6, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v0, "downloadAndApplySkus"

    invoke-direct {v6, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "[downloadAndApplySkus] copiedVtoSettings="

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v0, :cond_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/l;

    invoke-direct {v1, p2, v2}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v8

    new-instance v0, Lcom/perfectcorp/perfectlib/n0;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/n0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/m0;

    invoke-direct {p0, v1, p1, v6, p2}, Lcom/perfectcorp/perfectlib/m0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v8, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    :goto_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    return-object v7

    :cond_1
    move-object v1, p0

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    const/4 p2, 0x1

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/p0;

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/p0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    move-object v6, v5

    new-instance p2, Lcom/perfectcorp/perfectlib/m0;

    invoke-direct {p2, v1, p1, v6, v8}, Lcom/perfectcorp/perfectlib/m0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object v6, v5

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/f0;

    invoke-direct {p1, v1, p0, v6, p2}, Lcom/perfectcorp/perfectlib/f0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final d(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;
    .locals 9

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-string v0, "effectIds can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {v0, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId;->getSkuSetGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "N/A"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId;->getProductGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setProductGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId;->getSkuGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->build()Lcom/perfectcorp/perfectlib/VtoSetting;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoSetting;->builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/EffectId;->getSkuSetGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->setSkuSetGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[apply] copiedVtoSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    if-ne v4, v0, :cond_2

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    new-instance v0, Lcom/perfectcorp/perfectlib/j0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/perfectcorp/perfectlib/j0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/g0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, v5, p3}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance p3, Lcom/perfectcorp/perfectlib/g0;

    invoke-direct {p3, p0, v5, v2}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_2
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v6, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "downloadAndApplySkus"

    invoke-direct {v6, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[downloadAndApplySkus] copiedVtoSettings="

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v1, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    sget-object v7, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v7, Lcom/perfectcorp/perfectlib/l;

    invoke-direct {v7, p3, v2}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p3

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/l0;

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/perfectcorp/perfectlib/l0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/ArrayList;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/m0;

    const/4 p2, 0x0

    invoke-direct {p0, v1, p1, v6, p2}, Lcom/perfectcorp/perfectlib/m0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    :goto_3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    return-object v7

    :cond_3
    move-object v1, p0

    move-object v8, p2

    move v2, v3

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v0

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-static {p1, p3, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/n0;

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/n0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;IILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;)V

    move-object v7, v6

    move-object v6, v5

    new-instance p2, Lcom/perfectcorp/perfectlib/m0;

    invoke-direct {p2, v1, p1, v6, p3}, Lcom/perfectcorp/perfectlib/m0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object v6, v5

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/f0;

    invoke-direct {p1, v1, p0, v6, p3}, Lcom/perfectcorp/perfectlib/f0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method public abstract f(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public final g(Ljava/util/ArrayList;Z)Ljava/util/List;
    .locals 5

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b(Lcom/perfectcorp/perfectlib/ph/utility/b;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public abstract h(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract i()V
.end method

.method public final j(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final k(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)V
    .locals 9

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[downloadAndApplySkusInternal] Start download. vtoSettings="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Laz;

    const/16 v4, 0x15

    invoke-direct {v2, v4}, Laz;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v8

    new-instance v0, Lcom/perfectcorp/perfectlib/r0;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p4

    move-object v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/r0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {v8, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/s0;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/g0;

    const/16 v3, 0x8

    invoke-direct {v2, p0, p5, v3}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/g0;

    const/16 v4, 0x9

    invoke-direct {v3, p0, p5, v4}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v4, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final l(IILjava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/List;)V
    .locals 9

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[downloadAndApplySkusInternal] Start download. vtoSettings="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Laz;

    const/16 v4, 0x16

    invoke-direct {v2, v4}, Laz;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v8

    new-instance v0, Lcom/perfectcorp/perfectlib/r0;

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p4

    move-object v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/r0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {v8, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v6

    new-instance v0, Lcom/perfectcorp/perfectlib/t0;

    const/4 v2, 0x0

    move v1, p2

    move-object/from16 v5, p8

    move-object v4, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/t0;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/perfectlib/g0;

    const/16 v3, 0xa

    invoke-direct {v2, p0, p5, v3}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/g0;

    const/16 v4, 0xb

    invoke-direct {v3, p0, p5, v4}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v4, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final m(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Lcom/perfectcorp/perfectlib/k0;

    invoke-direct {v2, p0, v1, v0}, Lcom/perfectcorp/perfectlib/k0;-><init>(Ljava/lang/Object;II)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/g0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/g0;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/perfectcorp/perfectlib/f0;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/perfectcorp/perfectlib/f0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-static {v2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/h0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/perfectlib/h0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/x0;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/perfectcorp/perfectlib/x0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/x0;

    invoke-direct {v3, p0, p1, v2}, Lcom/perfectcorp/perfectlib/x0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$EffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/h0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/perfectlib/h0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/i0;

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/i0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/i0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/i0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ProductIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract q()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract r(Ljava/util/List;)Ljava/util/ArrayList;
.end method

.method public final s(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final t(Lcom/perfectcorp/perfectlib/ph/utility/b;)V
    .locals 3

    const-string v0, "handParameter can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->eventFeature:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->d:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v1, v2, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->g(Lcom/perfectcorp/perfectlib/ph/utility/b;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/utility/b;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->q(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p0, v2, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    return-void
.end method

.method public final u(Ljava/util/List;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i()V

    const-string v0, "effectIds can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/perfectcorp/perfectlib/o0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/o0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/g0;

    invoke-direct {v1, p0, p2, v2}, Lcom/perfectcorp/perfectlib/g0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/perfectcorp/perfectlib/f0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/perfectcorp/perfectlib/f0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/HandVtoApplierImpl$ApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->p(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v4}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->p(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->f(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public abstract w()V
.end method
