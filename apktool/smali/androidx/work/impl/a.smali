.class public final synthetic Landroidx/work/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkLauncherImpl;

.field public final synthetic c:Landroidx/work/impl/StartStopToken;

.field public final synthetic d:Landroidx/work/WorkerParameters$RuntimeExtras;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/a;->b:Landroidx/work/impl/WorkLauncherImpl;

    iput-object p2, p0, Landroidx/work/impl/a;->c:Landroidx/work/impl/StartStopToken;

    iput-object p3, p0, Landroidx/work/impl/a;->d:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Landroidx/work/impl/a;->b:Landroidx/work/impl/WorkLauncherImpl;

    iget-object v1, p0, Landroidx/work/impl/a;->c:Landroidx/work/impl/StartStopToken;

    iget-object p0, p0, Landroidx/work/impl/a;->d:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v6, v0, Landroidx/work/impl/WorkLauncherImpl;->a:Landroidx/work/impl/Processor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/work/impl/StartStopToken;->a:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v10, v0, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v6, Landroidx/work/impl/Processor;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Lh7;

    const/4 v4, 0x3

    invoke-direct {v3, v6, v9, v10, v4}, Lh7;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lxn0;

    const/16 v5, 0x12

    invoke-direct {v4, v3, v5}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroidx/room/RoomDatabase;->v(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/work/impl/model/WorkSpec;

    const/16 v11, 0x11

    if-nez v8, :cond_0

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    sget v1, Landroidx/work/impl/Processor;->l:I

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v6, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Laa0;

    invoke-direct {v1, v6, v0, v11}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v12, v6, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v2, v6, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v10}, Landroidx/work/impl/Processor;->d(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    iget-object p0, v6, Landroidx/work/impl/Processor;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/StartStopToken;

    iget-object v2, v2, Landroidx/work/impl/StartStopToken;->a:Landroidx/work/impl/model/WorkGenerationalId;

    iget v2, v2, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    iget v3, v0, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    if-ne v2, v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    sget v1, Landroidx/work/impl/Processor;->l:I

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_2
    iget-object p0, v6, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Laa0;

    invoke-direct {v1, v6, v0, v11}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    monitor-exit v12

    return-void

    :cond_3
    iget v2, v8, Landroidx/work/impl/model/WorkSpec;->t:I

    iget v3, v0, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    if-eq v2, v3, :cond_4

    iget-object p0, v6, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Laa0;

    invoke-direct {v1, v6, v0, v11}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v12

    return-void

    :cond_4
    new-instance v2, Landroidx/work/impl/WorkerWrapper$Builder;

    iget-object v3, v6, Landroidx/work/impl/Processor;->b:Landroid/content/Context;

    iget-object v4, v6, Landroidx/work/impl/Processor;->c:Landroidx/work/Configuration;

    iget-object v5, v6, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v7, v6, Landroidx/work/impl/Processor;->e:Landroidx/work/impl/WorkDatabase;

    invoke-direct/range {v2 .. v9}, Landroidx/work/impl/WorkerWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V

    if-eqz p0, :cond_5

    iput-object p0, v2, Landroidx/work/impl/WorkerWrapper$Builder;->h:Landroidx/work/WorkerParameters$RuntimeExtras;

    :cond_5
    new-instance p0, Landroidx/work/impl/WorkerWrapper;

    invoke-direct {p0, v2}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$Builder;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/WorkerWrapper$launch$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3}, Landroidx/work/ListenableFutureKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lb5;

    invoke-direct {v3, v6, v2, p0, v11}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v6, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v4}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, v6, Landroidx/work/impl/Processor;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Landroidx/work/impl/Processor;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v10, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    sget v1, Landroidx/work/impl/Processor;->l:I

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
