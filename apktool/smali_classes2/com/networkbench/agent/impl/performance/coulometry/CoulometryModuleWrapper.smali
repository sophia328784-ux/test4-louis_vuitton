.class public Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/f/d;


# static fields
.field private static f:Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;


# instance fields
.field volatile a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

.field b:Lcom/networkbench/agent/impl/performance/b;

.field c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

.field d:Lcom/networkbench/agent/impl/harvest/a/a/b;

.field e:Lcom/networkbench/agent/impl/performance/coulometry/b/c;

.field private g:I

.field private h:J

.field private i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string p0, ""

    return-object p0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->formatInfo()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->reset()V

    .line 89
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->b()V

    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/performance/coulometry/c/g;Lcom/networkbench/agent/impl/performance/coulometry/c/g;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V
    .locals 4

    .line 77
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    const-string v1, "getService"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 79
    const-string v2, "sCache"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 81
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V

    .line 82
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V

    .line 83
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CoulometryModuleWrapper hookManager error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Lcom/networkbench/agent/impl/performance/coulometry/c/g;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p4}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->d()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-class p2, Landroid/os/IBinder;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/c;

    invoke-direct {v1, p0, p4}, Lcom/networkbench/agent/impl/performance/coulometry/c/c;-><init>(Landroid/os/IBinder;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V

    invoke-static {p1, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CoulometryModuleWrapper extracted error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->f:Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->f:Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->f:Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearCount()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->b()V

    :cond_0
    return-void
.end method

.method public declared-synchronized getEvent(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    if-nez v0, :cond_0

    const-string v0, "CoulometryModuleWrapper getEvent eventManager is null"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getModuleData()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    const-string v1, ""

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->b:Lcom/networkbench/agent/impl/performance/b;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->processForgetData(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->h:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->g:I

    add-int/lit8 v0, v0, -0x5

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "CoulometryModuleWrapper get otelMetricData  interval is not enough"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "applicationBackgrounded :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->e:Lcom/networkbench/agent/impl/performance/coulometry/b/c;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->a()Lcom/networkbench/agent/impl/performance/coulometry/b;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->b:Lcom/networkbench/agent/impl/performance/b;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Lcom/networkbench/agent/impl/performance/b;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->b:Lcom/networkbench/agent/impl/performance/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/b;->formatInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->clearCount()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->b:Lcom/networkbench/agent/impl/performance/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/b;->reset()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->h:J

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    invoke-static {v1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "CoulometryModuleWrapper not initModule !"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-object v1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    const-string p0, "nbs_module_coulometry"

    return-object p0
.end method

.method public harvestRestart()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->e:Lcom/networkbench/agent/impl/performance/coulometry/b/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->b()V

    :cond_0
    return-void
.end method

.method public harvestStop()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->e:Lcom/networkbench/agent/impl/performance/coulometry/b/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/c;->c()V

    :cond_0
    return-void
.end method

.method public initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V
    .locals 2

    :try_start_0
    const-string p1, "CoulometryModuleWrapper initModule"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->h:J

    check-cast p3, Lcom/networkbench/agent/impl/harvest/a/a/b;

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->d:Lcom/networkbench/agent/impl/harvest/a/a/b;

    new-instance p1, Lcom/networkbench/agent/impl/performance/b;

    const-string p2, "batteryMetrics"

    iget p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->g:I

    const-string p4, "otelMetric"

    invoke-direct {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/performance/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->b:Lcom/networkbench/agent/impl/performance/b;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    const-string p2, "batteryAbnormal"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p3

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/util/r;->r()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-direct {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/b/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/c;-><init>(Z)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->e:Lcom/networkbench/agent/impl/performance/coulometry/b/c;

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    const-string p2, "network.traffic"

    new-instance p3, Lcom/networkbench/agent/impl/performance/coulometry/b/k;

    invoke-direct {p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/k;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/performance/coulometry/b/d;)V

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iget-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->d:Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-direct {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V

    new-instance p2, Lcom/networkbench/agent/impl/performance/coulometry/b/l;

    iget-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->d:Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-direct {p2, p3, p4}, Lcom/networkbench/agent/impl/performance/coulometry/b/l;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V

    new-instance p3, Lcom/networkbench/agent/impl/performance/coulometry/b/a;

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->d:Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-direct {p3, p4, v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/a;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    move-result-object p4

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/l;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    move-result-object v0

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    move-result-object v1

    invoke-direct {p0, p4, v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/g;Lcom/networkbench/agent/impl/performance/coulometry/c/g;Lcom/networkbench/agent/impl/performance/coulometry/c/g;)V

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    const-string v0, "Location"

    invoke-virtual {p4, v0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/performance/coulometry/b/d;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    const-string p4, "WakeLock"

    invoke-virtual {p1, p4, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/performance/coulometry/b/d;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    const-string p1, "Alarm"

    invoke-virtual {p0, p1, p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/performance/coulometry/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public processForgetData(Z)V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/f;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/f;->a(Z)V

    :cond_1
    return-void
.end method

.method public setApplicationBackgrounded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->i:Z

    return-void
.end method
