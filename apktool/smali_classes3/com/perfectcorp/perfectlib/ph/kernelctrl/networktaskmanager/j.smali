.class public abstract Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b:Ljava/util/List;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v2, "IdSystemDataHelperInsertDBThread"

    iput-object v2, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    const/16 v2, 0xa

    iput v2, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->d:I

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->c:Z

    invoke-virtual {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;FLcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 5

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const-string v2, "[#"

    const-string v3, "] #getIdSystemData(); ids.size()="

    invoke-static {v1, v2, v3}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "IdSystemDataHelper"

    invoke-static {p0, v2, v3, v4}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->e(ILjava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {p1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>()V

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v4, 0x1e

    invoke-static {v4, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v4, Lhw0;

    invoke-direct {v4, v1, p5, v3}, Lhw0;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->b:I

    iput-object p0, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->c:Ljava/util/List;

    iput-object p5, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p6, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/l;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p5, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p6, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput v1, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->c:I

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->d:Ljava/util/List;

    iput-object p1, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->e:Ljava/lang/String;

    iput-object p2, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->f:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->h:Ljava/lang/String;

    iput p4, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/k;->i:F

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p5, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    instance-of p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/b;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/b;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/b;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/e;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p1
.end method

.method public static b(Ljava/lang/String;Ljava/util/HashMap;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lf91;

    invoke-direct {v1, p3, p0, p2, p4}, Lf91;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p2, Lhw0;

    const/4 p3, 0x4

    invoke-direct {p2, p4, p1, p3}, Lhw0;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/Collection;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const-string v1, "[#"

    const-string v2, "] #getDownloadIDSystemSingle(); downloadComponentMap.size()="

    invoke-static {v0, v1, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "IdSystemDataHelper"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lr81;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lr81;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lf91;

    invoke-direct {v1, v0, p1, p2, p3}, Lf91;-><init>(ILjava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapMaybe(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lms;

    const/4 p2, 0x4

    invoke-direct {p1, v0, p2}, Lms;-><init>(II)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p2
.end method

.method public static d(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;
    .locals 7

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    sget v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    sget-object v5, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v1, ""

    move-object v6, p0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a(Ljava/util/List;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;FLcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->toSingle()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p2, Lt7;

    const/16 v0, 0x17

    invoke-direct {p2, p1, v0}, Lt7;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    return-object p0
.end method

.method public static e(ILjava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/a;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v3, p2, v5, v6}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p2, "] Filter out downloaded IDs; ids.size()="

    const-string v2, "[#"

    invoke-static {p0, v2, p2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", onlineIds.size()="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string v3, "IdSystemDataHelper"

    invoke-static {p2, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-instance v4, Lys;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Lys;-><init>(ILjava/util/ArrayList;)V

    invoke-static {p1, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] Insert downloaded IDs completed. downloadedIdSystemInfos.size()="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static f(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/d;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->b:Ljava/util/List;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->d(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
