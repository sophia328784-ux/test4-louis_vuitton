.class public final Lcom/networkbench/agent/impl/socket/f;
.super Ljava/net/PlainSocketImpl;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/socket/m;


# static fields
.field private static final c:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:I

.field private b:Z

.field private d:Lcom/networkbench/agent/impl/socket/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/j;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/socket/j;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    return-void
.end method

.method public final connect(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect(String host, int port) port:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is not http/https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/lang/String;I)V

    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/data/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/l;-><init>()V

    .line 147
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 148
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->b(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/l;->b(I)V

    .line 150
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/lang/String;I)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/f;->a:I

    .line 152
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 155
    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, -0x1

    .line 156
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->a(I)V

    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/socket/p;->d(Ljava/lang/String;)V

    .line 158
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 161
    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    .line 162
    :cond_2
    throw p0
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect(InetAddress ipAddr, int port) port:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is not http/https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    return-void

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/data/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/l;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/data/l;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/s;->b(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/data/l;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/l;->b(I)V

    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/f;->a:I

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, -0x1

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->a(I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/socket/p;->d(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/l;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addSocketDatasInfo(Lcom/networkbench/agent/impl/socket/p;)V

    :cond_3
    throw p0
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void

    .line 165
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 166
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 167
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/s;->b(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    const-string v1, ""

    move-object v0, v1

    .line 170
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 171
    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 172
    sget-object p1, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "connect end time: "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/networkbench/agent/impl/socket/f;->a:I

    .line 174
    iget-object p2, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/socket/j;->a(I)V

    .line 175
    iget p1, p0, Lcom/networkbench/agent/impl/socket/f;->a:I

    iget p2, p0, Lcom/networkbench/agent/impl/socket/f;->port:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 176
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/socket/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CustomPlainSocketImpl getInputStream time:"

    :try_start_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v0, v1, Lcom/networkbench/agent/impl/socket/i;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/socket/j;->a(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/socket/i;

    iget-object v2, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, v2, v1}, Lcom/networkbench/agent/impl/socket/i;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInputStream error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public final getOption(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/net/PlainSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "customplainSocketImpl getOutputStream time:"

    :try_start_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    instance-of v0, v1, Lcom/networkbench/agent/impl/socket/h;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/socket/h;

    iget-object v2, p0, Lcom/networkbench/agent/impl/socket/f;->d:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, v2, v1}, Lcom/networkbench/agent/impl/socket/h;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/socket/f;->c:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOutputStream error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final setOption(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/net/PlainSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method
