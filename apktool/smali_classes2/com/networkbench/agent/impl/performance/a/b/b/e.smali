.class public Lcom/networkbench/agent/impl/performance/a/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/a/b/b/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/networkbench/agent/impl/performance/a/d/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/b/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/e;->a:Lcom/networkbench/agent/impl/performance/a/d/f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/b/e$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/e;->a:Lcom/networkbench/agent/impl/performance/a/d/f;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/performance/a/d/f;->a()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/networkbench/agent/impl/performance/a/a/b;)V
    .locals 2

    const-string v0, "CpuExceptionManagerupdateExceptionConfig"

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/a/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/e;->a:Lcom/networkbench/agent/impl/performance/a/d/f;

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/performance/a/d/f;->a(Lcom/networkbench/agent/impl/performance/a/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
