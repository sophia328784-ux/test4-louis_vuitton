.class public Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;
.super Lokhttp3/EventListener;
.source "SourceFile"


# static fields
.field public static final FACTORY:Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;


# instance fields
.field a:Lokhttp3/EventListener;

.field b:J

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->FACTORY:Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;

    return-void
.end method

.method public constructor <init>(Lokhttp3/HttpUrl;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    .line 30
    iget-object v0, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    .line 32
    iget p1, p1, Lokhttp3/HttpUrl;->e:I

    .line 33
    iput p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->f:I

    return-void
.end method

.method public constructor <init>(Lokhttp3/HttpUrl;Lokhttp3/EventListener;)V
    .locals 2

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    iget-object v0, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->j:Z

    iget p1, p1, Lokhttp3/HttpUrl;->e:I

    iput p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->f:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    return-void
.end method

.method private reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->g:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->h:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->i:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    return-void
.end method


# virtual methods
.method public cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public cacheMiss(Lokhttp3/Call;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "callEnd   "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_0
    :try_start_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->endOkTcpData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "callStart   thread name : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->canceled(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 2

    const-string v0, "connectEnd  nbsTransactionState :  "

    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    iget-object p3, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    :try_start_2
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->getConnectTime()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setTcpHandShakeTime(I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_5
    :goto_1
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    :cond_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_0
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_0
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dnsEnd  "

    const-string v1, "hostAddress  "

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/InetAddress;

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->e:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->b:J

    sub-long/2addr p2, v1

    long-to-int p0, p2

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3

    const-string v0, "dnsStart   "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->b:J

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->reset()V

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public getConnectTime()I
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    :goto_0
    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->d:J

    goto :goto_0
.end method

.method public getFirstPackageTime()I
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->i:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->h:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public getListener()Lokhttp3/EventListener;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    return-object p0
.end method

.method public getSSlTime()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->g:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/EventListener;->proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V

    :cond_0
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    const-string v0, "requestBodyEnd  "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->h:J

    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "requestBodyStart   "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    :cond_0
    :try_start_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 3

    const-string v0, "requestHeadersEnd   "

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->h:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-gtz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->h:J

    :cond_2
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "requestHeadersStart  "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    :cond_0
    :try_start_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->getFirstPackageTime()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setFirstPacketPeriod(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->i:J

    sub-long v2, v0, v2

    long-to-int p3, v2

    invoke-virtual {p1, p3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRemainPackage(I)V

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setokhttp3(Z)V

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setEndTime(J)V

    :cond_2
    iput-boolean p2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 5

    const-string v0, "responseHeadersStart   "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->i:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->i:J

    :cond_2
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->getFirstPackageTime()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setFirstPacketPeriod(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 3

    const-string v0, "secureConnectEnd : getSSlTime() : "

    const-string v1, "secureConnectEnd : hostName : "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->getSSlTime()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->getSSlTime()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setSslHandShakeTime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    :cond_0
    iget-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->k:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->g:J

    return-void
.end method
