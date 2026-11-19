.class public Lcom/networkbench/agent/impl/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/b/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/networkbench/agent/impl/b/f;

.field private static c:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Z

.field private d:Lcom/networkbench/agent/impl/b/f$a;

.field private e:Lcom/networkbench/agent/impl/b/g;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/f;->c:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/f;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/b/f;->f:J

    new-instance v0, Lcom/networkbench/agent/impl/b/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/b/f$a;-><init>(Lcom/networkbench/agent/impl/b/f;Lcom/networkbench/agent/impl/b/f$1;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/f;->d:Lcom/networkbench/agent/impl/b/f$a;

    new-instance v0, Lcom/networkbench/agent/impl/b/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/b/c;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/f;->e:Lcom/networkbench/agent/impl/b/g;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/b/f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/b/f;->f:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/b/f;)Lcom/networkbench/agent/impl/b/f$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/f;->d:Lcom/networkbench/agent/impl/b/f$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/b/f;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/b/f;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/b/f;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/networkbench/agent/impl/b/f;->f:J

    return-wide v0
.end method

.method public static b()Lcom/networkbench/agent/impl/b/f;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/b/f;->a:Lcom/networkbench/agent/impl/b/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/networkbench/agent/impl/b/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/b/f;->a:Lcom/networkbench/agent/impl/b/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/b/f;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/b/f;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/b/f;->a:Lcom/networkbench/agent/impl/b/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/b/f;->a:Lcom/networkbench/agent/impl/b/f;

    return-object v0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/b/f;)Lcom/networkbench/agent/impl/b/g;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/f;->e:Lcom/networkbench/agent/impl/b/g;

    return-object p0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/f;->a:Lcom/networkbench/agent/impl/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic g()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/f;->c:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method private h()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/networkbench/agent/impl/b/f$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/b/f$1;-><init>(Lcom/networkbench/agent/impl/b/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/f;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/networkbench/agent/impl/b/f$2;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/b/f$2;-><init>(Lcom/networkbench/agent/impl/b/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/b/f;->b:Z

    return p0
.end method

.method public d()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/f;->e:Lcom/networkbench/agent/impl/b/g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/networkbench/agent/impl/b/g;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/f;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/b/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error happened in start:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method public f()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/b/f;->f:J

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/f;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/b/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error happened in stop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method
