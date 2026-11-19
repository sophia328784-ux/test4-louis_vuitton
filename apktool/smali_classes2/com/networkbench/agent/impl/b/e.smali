.class public Lcom/networkbench/agent/impl/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/b/e$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x320

.field private static final b:I = 0x5

.field private static d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private final c:Landroid/os/Handler;

.field private e:Lcom/networkbench/agent/impl/b/a/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/e;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/e;->f:Ljava/util/List;

    :try_start_0
    new-instance p1, Lcom/networkbench/agent/impl/b/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->a()I

    move-result p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    const/16 v0, 0x320

    invoke-direct {p1, p2, p3, v0}, Lcom/networkbench/agent/impl/b/a/a;-><init>(ILjava/lang/Thread;I)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/e;->e:Lcom/networkbench/agent/impl/b/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/b/e;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "error init stackService"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e;->e:Lcom/networkbench/agent/impl/b/a/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/b/e;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/e;->d:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/e;->c()V

    .line 75
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/b/d;

    .line 76
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/d;->a()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/networkbench/agent/impl/b/e$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/b/e$1;-><init>(Lcom/networkbench/agent/impl/b/e;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/networkbench/agent/impl/b/e$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/b/e$a;-><init>(Lcom/networkbench/agent/impl/b/e;J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->h()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "BlockProbe setUp error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/b/a/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e;->e:Lcom/networkbench/agent/impl/b/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/a/a;->c()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/b/e$2;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/b/e$2;-><init>(Lcom/networkbench/agent/impl/b/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
