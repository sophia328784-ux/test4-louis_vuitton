.class public Lcom/linkplay/bonjour/presenter/UartPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_FINISH_CONNECT:I = 0x3

.field private static final ERROR_INIT:I = 0x1

.field private static final ERROR_READ:I = 0x4

.field private static final ERROR_SELECT:I = 0x2

.field private static final HEART_DELAY:I = 0x1f4

.field private static final HEART_PRIOD:I = 0x7d0

.field private static final HEART_TIMEOUT:I = 0x3a98

.field private static final SLEEP_TIME:I = 0x32

.field private static final TAG:Ljava/lang/String; = "UartPresenter"

.field private static mCachedThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private IP:Ljava/lang/String;

.field private PORT:I

.field private aBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

.field heartbeatTimer:Ljava/util/Timer;

.field iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

.field private selector:Ljava/nio/channels/Selector;

.field private socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/linkplay/bonjour/presenter/IUartPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->IP:Ljava/lang/String;

    const/16 v0, 0x22c3

    iput v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->PORT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    new-instance v0, Lcom/linkplay/bonjour/model/HeartBeat;

    invoke-direct {v0}, Lcom/linkplay/bonjour/model/HeartBeat;-><init>()V

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->IP:Ljava/lang/String;

    iput p2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->PORT:I

    iput-object p3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    sget-object p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/linkplay/bonjour/presenter/UartPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->aBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->aBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->initClient(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/linkplay/bonjour/presenter/UartPresenter;)Lcom/linkplay/bonjour/model/HeartBeat;
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getHeartBeat()Lcom/linkplay/bonjour/model/HeartBeat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/linkplay/bonjour/presenter/UartPresenter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private declared-synchronized close(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->cancelTimer()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->closeSocket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private closeSocket()V
    .locals 8

    const-string v0, "  finally socketChannel.close() IOException:"

    const-string v1, "  finally selector.close() IOException:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "  closeSocket"

    const-string v5, "UartPresenter"

    invoke-static {v2, v3, v4, v5}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_a

    :catch_0
    move-exception v3

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    :cond_1
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownOutput()V

    :cond_2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    :cond_3
    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_d

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    :cond_7
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_8
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_9

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :goto_5
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  closeSocket IOException:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v3, :cond_9

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_d

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    :cond_b
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_c
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :cond_d
    :goto_9
    return-void

    :goto_a
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v4, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v4, :cond_e

    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_b
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_12

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_d

    :cond_f
    :goto_c
    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    :cond_10
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :cond_11
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iput-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_e

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_e
    throw v3
.end method

.method private getHeartBeat()Lcom/linkplay/bonjour/model/HeartBeat;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

    return-object p0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->PORT:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initClient(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    const-string v0, "UartPresenter"

    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->IP:Ljava/lang/String;

    iget v4, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->PORT:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/16 v3, 0x9

    invoke-virtual {v2, v1, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->select(Ljava/util/concurrent/atomic/AtomicBoolean;)I

    move-result v1

    const-wide/16 v2, 0x32

    if-gtz v1, :cond_1

    invoke-static {v2, v3}, Lcom/linkplay/bonjour/utils/ThreadUtils;->sleep(J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->selectionKeys(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v2, v3}, Lcom/linkplay/bonjour/utils/ThreadUtils;->sleep(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->selectedKeys(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;)V

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  1111111111111111111, break."

    invoke-static {v1, v2, v3, v0}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  TCP finished. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  initClient IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->onException(Ljava/lang/Exception;I)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->reConnectDevice(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method private reConnectDevice(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    return-void
.end method

.method private declared-synchronized select(Ljava/util/concurrent/atomic/AtomicBoolean;)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "UartPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  select() IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    invoke-interface {v2, v1, v3}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->onException(Ljava/lang/Exception;I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->reConnectDevice(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized selectedKeys(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    const-string v0, "UartPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  connectionSuccessful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->connectionSuccessful(Lcom/linkplay/bonjour/presenter/UartPresenter;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->startTimer(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->onException(Ljava/lang/Exception;I)V

    :cond_2
    const-string v1, "UartPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  finishConnect IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/linkplay/bonjour/utils/ThreadUtils;->sleep(J)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v1, :cond_5

    :try_start_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->setHeartBeat(Ljava/lang/String;J)V

    invoke-virtual {p0, v3}, Lcom/linkplay/bonjour/presenter/UartPresenter;->sendCommand(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UartPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->receivedMessage(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "UartPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  read() IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    const/4 v1, 0x4

    invoke-interface {v0, p2, v1}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->onException(Ljava/lang/Exception;I)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->reConnectDevice(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private declared-synchronized selectionKeys(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->selector:Ljava/nio/channels/Selector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setHeartBeat(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/bonjour/model/HeartBeat;

    invoke-direct {v0}, Lcom/linkplay/bonjour/model/HeartBeat;-><init>()V

    invoke-virtual {v0, p1}, Lcom/linkplay/bonjour/model/HeartBeat;->setHeart(Ljava/lang/String;)Lcom/linkplay/bonjour/model/HeartBeat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/linkplay/bonjour/model/HeartBeat;->setTime(J)Lcom/linkplay/bonjour/model/HeartBeat;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

    :cond_0
    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartBeat:Lcom/linkplay/bonjour/model/HeartBeat;

    invoke-virtual {p0, p1}, Lcom/linkplay/bonjour/model/HeartBeat;->setHeart(Ljava/lang/String;)Lcom/linkplay/bonjour/model/HeartBeat;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/linkplay/bonjour/model/HeartBeat;->setTime(J)Lcom/linkplay/bonjour/model/HeartBeat;

    return-void
.end method

.method private startTimer(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 7

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->heartbeatTimer:Ljava/util/Timer;

    new-instance v2, Lcom/linkplay/bonjour/presenter/UartPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/bonjour/presenter/UartPresenter$2;-><init>(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->aBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->close(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connectDevice()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->IP:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/linkplay/bonjour/presenter/UartPresenter;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/linkplay/bonjour/presenter/UartPresenter$1;

    invoke-direct {v1, p0}, Lcom/linkplay/bonjour/presenter/UartPresenter$1;-><init>(Lcom/linkplay/bonjour/presenter/UartPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "UartPresenter"

    const-string v0, "IP\u4e0d\u6b63\u786e:null"

    invoke-static {p0, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized sendCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "sendCommand IOException:"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->aBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "UartPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
