.class public Lcom/android/wiimu/onlineprotect/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/onlineprotect/b$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "WiimuSDK"

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/onlineprotect/b;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/b;->c:Ljava/util/Timer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/b;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/onlineprotect/b;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/b;->e:Ljava/util/List;

    return-object p0
.end method

.method private a()Ljava/util/concurrent/Executor;
    .locals 8

    new-instance v0, Lcom/android/wiimu/onlineprotect/b$a;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x200

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/16 v3, 0x10

    const-wide/16 v4, 0x5

    const/16 v2, 0x8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/wiimu/onlineprotect/b$a;-><init>(Lcom/android/wiimu/onlineprotect/b;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance p0, Lcom/android/wiimu/onlineprotect/b$b;

    invoke-direct {p0, v1}, Lcom/android/wiimu/onlineprotect/b$b;-><init>(Lcom/android/wiimu/onlineprotect/b;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    sget-object v2, Lf/a;->a:Ljava/lang/String;

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/high16 v4, 0xff0000

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    const/high16 v5, -0x1000000

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/4 v5, 0x4

    new-array v6, v5, [B

    const/4 v7, 0x0

    aput-byte v2, v6, v7

    const/4 v2, 0x1

    aput-byte v3, v6, v2

    const/4 v2, 0x2

    aput-byte v4, v6, v2

    const/4 v2, 0x3

    aput-byte v0, v6, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v7, v5, :cond_1

    aget-byte v3, v6, v7

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v7, v2, :cond_0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lf/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wiimu/onlineprotect/b;->d:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/android/wiimu/onlineprotect/b$d;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/wiimu/onlineprotect/b$d;-><init>(Lcom/android/wiimu/onlineprotect/b;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/android/wiimu/onlineprotect/b;Ljava/util/List;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/wiimu/onlineprotect/b;->e:Ljava/util/List;

    return-void
.end method

.method private c()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/b;->c:Ljava/util/Timer;

    new-instance v1, Lcom/android/wiimu/onlineprotect/b$c;

    invoke-direct {v1, p0}, Lcom/android/wiimu/onlineprotect/b$c;-><init>(Lcom/android/wiimu/onlineprotect/b;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/wiimu/onlineprotect/b;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/b;->b()V

    return-void
.end method

.method private d()V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/onlineprotect/b;->c:Ljava/util/Timer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/onlineprotect/b;->b:Z

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/b;->d()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/b;->c()V

    return-void
.end method
