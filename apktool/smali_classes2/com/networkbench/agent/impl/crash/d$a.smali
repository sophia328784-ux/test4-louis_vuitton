.class Lcom/networkbench/agent/impl/crash/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/crash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/networkbench/agent/impl/crash/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/crash/d$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/d$a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/crash/d$a;->a:Lcom/networkbench/agent/impl/crash/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/crash/d$a;
    .locals 1

    .line 39
    sget-object v0, Lcom/networkbench/agent/impl/crash/d$a;->a:Lcom/networkbench/agent/impl/crash/d$a;

    return-object v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute user UncaughtExceptionHandler,handler class is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->g()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    sget-boolean v0, Lcom/networkbench/agent/impl/crash/d;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object p0

    const-string p1, "crash is reporting,stop report new crash"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v1

    const-string v2, "init failed ,set feature 0"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v1

    const-string v2, "process error"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/d$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkSwitchOfCrash error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/crash/i;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/crash/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/networkbench/agent/impl/crash/d;->b:Z

    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/b/b;->a()Lcom/networkbench/agent/impl/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/b/b;->b()Lcom/networkbench/agent/impl/b/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/networkbench/agent/impl/b/g;->e()V

    sget-object v4, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    sget-object v7, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/networkbench/agent/impl/crash/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v9

    const-string v10, "notify crash"

    invoke-interface {v9, v10}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-wide/16 v9, 0x3e8

    div-long v9, v4, v9

    invoke-interface {v8, p1, p2, v9, v10}, Lcom/networkbench/agent/impl/crash/f;->notifyCrash(Ljava/lang/Thread;Ljava/lang/Throwable;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v9

    :try_start_5
    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to process an uncaught exception by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8, v9}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v8

    sget-object v9, Lcom/networkbench/agent/impl/harvest/b/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2

    :cond_3
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_6

    :cond_4
    :goto_3
    :try_start_8
    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->saveSDKData()V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    :goto_4
    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v1

    const-string v2, "Failed to saving a crash."

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/d$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    :try_start_9
    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v1

    const-string v4, "Failed to process a crash."

    invoke-interface {v1, v4, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->saveSDKData()V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    goto :goto_4

    :goto_7
    return-void

    :catchall_8
    move-exception v0

    :try_start_b
    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->saveSDKData()V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v1

    invoke-static {}, Lcom/networkbench/agent/impl/crash/d;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v2

    const-string v3, "Failed to saving a crash."

    invoke-interface {v2, v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/d$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v0
.end method
