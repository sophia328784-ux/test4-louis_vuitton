.class public Lcom/networkbench/agent/impl/okhttp3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static final c:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Lokhttp3/Dns;

.field private b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/c;->c:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dns;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/c;->a:Lokhttp3/Dns;

    iput-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/c;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

.method public static a(Lokhttp3/OkHttpClient;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/networkbench/agent/impl/okhttp3/c;

    if-nez v1, :cond_1

    const-class v0, Lokhttp3/OkHttpClient;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/okhttp3/c;

    iget-object v2, p0, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    invoke-direct {v1, v2, p1}, Lcom/networkbench/agent/impl/okhttp3/c;-><init>(Lokhttp3/Dns;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v0, p0, v1}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/c;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/okhttp3/c;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "replaceDefaultDns failed:"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/c;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

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

    const-string v0, "okhttp3 dns time:"

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/c;->b:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/c;->a:Lokhttp3/Dns;

    invoke-interface {p0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    sget-object v3, Lcom/networkbench/agent/impl/okhttp3/c;->c:Lcom/networkbench/agent/impl/c/e;

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

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getDnsElapse()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/v;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setIpAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object p0

    :catchall_0
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/c;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error happened in set dns time in ok3"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object p0
.end method
