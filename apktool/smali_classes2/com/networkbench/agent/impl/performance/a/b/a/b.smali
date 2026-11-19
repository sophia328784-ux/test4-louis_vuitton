.class public Lcom/networkbench/agent/impl/performance/a/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/networkbench/agent/impl/performance/a/d/e;

.field public c:Lcom/networkbench/agent/impl/performance/a/d/g;

.field public d:Lcom/networkbench/agent/impl/performance/a/d/g;

.field private e:Z

.field private f:Lcom/networkbench/agent/impl/performance/a/d/g;

.field private g:Lcom/networkbench/agent/impl/performance/a/a/b;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a:Z

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/performance/a/d/g;)V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->f:Lcom/networkbench/agent/impl/performance/a/d/g;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->g:Lcom/networkbench/agent/impl/performance/a/a/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->h:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/performance/a/d/g;->a(Lcom/networkbench/agent/impl/performance/a/a/b;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->d:Lcom/networkbench/agent/impl/performance/a/d/g;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->b(Lcom/networkbench/agent/impl/performance/a/d/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/networkbench/agent/impl/performance/a/a/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->f:Lcom/networkbench/agent/impl/performance/a/d/g;

    if-nez v0, :cond_0

    const-string p1, "CpuExceptionStateMachine updateConfig + this.currentState == null"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->b(Lcom/networkbench/agent/impl/performance/a/d/g;)V

    const-string v0, "CpuExceptionStateMachine updateConfig"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->g:Lcom/networkbench/agent/impl/performance/a/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a/d/g;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->f:Lcom/networkbench/agent/impl/performance/a/d/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 31
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->h:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuExceptionStateMachineonStart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z

    .line 34
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->b()V

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 36
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 37
    :try_start_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->c:Lcom/networkbench/agent/impl/performance/a/d/g;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/performance/a/d/g;->a()V

    .line 38
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->d:Lcom/networkbench/agent/impl/performance/a/d/g;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/performance/a/d/g;->a()V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->c:Lcom/networkbench/agent/impl/performance/a/d/g;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->b(Lcom/networkbench/agent/impl/performance/a/d/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
