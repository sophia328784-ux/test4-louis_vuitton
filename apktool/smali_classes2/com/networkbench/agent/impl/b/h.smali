.class public Lcom/networkbench/agent/impl/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/b/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LooperMonitor"

.field private static final b:Lcom/networkbench/agent/impl/b/h;

.field private static final c:Lcom/networkbench/agent/impl/c/e;

.field private static d:I

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/networkbench/agent/impl/b/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/util/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/b/h;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/b/h;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/b/h;->b:Lcom/networkbench/agent/impl/b/h;

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/h;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->e()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public static a()I
    .locals 2

    .line 77
    sget v0, Lcom/networkbench/agent/impl/b/h;->d:I

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 78
    sput v1, Lcom/networkbench/agent/impl/b/h;->d:I

    .line 79
    :cond_0
    sget v0, Lcom/networkbench/agent/impl/b/h;->d:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 80
    sput v1, Lcom/networkbench/agent/impl/b/h;->d:I

    .line 81
    :cond_1
    sget v0, Lcom/networkbench/agent/impl/b/h;->d:I

    return v0
.end method

.method public static a(Lcom/networkbench/agent/impl/b/h$a;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Z)V
    .locals 3

    .line 66
    sget-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/b/h$a;

    .line 67
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/h$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-boolean v2, v1, Lcom/networkbench/agent/impl/b/h$a;->a:Z

    if-eqz p0, :cond_1

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/h$a;->d()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/h$a;->e()V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_0

    .line 71
    iget-boolean v2, v1, Lcom/networkbench/agent/impl/b/h$a;->a:Z

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/h$a;->e()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(I)Z
    .locals 4

    const-string v0, "isNetworkbenchPrintlnCrycle cycle stackElement:"

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, p0, :cond_0

    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkbench"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v1, p0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "println"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/b/h;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, v1, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStackInterval : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LooperMonitor"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/networkbench/agent/impl/b/h;->d:I

    return-void
.end method

.method public static b(Lcom/networkbench/agent/impl/b/h$a;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Z
    .locals 2

    .line 26
    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Lcom/networkbench/agent/impl/b/h$a;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()Z
    .locals 1

    .line 11
    sget v0, Lcom/networkbench/agent/impl/b/h;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic d()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    .line 11
    sget-object v0, Lcom/networkbench/agent/impl/b/h;->c:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static d(Lcom/networkbench/agent/impl/b/h$a;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/b/h;->e:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static e()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "mLogging"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;

    sget-object v1, Lcom/networkbench/agent/impl/b/h;->f:Landroid/util/Printer;

    if-ne v0, v1, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/b/h;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "maybe looper printer was replace other!"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/networkbench/agent/impl/b/h$1;

    invoke-direct {v2, v0}, Lcom/networkbench/agent/impl/b/h$1;-><init>(Landroid/util/Printer;)V

    sput-object v2, Lcom/networkbench/agent/impl/b/h;->f:Landroid/util/Printer;

    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
