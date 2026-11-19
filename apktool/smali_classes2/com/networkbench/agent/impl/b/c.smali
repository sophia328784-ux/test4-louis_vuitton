.class public Lcom/networkbench/agent/impl/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/b/g;


# static fields
.field private static d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Lcom/networkbench/agent/impl/b/e;

.field private b:Landroid/os/HandlerThread;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/c;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/c;->c:Z

    new-instance v0, Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/c;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->h()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/b/e;-><init>(Landroid/os/HandlerThread;J)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/HandlerThread;
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/b/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/c;->b:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "nbs_block_probe"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/b/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/c;->b:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(J)V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/b/c;->c:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/b/e;->a()V

    .line 30
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/b/e;->a(J)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/e;->a()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/e;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/c;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/c;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/b/e;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/c;->c:Z

    return-void
.end method
