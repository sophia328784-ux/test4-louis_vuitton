.class public Lcom/linkplay/passthrough/LPPassthrough;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static final ERROR_FINISH_CONNECT:I = 0x2

.field private static final ERROR_INIT:I = 0x1

.field private static final ERROR_READ:I = 0x3

.field public static final MAX_BUFFER_LENGTH:I = 0x100

.field private static final SLEEP_TIME:I = 0x6

.field public static final TAG:Ljava/lang/String; = "LPPassthrough"

.field private static cachedThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private IP:Ljava/lang/String;

.field private PORT:I

.field iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

.field private isRunning:Z

.field private mHandler:Landroid/os/Handler;

.field private selector:Ljava/nio/channels/Selector;

.field private socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/linkplay/passthrough/LPPassthrough;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/passthrough/LPPassthroughListener;)V
    .locals 1

    const-string v0, "1111"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->IP:Ljava/lang/String;

    const/16 v0, 0x22c3

    iput v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->PORT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->isRunning:Z

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->IP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUartPassPort()I

    move-result p1

    iput p1, p0, Lcom/linkplay/passthrough/LPPassthrough;->PORT:I

    iput-object p2, p0, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->IP:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/passthrough/LPPassthrough;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->PORT:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/passthrough/LPPassthrough;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public static bridge synthetic f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/passthrough/LPPassthrough;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method public static bridge synthetic g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Thread ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/passthrough/LPPassthrough;->IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->PORT:I

    const-string v1, "  "

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/linkplay/passthrough/LPPassthrough;)Z
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/linkplay/passthrough/LPPassthrough;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->read()V

    return-void
.end method

.method private isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/passthrough/LPPassthrough;->isRunning:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/linkplay/passthrough/LPPassthrough;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/passthrough/LPPassthrough;->setRunning(Z)V

    return-void
.end method

.method public static bridge synthetic k()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/linkplay/passthrough/LPPassthrough;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private parseMCUMsg([B)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcom/linkplay/passthrough/ConvertUtil;->convertByteArray2Int([BI)I

    move-result p0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_3

    if-gez p0, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    add-int/lit8 v3, v2, 0x14

    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "utf-8"

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private read()V
    .locals 8

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result v0

    const-string v1, "i"

    const-string v2, "LPPassthrough"

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {v3, v4}, Lcom/linkplay/passthrough/ThreadUtils;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "connectionSuccessful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/linkplay/passthrough/LPPassthroughListener;->connectionStateChanged(Z)V

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "isConnectionPending = false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/passthrough/LPPassthrough;->disConnect()V

    invoke-static {v3, v4}, Lcom/linkplay/passthrough/ThreadUtils;->sleep(J)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x100

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/linkplay/passthrough/LPPassthrough;->parseMCUMsg([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    invoke-interface {v7, v6}, Lcom/linkplay/passthrough/LPPassthroughListener;->passThroughMessageCome(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_7
    :goto_2
    invoke-static {v3, v4}, Lcom/linkplay/passthrough/ThreadUtils;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "read Exception:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v2, v0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/passthrough/LPPassthrough;->disConnect()V

    invoke-static {v3, v4}, Lcom/linkplay/passthrough/ThreadUtils;->sleep(J)V

    goto/16 :goto_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "read IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/passthrough/LPPassthrough;->disConnect()V

    invoke-static {v3, v4}, Lcom/linkplay/passthrough/ThreadUtils;->sleep(J)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/linkplay/passthrough/LPPassthrough;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "finished"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendCommand(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/linkplay/passthrough/LPPassthrough$2;

    invoke-direct {v1, p0, p1}, Lcom/linkplay/passthrough/LPPassthrough$2;-><init>(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/passthrough/LPPassthrough;->isRunning:Z

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized disConnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/linkplay/passthrough/LPPassthrough$3;

    invoke-direct {v1, p0}, Lcom/linkplay/passthrough/LPPassthrough$3;-><init>(Lcom/linkplay/passthrough/LPPassthrough;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onLooperPrepared()V
    .locals 2

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linkplay/passthrough/LPPassthrough$1;

    invoke-direct {v1, p0}, Lcom/linkplay/passthrough/LPPassthrough$1;-><init>(Lcom/linkplay/passthrough/LPPassthrough;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x100

    new-array v1, v1, [B

    const v2, 0x20189618

    invoke-static {v2}, Lcom/linkplay/passthrough/ConvertUtil;->getUnsignedInt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0}, Lcom/linkplay/passthrough/ConvertUtil;->getUnsignedInt(I)J

    move-result-wide v3

    long-to-int v0, v3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/linkplay/passthrough/ConvertUtil;->getUnsignedInt(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v1, v3, v2}, Lcom/linkplay/passthrough/ConvertUtil;->convertInt2ByteArray([BII)V

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/linkplay/passthrough/ConvertUtil;->convertInt2ByteArray([BII)V

    const/16 v0, 0x8

    invoke-static {v1, v0, v4}, Lcom/linkplay/passthrough/ConvertUtil;->convertInt2ByteArray([BII)V

    const/16 v0, 0xc

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    move v0, v3

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, 0x14

    aget-byte v5, p1, v0

    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length p1, p1

    add-int/2addr v2, p1

    new-array p1, v2, [C

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_2

    aget-byte v4, v1, v0

    int-to-char v4, v4

    aput-char v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkplay/passthrough/LPPassthrough;->sendCommand(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
