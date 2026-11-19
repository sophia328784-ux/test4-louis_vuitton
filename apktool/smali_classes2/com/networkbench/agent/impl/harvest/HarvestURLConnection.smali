.class public Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;


# static fields
.field private static final X_TINGYUNAPPDATA_SIGN:Ljava/lang/String; = "X-TingyunAppData-Sign"


# instance fields
.field private initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

.field private nbsTicToc:Lcom/networkbench/agent/impl/l/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    new-instance p1, Lcom/networkbench/agent/impl/l/a;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/l/a;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    return-void
.end method

.method private calcuByteSHA256([B)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calcuWithRSA([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->i()Lcom/networkbench/agent/impl/util/g;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->calcuByteSHA256([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private composeByteData([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->composeHeadValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "composeByteData token:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :cond_0
    array-length v0, p1

    array-length v3, p0

    add-int/2addr v0, v3

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, p0

    invoke-static {p0, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, v2

    invoke-static {v2, v1, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private createIfNull([B)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static encryptContent(Ljava/lang/String;)[B
    .locals 5

    const-string v0, "SDKSymmetryKey value is:"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-boolean v2, v2, Lcom/networkbench/agent/impl/util/r;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "utf-8"

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/networkbench/agent/impl/util/z;->a()Lcom/networkbench/agent/impl/util/z;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/z;->a([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-array p0, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    new-array p0, v1, [B

    return-object p0
.end method

.method private writeStream(Ljava/io/OutputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public declared-synchronized sendDataFile(Ljava/util/Map;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/harvest/a/h;",
            ")",
            "Lcom/networkbench/agent/impl/harvest/d/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/h;->b()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p1

    iget-object p2, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/l/a;->a()V

    iget-object p2, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/l/a;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sendDataGet(Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/a/h;->b()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "X-License-Key"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    :try_start_3
    const-string p1, "error"

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/l/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/d/c;->b(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public sendDataOutputStream([BLcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "responseCode:"

    const-string v1, "send dest:"

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/h;->b()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/l/a;->a()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arraysource.length:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v1, v4, v5}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->configureUrlConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/net/HttpURLConnection;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    iget-boolean v4, v4, Lcom/networkbench/agent/impl/util/r;->D:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->composeByteData([B)[B

    move-result-object v4

    const-string v5, "X-TingyunAppData-Sign"

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->calcuWithRSA([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v3

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->d([B)[B

    move-result-object p1

    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v4, p1}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->writeStream(Ljava/io/OutputStream;[B)V

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p1

    const/16 v0, 0x199

    if-ne p1, v0, :cond_1

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    move-object v3, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v3

    move-object v3, v4

    goto :goto_3

    :cond_1
    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/harvest/a/h;->c(Ljava/net/HttpURLConnection;)V

    sget-object p1, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/networkbench/agent/impl/harvest/a/h;->a(J)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :goto_3
    :try_start_2
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "sendDataStr error "

    invoke-interface {v0, v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "error"

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/l/a;->b()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(J)V

    return-object v2

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_7
    throw p0
.end method

.method public sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "\n\n response_content = "

    const-string v5, "\n request_content = "

    const-string v6, "\n url = "

    const-string v7, " sendDataStr :  type  = "

    const-string v0, "sm4 after slurp : "

    const-string v8, "sm4 before slurpByte : "

    const-string v9, "responseCode:"

    const-string v10, "abstruct value:"

    const-string v11, "url:"

    invoke-static {v2}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->encryptContent(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->b()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v13

    iget-object v14, v1, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {v14}, Lcom/networkbench/agent/impl/l/a;->a()V

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", arraysource.length:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v12

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v15

    array-length v14, v12

    invoke-virtual {v11, v15, v14}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->configureUrlConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v11

    const-string v14, "Content-Type"

    const-string v15, "application/json"

    invoke-virtual {v11, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/net/HttpURLConnection;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v14

    iget-boolean v14, v14, Lcom/networkbench/agent/impl/util/r;->D:Z

    if-eqz v14, :cond_0

    invoke-direct {v1, v12}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->composeByteData([B)[B

    move-result-object v14

    const-string v15, "X-TingyunAppData-Sign"

    invoke-direct {v1, v14}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->calcuWithRSA([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v15, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_0
    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v14

    iget-boolean v14, v14, Lcom/networkbench/agent/impl/util/r;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_1

    :try_start_1
    instance-of v14, v3, Lcom/networkbench/agent/impl/harvest/a/a;

    if-nez v14, :cond_1

    instance-of v14, v3, Lcom/networkbench/agent/impl/harvest/a/n;

    if-nez v14, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v15, "Abstract"

    if-eqz v14, :cond_2

    :try_start_2
    const-string v10, ""

    invoke-virtual {v11, v15, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object/from16 v18, v4

    move-object/from16 v17, v12

    goto :goto_3

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/networkbench/agent/impl/util/a/g;->a([B)[B

    move-result-object v14

    invoke-static {v14}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v12

    sget-object v12, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v18, v4

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v15, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_0

    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/networkbench/agent/impl/util/ak;->d([B)[B

    move-result-object v4

    invoke-virtual {v3, v11}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {v1, v10, v4}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->writeStream(Ljava/io/OutputStream;[B)V

    sget-object v4, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const/16 v12, 0x199

    if-ne v9, v12, :cond_3

    :try_start_6
    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_4
    move-object v14, v9

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v14, v10

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_3
    :try_start_7
    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_4

    :goto_5
    :try_start_8
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v9

    iget-boolean v9, v9, Lcom/networkbench/agent/impl/util/r;->B:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v9, :cond_4

    :try_start_9
    invoke-static {v14}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v16, v14

    move-object/from16 v4, v18

    :goto_6
    move-object v14, v10

    goto/16 :goto_9

    :cond_4
    :try_start_a
    instance-of v9, v3, Lcom/networkbench/agent/impl/harvest/a/a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v9, :cond_5

    :try_start_b
    instance-of v9, v3, Lcom/networkbench/agent/impl/harvest/a/n;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v9, :cond_5

    :try_start_c
    invoke-static {v14}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/io/InputStream;)[B

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v9

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sm4 raw value: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v8, Ljava/lang/String;

    sget-object v12, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/networkbench/agent/impl/util/ak;->d(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v9}, Lcom/networkbench/agent/impl/h/d;->d([B[B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v0, v8

    goto :goto_7

    :catchall_5
    :try_start_d
    invoke-static {v14}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    :cond_5
    :try_start_e
    invoke-static {v14}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0, v13}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v13

    invoke-virtual {v3, v11}, Lcom/networkbench/agent/impl/harvest/a/h;->c(Ljava/net/HttpURLConnection;)V

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v11}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_6
    invoke-virtual {v11}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/networkbench/agent/impl/harvest/a/h;->a(J)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v16, v14

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v4, v18

    move-object v14, v10

    goto/16 :goto_1

    :goto_9
    :try_start_f
    sget-object v8, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v9, "sendDataStr error "

    invoke-interface {v8, v9, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "error"

    invoke-virtual {v13, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_a
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    :goto_a
    iget-object v0, v1, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->nbsTicToc:Lcom/networkbench/agent/impl/l/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/l/a;->b()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(J)V

    return-object v13

    :catchall_8
    move-exception v0

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_d
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->n(Ljava/lang/String;)V

    :cond_e
    throw v0
.end method

.method public setInitUrlConnection(Lcom/networkbench/agent/impl/harvest/InitUrlConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;->initUrlConnection:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    return-void
.end method
