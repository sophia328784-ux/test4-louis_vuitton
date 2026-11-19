.class public Lcom/networkbench/agent/impl/performance/a/b/b/f;
.super Lcom/networkbench/agent/impl/performance/a/d/c;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/a/d/f;


# instance fields
.field private a:Lcom/networkbench/agent/impl/performance/a/d/a;

.field private volatile b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

.field private c:Lcom/networkbench/agent/impl/performance/a/d/g;

.field private d:Lcom/networkbench/agent/impl/performance/a/d/g;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/d/c;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/c;->a()Lcom/networkbench/agent/impl/performance/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->a:Lcom/networkbench/agent/impl/performance/a/d/a;

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->c:Lcom/networkbench/agent/impl/performance/a/d/g;

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/b;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->d:Lcom/networkbench/agent/impl/performance/a/d/g;

    const-string v0, "CpuExceptionPolicy init"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->c:Lcom/networkbench/agent/impl/performance/a/d/g;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->d:Lcom/networkbench/agent/impl/performance/a/d/g;

    iget-boolean v3, v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a:Z

    if-nez v3, :cond_0

    iput-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->c:Lcom/networkbench/agent/impl/performance/a/d/g;

    iput-object v2, v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->d:Lcom/networkbench/agent/impl/performance/a/d/g;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a(Lcom/networkbench/agent/impl/performance/a/d/g;)V

    const-string v1, "CpuExceptionPolicy setCurrentState idleState!"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/a/b/b/b;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/performance/a/b/b/c;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->b:Lcom/networkbench/agent/impl/performance/a/d/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->a:Lcom/networkbench/agent/impl/performance/a/d/a;

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/performance/a/d/a;->a(Lcom/networkbench/agent/impl/performance/a/d/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/performance/a/b/b/f;->a(Z)V

    return-void
.end method

.method public final a(Lcom/networkbench/agent/impl/performance/a/a/b;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a(Lcom/networkbench/agent/impl/performance/a/a/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuExceptionPolicy onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/f;->b:Lcom/networkbench/agent/impl/performance/a/b/a/b;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/a/b;->a(Z)V

    return-void
.end method
