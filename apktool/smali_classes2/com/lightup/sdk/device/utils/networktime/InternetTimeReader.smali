.class public Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final client:Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;

.field private final forceTimeSync:Ljava/util/concurrent/locks/Condition;

.field private internetTimeReaderListener:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->forceTimeSync:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->client:Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;

    new-instance v0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->internetTimeReaderListener:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;

    return-void
.end method


# virtual methods
.method public forceTimeSyncAttempt()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->forceTimeSync:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->client:Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;

    const-string v1, "pool.ntp.org"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1388

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v3, 0x30

    new-array v4, v3, [B

    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x7b

    invoke-direct {v5, v4, v3, v1, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v1, 0x1b

    const/4 v6, 0x0

    aput-byte v1, v4, v6

    const/16 v1, 0x28

    :goto_1
    if-ge v1, v3, :cond_0

    aput-byte v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    const/16 v1, 0x20

    invoke-static {v1, v4}, Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;->a(I[B)J

    move-result-wide v5

    const/16 v1, 0x24

    invoke-static {v1, v4}, Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;->a(I[B)J

    move-result-wide v3

    const-wide v7, 0x83aa7e80L

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    mul-long/2addr v3, v7

    const-wide v7, 0x100000000L

    div-long/2addr v3, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->client:Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;

    iget-wide v0, v0, Lcom/lightup/sdk/device/utils/networktime/NTP_UTC_Time;->a:J

    sget-boolean v2, Lcom/lightup/sdk/device/utils/communication/Scheduling;->b:Z

    const-class v2, Lcom/lightup/sdk/device/utils/communication/Scheduling;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_3
    sput-boolean v3, Lcom/lightup/sdk/device/utils/communication/Scheduling;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sput-wide v3, Lcom/lightup/sdk/device/utils/communication/Scheduling;->c:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->internetTimeReaderListener:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;

    invoke-interface {p0}, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;->onInternetTimeAvailable()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->forceTimeSync:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setInternetTimeReaderListener(Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->internetTimeReaderListener:Lcom/lightup/sdk/device/utils/networktime/InternetTimeReaderListener;

    iget-object p0, p0, Lcom/lightup/sdk/device/utils/networktime/InternetTimeReader;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
