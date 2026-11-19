.class public Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/Dns;


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private impl:Lcom/squareup/okhttp/Dns;

.field private transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/Dns;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->impl:Lcom/squareup/okhttp/Dns;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

.method public static replaceDefaultDns(Lcom/squareup/okhttp/OkHttpClient;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/Dns;->SYSTEM:Lcom/squareup/okhttp/Dns;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/OkHttpClient;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v0

    instance-of v0, v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;

    if-nez v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;-><init>(Lcom/squareup/okhttp/Dns;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/OkHttpClient;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/squareup/okhttp/OkHttpClient;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->setTransactionState(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "replaceDefaultDns failed:"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "okhttp2 dns time:"

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->impl:Lcom/squareup/okhttp/Dns;

    invoke-interface {p0, p1}, Lcom/squareup/okhttp/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    sget-object v3, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hostname:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pre dns:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getDnsElapse()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getDnsElapse()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/v;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method public setTransactionState(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSOk2Dns;->transactionState:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method
