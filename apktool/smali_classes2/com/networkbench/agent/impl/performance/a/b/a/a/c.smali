.class public Lcom/networkbench/agent/impl/performance/a/b/a/a/c;
.super Lcom/networkbench/agent/impl/performance/a/b/a/a/a;
.source "SourceFile"


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;"
        }
    .end annotation
.end field

.field f:J

.field g:I

.field h:Ljava/lang/String;

.field private i:Lcom/networkbench/agent/impl/performance/a/a/b;

.field private final j:Lcom/networkbench/agent/impl/performance/a/b/c/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f:J

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;JJ)V

    iput-object v0, v1, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->j:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)Z
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->h()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)Lcom/networkbench/agent/impl/performance/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f:J

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget v2, v2, Lcom/networkbench/agent/impl/performance/a/a/b;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->a()V

    .line 54
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e()V

    return-void
.end method

.method public final a(Lcom/networkbench/agent/impl/performance/a/a/b;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->a(Lcom/networkbench/agent/impl/performance/a/a/b;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f:J

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->j:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ThreadDetectState startexceptionstate run----> Period :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v9, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v9, v6

    if-gez v8, :cond_0

    move-wide v9, v6

    :cond_0
    add-double/2addr v4, v6

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "report exception data, exception thread size is: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v6, v1

    div-double v7, v4, v6

    iget-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget-wide v4, v1, Lcom/networkbench/agent/impl/performance/a/a/b;->d:D

    cmpl-double v1, v7, v4

    if-gez v1, :cond_2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v7

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->a()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v4, v11

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    cmpl-double v1, v4, v11

    if-ltz v1, :cond_4

    :cond_2
    const-string v1, "create ExceptionCpuData..."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d()V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->a()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v1, v4, v11

    if-lez v1, :cond_3

    long-to-double v1, v4

    div-double v3, v7, v1

    div-double v1, v9, v1

    move-wide v13, v1

    move-wide v11, v3

    goto :goto_1

    :cond_3
    move-wide v11, v2

    move-wide v13, v11

    :goto_1
    iget-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/a/c;->d()Lcom/networkbench/agent/impl/performance/a/b;

    move-result-object v1

    new-instance v6, Lcom/networkbench/agent/impl/performance/a/c/b;

    iget-object v15, v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v6 .. v16}, Lcom/networkbench/agent/impl/performance/a/c/b;-><init>(DDDDLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/networkbench/agent/impl/performance/a/b;->a(Lcom/networkbench/agent/impl/performance/a/c/b;)V

    :cond_4
    return-void
.end method

.method public c()Lcom/networkbench/agent/impl/performance/a/b/a/c;
    .locals 0

    .line 3
    sget-object p0, Lcom/networkbench/agent/impl/performance/a/b/a/c;->a:Lcom/networkbench/agent/impl/performance/a/b/a/c;

    return-object p0
.end method

.method public final d()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/a/e/h;->a(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/a/e/h;->a(Ljava/util/List;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget-wide v3, v3, Lcom/networkbench/agent/impl/performance/a/a/b;->e:D

    invoke-static {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/performance/a/e/h;->a(ILjava/util/List;D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v3

    new-array v3, v4, [Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/networkbench/agent/impl/performance/a/e/f;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lcom/networkbench/agent/impl/performance/a/e/f;-><init>(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "collectThreadExceptionData threadArr length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/performance/a/c/g;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "collectThreadExceptionData for each  task Thread--->threadName: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "collectThreadExceptionData skip current thread: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v8, v4, :cond_3

    aget-object v9, v3, v8

    if-eqz v9, :cond_3

    iget-object v10, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xf

    if-le v10, v11, :cond_6

    iget-object v10, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "collectThreadExceptionData stackTraceElements is empty , continue"

    invoke-static {v9}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StackTraceElement;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget v10, v10, Lcom/networkbench/agent/impl/performance/a/a/b;->c:I

    if-lt v9, v10, :cond_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->f:Ljava/lang/String;

    iget-wide v8, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->d:D

    iget-object v10, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->i:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget-wide v10, v10, Lcom/networkbench/agent/impl/performance/a/a/b;->e:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.2f"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/networkbench/agent/impl/performance/a/c/g;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/networkbench/agent/impl/performance/a/e/f;->a(Lcom/networkbench/agent/impl/performance/a/c/g;)Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/performance/a/e/f;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collectThreadExceptionData limitArrayList size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/a;->b:Z

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->j:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    return-void
.end method

.method public final f()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method
