.class public Lcom/networkbench/agent/impl/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static final b:I = 0x32


# instance fields
.field private volatile c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/n;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/n;->d:Ljava/lang/String;

    const-string v0, "Dear developer,a slowly operation is blocking the main thread."

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/n;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/n;->c:Z

    return-void
.end method

.method private a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 8

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const-wide/16 v0, 0x1f4

    div-long/2addr p2, v0

    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/networkbench/agent/impl/b/n;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/b/n;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "ui thread is active, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v4

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v6, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    return-object v5

    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v5, Lcom/networkbench/agent/impl/b/n;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "geteErrorStateInfo e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-long v5, v2

    cmp-long v2, v5, p2

    if-ltz v2, :cond_3

    return-object v4

    :cond_3
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 88
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/b/n;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    :try_start_1
    iget v0, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 91
    iget-object v1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/networkbench/agent/impl/b/n;->d:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/networkbench/agent/impl/b/n;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    .line 94
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/b/n;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    :goto_2
    return-void

    .line 95
    :cond_3
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "not catch ProcessErrorStateInfo"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/n;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/b/n;->c:Z

    return-void
.end method
