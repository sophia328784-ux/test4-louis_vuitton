.class public final synthetic Landroidx/work/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkerWrapper$Resolution;

.field public final synthetic c:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper$Resolution;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/b;->b:Landroidx/work/impl/WorkerWrapper$Resolution;

    iput-object p2, p0, Landroidx/work/impl/b;->c:Landroidx/work/impl/WorkerWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/b;->c:Landroidx/work/impl/WorkerWrapper;

    iget-object v1, v0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    iget-object v2, v0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, v0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    iget-object p0, p0, Landroidx/work/impl/b;->b:Landroidx/work/impl/WorkerWrapper$Resolution;

    instance-of v4, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->a:Landroidx/work/ListenableWorker$Result;

    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkSpecDao;->j(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v4

    iget-object v7, v0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->C()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v7

    invoke-interface {v7, v1}, Landroidx/work/impl/model/WorkProgressDao;->a(Ljava/lang/String;)V

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v4, v7, :cond_8

    instance-of v4, p0, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v4, :cond_4

    sget v4, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    :cond_1
    :goto_0
    move v5, v6

    goto/16 :goto_2

    :cond_2
    sget-object v3, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    invoke-interface {v2, v1, v3}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    check-cast p0, Landroidx/work/ListenableWorker$Result$Success;

    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Success;->a:Landroidx/work/Data;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, p0}, Landroidx/work/impl/model/WorkSpecDao;->t(Ljava/lang/String;Landroidx/work/Data;)V

    iget-object p0, v0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/Clock;

    invoke-interface {p0}, Landroidx/work/Clock;->a()J

    move-result-wide v3

    iget-object p0, v0, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {p0, v1}, Landroidx/work/impl/model/DependencyDao;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkSpecDao;->j(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v5

    sget-object v7, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v5, v7, :cond_3

    invoke-interface {p0, v1}, Landroidx/work/impl/model/DependencyDao;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v2, v1, v5}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    invoke-interface {v2, v3, v4, v1}, Landroidx/work/impl/model/WorkSpecDao;->s(JLjava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v1, p0, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz v1, :cond_5

    sget p0, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, -0x100

    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->b(I)V

    goto :goto_2

    :cond_5
    sget v1, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    goto :goto_0

    :cond_6
    if-nez p0, :cond_7

    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    :cond_7
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->d(Landroidx/work/ListenableWorker$Result;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v4}, Landroidx/work/WorkInfo$State;->a()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, -0x200

    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->b(I)V

    :goto_2
    move v6, v5

    goto/16 :goto_3

    :cond_9
    instance-of v4, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    if-eqz v4, :cond_b

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->a:Landroidx/work/ListenableWorker$Result;

    sget v1, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    goto :goto_3

    :cond_a
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->d(Landroidx/work/ListenableWorker$Result;)V

    goto :goto_3

    :cond_b
    instance-of v4, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    if-eqz v4, :cond_e

    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    iget p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;->a:I

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget v1, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->b(I)V

    goto :goto_2

    :cond_c
    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkSpecDao;->j(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->a()Z

    move-result v3

    if-nez v3, :cond_d

    sget v3, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v2, v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->h(Ljava/lang/String;Landroidx/work/WorkInfo$State;)I

    invoke-interface {v2, p0, v1}, Landroidx/work/impl/model/WorkSpecDao;->v(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-interface {v2, v3, v4, v1}, Landroidx/work/impl/model/WorkSpecDao;->c(JLjava/lang/String;)I

    goto :goto_2

    :cond_d
    sget p0, Landroidx/work/impl/WorkerWrapperKt;->a:I

    invoke-static {}, Landroidx/work/Logger;->a()Landroidx/work/Logger;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
