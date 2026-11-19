.class public Lcom/github/druk/dnssd/DNSSDEmbedded;
.super Lcom/github/druk/dnssd/DNSSD;
.source "SourceFile"


# static fields
.field public static final DEFAULT_STOP_TIMER_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DNSSDEmbedded"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private volatile isStarted:Z

.field private final mStopTimerDelay:J

.field private mThread:Ljava/lang/Thread;

.field private serviceCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lcom/github/druk/dnssd/DNSSDEmbedded;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "jdns_sd_embedded"

    invoke-direct {p0, p1, v0}, Lcom/github/druk/dnssd/DNSSD;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->isStarted:Z

    iput p1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->serviceCount:I

    iput-wide p2, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mStopTimerDelay:J

    return-void
.end method

.method public static synthetic access$002(Lcom/github/druk/dnssd/DNSSDEmbedded;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->isStarted:Z

    return p1
.end method

.method public static native nativeExit()V
.end method

.method public static native nativeInit()I
.end method

.method public static native nativeLoop()I
.end method

.method private waitUntilStarted()V
    .locals 2

    const-class v0, Lcom/github/druk/dnssd/DNSSDEmbedded;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-class v1, Lcom/github/druk/dnssd/DNSSDEmbedded;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public exit()V
    .locals 5

    const-class v0, Lcom/github/druk/dnssd/DNSSDEmbedded;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->handler:Landroid/os/Handler;

    new-instance v2, Le5;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Le5;-><init>(I)V

    iget-wide v3, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mStopTimerDelay:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->handler:Landroid/os/Handler;

    new-instance v1, Le5;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Le5;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/druk/dnssd/DNSSDEmbedded;->waitUntilStarted()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->isStarted:Z

    invoke-static {}, Lcom/github/druk/dnssd/InternalDNSSD;->getInstance()Lcom/github/druk/dnssd/InternalDNSSD;

    new-instance v0, Lcom/github/druk/dnssd/DNSSDEmbedded$1;

    invoke-direct {v0, p0}, Lcom/github/druk/dnssd/DNSSDEmbedded$1;-><init>(Lcom/github/druk/dnssd/DNSSDEmbedded;)V

    iput-object v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mThread:Ljava/lang/Thread;

    const-string v1, "DNS-SDEmbedded"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/github/druk/dnssd/DNSSDEmbedded;->waitUntilStarted()V

    return-void
.end method

.method public onServiceStarting()V
    .locals 1

    invoke-super {p0}, Lcom/github/druk/dnssd/DNSSD;->onServiceStarting()V

    invoke-virtual {p0}, Lcom/github/druk/dnssd/DNSSDEmbedded;->init()V

    iget v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->serviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->serviceCount:I

    return-void
.end method

.method public onServiceStopped()V
    .locals 1

    invoke-super {p0}, Lcom/github/druk/dnssd/DNSSD;->onServiceStopped()V

    iget v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->serviceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded;->serviceCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/druk/dnssd/DNSSDEmbedded;->exit()V

    :cond_0
    return-void
.end method
