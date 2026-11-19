.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;,
        Landroidx/work/impl/WorkerWrapper$Resolution;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/impl/WorkerWrapper;",
        "",
        "Landroidx/work/impl/WorkerWrapper$Builder;",
        "builder",
        "<init>",
        "(Landroidx/work/impl/WorkerWrapper$Builder;)V",
        "Resolution",
        "Builder",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/work/impl/model/WorkSpec;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/work/WorkerParameters$RuntimeExtras;

.field public final e:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field public final f:Landroidx/work/Configuration;

.field public final g:Landroidx/work/Clock;

.field public final h:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public final i:Landroidx/work/impl/WorkDatabase;

.field public final j:Landroidx/work/impl/model/WorkSpecDao;

.field public final k:Landroidx/work/impl/model/DependencyDao;

.field public final l:Ljava/util/List;

.field public final m:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->e:Landroidx/work/impl/model/WorkSpec;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->g:Landroid/content/Context;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->h:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->a:Landroidx/work/Configuration;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/Configuration;

    iget-object v1, v1, Landroidx/work/Configuration;->d:Landroidx/work/Clock;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/Clock;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->c:Landroidx/work/impl/foreground/ForegroundProcessor;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->d:Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->y()Landroidx/work/impl/model/DependencyDao;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/DependencyDao;

    iget-object p1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->f:Ljava/util/List;

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->l:Ljava/util/List;

    const-string v1, "Work [ id="

    const-string v2, ", tags={ "

    invoke-static {v1, v0, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, " } ]"

    invoke-static {p1, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->m:Lkotlinx/coroutines/JobImpl;

    return-void
.end method

.method public static final a(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v4, p0

    move-object/from16 v0, p1

    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v6, v4, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v7, v4, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/WorkDatabase;

    iget-object v8, v4, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/Configuration;

    iget-object v2, v4, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    instance-of v3, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    iget v5, v3, Landroidx/work/impl/WorkerWrapper$runWorker$1;->d:I

    const/high16 v9, -0x80000000

    and-int v10, v5, v9

    if-eqz v10, :cond_0

    sub-int/2addr v5, v9

    iput v5, v3, Landroidx/work/impl/WorkerWrapper$runWorker$1;->d:I

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_0
    new-instance v3, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    invoke-direct {v3, v4, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->b:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->d:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v11, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v8, Landroidx/work/Configuration;->n:Landroidx/work/Tracer;

    invoke-interface {v0}, Landroidx/work/Tracer;->isEnabled()Z

    move-result v0

    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    iget-object v13, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v14, v8, Landroidx/work/Configuration;->n:Landroidx/work/Tracer;

    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result v15

    invoke-interface {v14, v15, v3}, Landroidx/work/Tracer;->d(ILjava/lang/String;)V

    :cond_3
    new-instance v14, Lp71;

    const/4 v15, 0x0

    invoke-direct {v14, v4, v15}, Lp71;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lxn0;

    const/16 v12, 0x12

    invoke-direct {v11, v14, v12}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v11}, Landroidx/room/RoomDatabase;->v(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v15, v1, v2}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_4
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->b()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    :goto_2
    move-object/from16 v18, v5

    goto :goto_4

    :cond_5
    iget-object v11, v8, Landroidx/work/Configuration;->f:Landroidx/work/InputMergerFactory;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v5}, Landroidx/work/InputMergerFactory;->a(Ljava/lang/String;)V

    sget v11, Landroidx/work/InputMergerKt;->a:I

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/work/InputMerger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v11

    sget v14, Landroidx/work/InputMergerKt;->a:I

    const-string v14, "Trouble instantiating "

    invoke-virtual {v14, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_6

    sget v0, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    const/4 v1, 0x1

    const/4 v14, 0x0

    invoke-direct {v10, v14, v1, v14}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_6

    :cond_6
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    iget-object v14, v4, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v14, v1}, Landroidx/work/impl/model/WorkSpecDao;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroidx/work/InputMerger;->a(Ljava/util/ArrayList;)Landroidx/work/Data;

    move-result-object v5

    goto :goto_2

    :goto_4
    new-instance v16, Landroidx/work/WorkerParameters;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v17

    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->l:Ljava/util/List;

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Collection;

    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget v5, v2, Landroidx/work/impl/model/WorkSpec;->k:I

    iget v2, v2, Landroidx/work/impl/model/WorkSpec;->t:I

    iget-object v11, v8, Landroidx/work/Configuration;->a:Ljava/util/concurrent/Executor;

    iget-object v14, v8, Landroidx/work/Configuration;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v15, v4, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v12, v8, Landroidx/work/Configuration;->e:Landroidx/work/WorkerFactory;

    move/from16 v29, v0

    new-instance v0, Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-direct {v0, v7, v6}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object/from16 v27, v0

    new-instance v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    move-object/from16 v20, v1

    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/impl/foreground/ForegroundProcessor;

    invoke-direct {v0, v7, v1, v6}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object/from16 v28, v0

    move/from16 v22, v2

    move/from16 v21, v5

    move-object/from16 v23, v11

    move-object/from16 v26, v12

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    invoke-direct/range {v16 .. v28}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Lkotlin/coroutines/CoroutineContext;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V

    move-object/from16 v11, v16

    :try_start_2
    iget-object v0, v8, Landroidx/work/Configuration;->e:Landroidx/work/WorkerFactory;

    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v13, v11}, Landroidx/work/WorkerFactory;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v12, 0x1

    iput-boolean v12, v1, Landroidx/work/ListenableWorker;->d:Z

    invoke-interface {v9}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v2, Lkotlinx/coroutines/Job$Key;->b:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v0

    check-cast v13, Lkotlinx/coroutines/Job;

    new-instance v0, Ls0;

    const/16 v5, 0xe

    move/from16 v2, v29

    invoke-direct/range {v0 .. v5}, Ls0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v13, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    new-instance v0, Lp71;

    invoke-direct {v0, v4, v12}, Lp71;-><init>(Landroidx/work/impl/WorkerWrapper;I)V

    new-instance v2, Lxn0;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v2}, Landroidx/room/RoomDatabase;->v(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v0, v12, v14}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-interface {v13}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v10, v0, v12, v14}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_8
    iget-object v0, v11, Landroidx/work/WorkerParameters;->g:Landroidx/work/ForegroundUpdater;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlinx/coroutines/ExecutorsKt;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    :try_start_3
    new-instance v3, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    invoke-direct {v3, v4, v1, v0, v14}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    iput v1, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->d:I

    invoke-static {v2, v3, v9}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    sget v0, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    const/4 v1, 0x1

    const/4 v14, 0x0

    invoke-direct {v10, v14, v1, v14}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :catch_1
    move-exception v0

    sget v1, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :catchall_1
    sget v0, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    const/4 v1, 0x1

    const/4 v14, 0x0

    invoke-direct {v10, v14, v1, v14}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    return-object v10
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/Clock;

    invoke-interface {v0}, Landroidx/work/Clock;->a()J

    move-result-wide v3

    invoke-interface {v1, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->s(JLjava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    invoke-interface {v1, p0, v2}, Landroidx/work/impl/model/WorkSpecDao;->f(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-interface {v1, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->c(JLjava/lang/String;)I

    invoke-interface {v1, p1, v2}, Landroidx/work/impl/model/WorkSpecDao;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/Clock;

    invoke-interface {v0}, Landroidx/work/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->s(JLjava/lang/String;)V

    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v2, v3, v0}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->x(Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    invoke-interface {v2, p0, v3}, Landroidx/work/impl/model/WorkSpecDao;->f(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->b(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-interface {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->c(JLjava/lang/String;)I

    return-void
.end method

.method public final d(Landroidx/work/ListenableWorker$Result;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/WorkSpecDao;->j(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v4

    sget-object v5, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-interface {v3, v2, v4}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    :cond_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/DependencyDao;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->a:Landroidx/work/Data;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    invoke-interface {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao;->f(ILjava/lang/String;)V

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/model/WorkSpecDao;->t(Ljava/lang/String;Landroidx/work/Data;)V

    return-void
.end method
