.class public Lcom/networkbench/agent/impl/performance/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/f/d;


# static fields
.field private static b:Lcom/networkbench/agent/impl/performance/a/c;


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/a/a/b;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/networkbench/agent/impl/performance/a/a;

.field private e:Lcom/networkbench/agent/impl/performance/a/b/b/h;

.field private f:Lcom/networkbench/agent/impl/performance/a/b;

.field private g:Lcom/networkbench/agent/impl/performance/a/b/c/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/b/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/b/b/h;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c;->e:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/a/c;)Lcom/networkbench/agent/impl/performance/a/b/c/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->g:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/a/c;)Lcom/networkbench/agent/impl/performance/a/b/b/h;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->e:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    return-object p0
.end method

.method public static declared-synchronized b()Lcom/networkbench/agent/impl/performance/a/c;
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/performance/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/a/c;->b:Lcom/networkbench/agent/impl/performance/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/performance/a/c;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/a/c;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/performance/a/c;->b:Lcom/networkbench/agent/impl/performance/a/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/performance/a/c;->b:Lcom/networkbench/agent/impl/performance/a/c;
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

.method private e()I
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->p()Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getStackDepth()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x28

    return p0
.end method

.method private f()J
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->p()Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "CpuModuleWrapper checkIntervalTime time:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3c

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/performance/a/a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->d:Lcom/networkbench/agent/impl/performance/a/a;

    return-object p0
.end method

.method public c()Lcom/networkbench/agent/impl/performance/a/b/c/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->g:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    return-object p0
.end method

.method public d()Lcom/networkbench/agent/impl/performance/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->f:Lcom/networkbench/agent/impl/performance/a/b;

    return-object p0
.end method

.method public getModuleData()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/c;->f:Lcom/networkbench/agent/impl/performance/a/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->f:Lcom/networkbench/agent/impl/performance/a/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CpuModuleWrapper getModuleData error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    const-string p0, "cpu"

    return-object p0
.end method

.method public harvestRestart()V
    .locals 7

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/performance/a/c$2;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/a/a/b;->a()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/performance/a/c$2;-><init>(Lcom/networkbench/agent/impl/performance/a/c;JJ)V

    iput-object v1, v2, Lcom/networkbench/agent/impl/performance/a/c;->g:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    iget-object p0, v2, Lcom/networkbench/agent/impl/performance/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public harvestStop()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/c;->g:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c;->e:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a()V

    :cond_0
    return-void
.end method

.method public initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V
    .locals 6

    :try_start_0
    move-object p1, p3

    check-cast p1, Lcom/networkbench/agent/impl/performance/a/a/b;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    new-instance p1, Lcom/networkbench/agent/impl/performance/a/a;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/performance/a/a;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->d:Lcom/networkbench/agent/impl/performance/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/a/c;->d:Lcom/networkbench/agent/impl/performance/a/a;

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Lcom/networkbench/agent/impl/data/type/l;)V

    new-instance p1, Lcom/networkbench/agent/impl/performance/a/b;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/performance/a/b;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->f:Lcom/networkbench/agent/impl/performance/a/b;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/performance/a/b;->a(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c;->f()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/networkbench/agent/impl/performance/a/a/b;->a:J

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c;->e()I

    move-result p2

    iput p2, p1, Lcom/networkbench/agent/impl/performance/a/a/b;->c:I

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c;->e:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    invoke-virtual {p1, p3}, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a(Lcom/networkbench/agent/impl/harvest/a/a/c;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/c$1;

    iget-object p2, p0, Lcom/networkbench/agent/impl/performance/a/c;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/a/a/b;->a()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/performance/a/c$1;-><init>(Lcom/networkbench/agent/impl/performance/a/c;JJ)V

    iput-object v0, v1, Lcom/networkbench/agent/impl/performance/a/c;->g:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    iget-object p0, v1, Lcom/networkbench/agent/impl/performance/a/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CpuModuleWrapper initModule error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method
