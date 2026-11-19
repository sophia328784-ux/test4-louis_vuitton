.class public final Lcom/networkbench/agent/impl/socket/e;
.super Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/socket/m;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/networkbench/agent/impl/socket/j;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    new-instance p1, Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/socket/j;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/socket/e;->a:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/socket/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/socket/j;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CustomOpenSSLSocketImplWrapper getInputStream time:"

    :try_start_0
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

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
    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/socket/j;->a(Z)V

    new-instance v0, Lcom/networkbench/agent/impl/socket/i;

    iget-object v2, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, v2, v1}, Lcom/networkbench/agent/impl/socket/i;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInputStream error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getInputStream()Ljava/io/InputStream;

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

    const-string v0, "CustomOpenSSLSocketImplWrapper getOutputStream time:"

    :try_start_0
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

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

    iget-object v2, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    invoke-direct {v0, v2, v1}, Lcom/networkbench/agent/impl/socket/h;-><init>(Lcom/networkbench/agent/impl/socket/j;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOutputStream error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final startHandshake()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLSocketImplWrapper;->startHandshake()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iget v1, p0, Lcom/networkbench/agent/impl/socket/e;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/networkbench/agent/impl/socket/e;->a:I

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/socket/r;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/e;->c:Lcom/networkbench/agent/impl/socket/j;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/socket/j;->a(Ljava/lang/String;)V

    return-void
.end method
