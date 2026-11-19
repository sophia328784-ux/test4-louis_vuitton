.class public Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ALTERNATEPERIOD:I = 0x7530

.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static final g:Ljava/lang/String; = "InversionScreen#"

.field private static m:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

.field private static final n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:J

.field private d:J

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Thread;

.field private final h:I

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/background/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private final k:Ljava/lang/Object;

.field private l:Lcom/networkbench/agent/impl/n/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->n:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x7530

    const/4 v2, 0x5

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;-><init>(IILjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(IILjava/util/concurrent/TimeUnit;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->b:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    iput-wide v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->d:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->e:Ljava/lang/Object;

    new-instance v1, Lcom/networkbench/agent/impl/m/c;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/m/c;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->f:Ljava/lang/Thread;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->k:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$1;-><init>(Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;)V

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput p4, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->h:I

    int-to-long v4, p1

    int-to-long v6, p2

    move-object v3, p0

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->notifyApplicationInBackground()V

    return-void
.end method

.method private addFragmentInfo()V
    .locals 2

    sget-object p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->n:Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/n/g;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/n/h;->a(Lcom/networkbench/agent/impl/n/g;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->n:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSFragmentSession;->getFragmentPageSpans()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    return-void
.end method

.method private declared-synchronized addPageSpanStart(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUser_action_enabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "useraction  addPageSpanStart gather begin!!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/n/g;->b(J)V

    new-instance v0, Lcom/networkbench/agent/impl/n/g;

    iget-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/n/g;-><init>(Lcom/networkbench/agent/impl/n/g;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/n/h;->a(Lcom/networkbench/agent/impl/n/g;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->addFragmentInfo()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/g;->e()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/n/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/n/g;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/n/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/n/g;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized addPageSpanStop()V
    .locals 6

    const-string v0, "addPageSpanStop error!"

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUser_action_enabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "Useraction addPageSpanStop gather  begin !!"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/n/g;->b(J)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvest;->mSessionInfo:Lcom/networkbench/agent/impl/n/h;

    iget-object v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/n/h;->a(Lcom/networkbench/agent/impl/n/g;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->addFragmentInfo()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->l:Lcom/networkbench/agent/impl/n/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private executePluginLogicOnBackground()V
    .locals 1

    sget-boolean p0, Lcom/networkbench/agent/impl/plugin/f/h;->c:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/plugin/f/g;

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->c:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/g;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    :cond_0
    return-void
.end method

.method private executePluginLogicOnForeground()V
    .locals 1

    sget-boolean p0, Lcom/networkbench/agent/impl/plugin/f/h;->d:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/plugin/f/g;

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->c:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/g;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->m:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->m:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->m:Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    return-object v0
.end method

.method public static getPageSpanStack()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->n:Ljava/util/Collection;

    return-object v0
.end method

.method private getSnoozeTime()J
    .locals 6

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->d:J

    sub-long/2addr v2, v4

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-wide v2

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method private notifyApplicationInBackground()V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->addPageSpanStop()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->setApplicationBackgrounded(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/background/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/background/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/background/b;

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/background/b;->b(Lcom/networkbench/agent/impl/background/a;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyApplicationInForeground()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/networkbench/agent/impl/background/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/background/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/background/b;

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/background/b;->a(Lcom/networkbench/agent/impl/background/a;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setFeatureFunction()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/b;->b(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->s()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, "0"

    if-ne v0, p0, :cond_1

    new-instance p0, Lcom/networkbench/agent/impl/data/d/d;

    const-string v0, "ApplicationInForeground"

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/d/b;->b(Lcom/networkbench/agent/impl/data/d/d;)V

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "vertical"

    goto :goto_0

    :cond_2
    const-string p0, "horizontal"

    :goto_0
    new-instance v0, Lcom/networkbench/agent/impl/data/d/d;

    const-string v4, "InversionScreen#"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/d;)V

    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/crash/b;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/r;->g(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    return-void
.end method

.method public addApplicationStateListener(Lcom/networkbench/agent/impl/background/b;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    return-wide v0
.end method

.method public isForegrounded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z

    return p0
.end method

.method public onActivityStartMonitor(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "onActivityStartMonitor cont :  "

    const/4 v1, 0x0

    :try_start_0
    sput-object p1, Lcom/networkbench/agent/impl/harvest/Harvest;->currentActivity:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->addPageSpanStart(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v3, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->d:J

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->b:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ApplicationInForeground"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v6}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v3

    new-instance v5, Lcom/networkbench/agent/impl/session/Event;

    const-string v7, "applicationWillEnterForeground"

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v4, v6, v8}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->executePluginLogicOnForeground()V

    :cond_1
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->b:Z

    move v1, v4

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->notifyApplicationInForeground()V

    iput-boolean v4, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z

    monitor-exit p1

    return v4

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->q(Ljava/lang/String;)V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :goto_2
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    return v1
.end method

.method public onActivityStopMonitor(Ljava/lang/String;)Z
    .locals 11

    const-string p1, "onActivityStopMonitor  count : "

    const-string v0, "  count : "

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v5, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->e:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-wide v6, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v6, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/b/b;->a()Lcom/networkbench/agent/impl/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/b/b;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_4
    sget-object v6, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v7, "anrtracer cancel failed"

    invoke-interface {v6, v7}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v6, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v7, Lcom/networkbench/agent/impl/data/type/f$a;->f:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ApplicationInBackground"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v8}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v6, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v6

    new-instance v7, Lcom/networkbench/agent/impl/session/Event;

    const-string v9, "applicationDidEnterBackground"

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v1, v8, v10}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->clearCurrentFragmentName()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->executePluginLogicOnBackground()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->d:J

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->saveSDKData()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->q(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->setFeatureFunction()V

    :cond_2
    iget-wide v6, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    iput-wide v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->q(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :goto_3
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    :goto_4
    iget-wide p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->c:J

    cmp-long p0, p0, v2

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    return v1
.end method

.method public removeApplicationStateListener(Lcom/networkbench/agent/impl/background/b;)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 6

    const-string v0, "NBSApplicationStateMonitor run har an error : "

    iget-object v1, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getSnoozeTime()J

    move-result-wide v2

    iget v4, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->h:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v2

    new-instance v3, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$2;

    invoke-direct {v3, p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor$2;-><init>(Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;)V

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public saveSDKData()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->f:Ljava/lang/Thread;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
