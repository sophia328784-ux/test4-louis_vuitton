.class public Lcom/networkbench/agent/impl/performance/a/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/a/b/b/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/networkbench/agent/impl/performance/a/b/a;

.field public c:Lcom/networkbench/agent/impl/performance/a/d/a;

.field private d:Lcom/networkbench/agent/impl/performance/a/b/b/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/c;->a()Lcom/networkbench/agent/impl/performance/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/d;->c:Lcom/networkbench/agent/impl/performance/a/d/a;

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/a/b/b/b;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/performance/a/b/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/d;->d:Lcom/networkbench/agent/impl/performance/a/b/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance v0, Lcom/networkbench/agent/impl/performance/a/b/a;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/d;->d:Lcom/networkbench/agent/impl/performance/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/a;-><init>(Lcom/networkbench/agent/impl/performance/a/d/e;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/d;->b:Lcom/networkbench/agent/impl/performance/a/b/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/b/d$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
