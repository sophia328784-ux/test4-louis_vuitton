.class public Lcom/networkbench/agent/impl/okhttp3/websocket/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/okhttp3/websocket/a;


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private b:Lcom/networkbench/agent/impl/session/ISpan;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "websocket invoke"

    const-string v1, "websocket"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->startSpan(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c:I

    iput v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d:I

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 2

    .line 286
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 287
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x19b

    return p0

    .line 288
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    const-string v1, "ftruncate failed: ENOENT (No such file or directory)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x205

    return p0

    .line 290
    :cond_1
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    const/16 p0, 0x385

    return p0

    .line 291
    :cond_2
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    const/16 p0, 0x387

    return p0

    .line 292
    :cond_3
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_4

    const/16 p0, 0x386

    return p0

    .line 293
    :cond_4
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_5

    const/16 p0, 0x384

    return p0

    .line 294
    :cond_5
    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_6

    const/16 p0, 0x38c

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 259
    const-string p0, "http://"

    const-string v0, "https://"

    const-string v1, "ws://"

    const-string v2, "wss://"

    .line 260
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 266
    :catchall_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 103
    const-string p0, "wss://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 104
    const-string p0, "wss"

    return-object p0

    .line 105
    :cond_0
    const-string p0, "ws://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 106
    const-string p0, "ws"

    return-object p0

    .line 107
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private b()V
    .locals 8

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "receiveCount"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "receiveSize"

    const-string v3, "B"

    invoke-interface {v0, v2, v1, v3}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sendCount"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sendSize"

    invoke-interface {v0, v2, v1, v3}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->g:I

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v2, "ms"

    const-string v3, "pingpongAvgTime"

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->h:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v3, v0, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "pingpongCount"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 108
    :try_start_0
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "recvfrom failed: ECONNRESET (Connection reset by peer)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 109
    sget-object v1, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "isSocketECONNRESET error"

    invoke-interface {v1, v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 33
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private d(I)I
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private e(I)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c:I

    iget v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->i:J

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->e(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 282
    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", formatOpcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 283
    iget p2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->e:I

    .line 284
    iget p2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->f:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/okhttp3/websocket/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openInfo.transactionState :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setName(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openInfo.transactionState  url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v2, "protocol"

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v2, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host"

    invoke-interface {v0, v3, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v2, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_ip"

    invoke-interface {v0, v3, v2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v2, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getDnsElapse()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dns"

    const-string v4, "ms"

    invoke-interface {v0, v3, v2, v4}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v2, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getTcpHandShakeTime()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connect"

    invoke-interface {v0, v3, v2, v4}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    const-string v0, "wss://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSslHandShakeTime()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ssl"

    invoke-interface {v0, v2, v1, v4}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getFirstPacketPeriod()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->d(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "firstPackage"

    invoke-interface {v0, v2, v1, v4}, Lcom/networkbench/agent/impl/session/ISpan;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget-object p1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "status_code"

    invoke-interface {p0, v0, p1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    iget v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v1, "errorDesc"

    iget-object p1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/networkbench/agent/impl/session/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    sget-object p1, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_ERROR:Lcom/networkbench/agent/impl/session/SpanStatus;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/session/ISpan;->finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/okhttp3/websocket/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    const-string v0, "openInfo.transactionState  url:"

    :try_start_0
    iget-boolean v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->b:Z

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setName(Ljava/lang/String;)V

    .line 271
    sget-object v2, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v2, "protocol"

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v1, "host"

    iget-object p1, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    .line 276
    const-string v0, "status_code"

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 277
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {p4}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a(Ljava/lang/Throwable;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string p2, "error"

    invoke-interface {p1, p2, p3}, Lcom/networkbench/agent/impl/session/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    sget-object p1, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_ERROR:Lcom/networkbench/agent/impl/session/SpanStatus;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/session/ISpan;->finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 281
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "NBSWebSocketMetric  onFailure    error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->e(I)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b()V

    .line 100
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v1, "closeCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/networkbench/agent/impl/session/ISpan;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    const-string v0, "closeReason"

    invoke-interface {p1, v0, p2}, Lcom/networkbench/agent/impl/session/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->b:Lcom/networkbench/agent/impl/session/ISpan;

    sget-object p1, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_OK:Lcom/networkbench/agent/impl/session/SpanStatus;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/session/ISpan;->finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V

    return-void
.end method

.method public c(I)V
    .locals 6

    iget p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->i:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "onReadPong time is error"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->h:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;->h:J

    return-void
.end method
