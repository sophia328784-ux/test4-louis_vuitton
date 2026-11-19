.class public Lcom/networkbench/agent/impl/plugin/c/f;
.super Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/NBSUploadDataInterface;


# static fields
.field private static final a:Ljava/lang/String; = "LogTrackSendLogRunnable"

.field private static final b:Ljava/lang/String; = ".copy"


# instance fields
.field private c:Lcom/networkbench/agent/impl/harvest/a/k;

.field private d:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/a/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/f;->c:Lcom/networkbench/agent/impl/harvest/a/k;

    new-instance p1, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-direct {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/f;->d:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    const-string p1, ""

    if-nez p5, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    move-object p2, p5

    :goto_0
    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/f;->e:Ljava/lang/String;

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p6

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/f;->f:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/f;->g:Ljava/util/List;

    invoke-virtual {p0, p7}, Lcom/networkbench/agent/impl/plugin/c/f;->a([Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "taskId is:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", secretKey is:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogTrackSendLogRunnable"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 343
    const-string p1, "real src path is:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogTrackSendLogRunnable"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    const-string v1, "X-Task-Id"

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/c/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/util/r;->B:Z

    .line 347
    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/c/f;->f:Ljava/lang/String;

    .line 348
    const-string v3, "LogTrackSendLogRunnable"

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 350
    const-string v2, "SymmetryKey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sm encrypt key is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/c/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_0
    const-string v1, "SecretKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "log secretKey not encrypt"

    invoke-static {v3, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    const-string v1, "Abstract"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string p2, "X-File-Date"

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 376
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object p0

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->doDisabledTimeout(J)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 360
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 361
    const-string p1, "LogTrackSendLogRunnable"

    const-string v0, "closeStream failed"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a([B)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 370
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 371
    const-string v2, "log response data is:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LogTrackSendLogRunnable"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 372
    :goto_0
    iget v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->h:I

    const/16 v2, 0x199

    if-ne v0, v2, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->b([B)V

    .line 374
    :cond_1
    iget v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->h:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 375
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->c([B)V

    :cond_2
    return v1
.end method

.method private a(Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "log upload url is:"

    const/16 v1, 0x800

    new-array v1, v1, [B

    const-string v2, "doPostRequest error"

    const-string v3, "LogTrackSendLogRunnable"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v6, p2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p2, v4

    move-object p3, p2

    :goto_0
    move-object v0, p3

    move-object v1, v0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object p2, v4

    move-object p3, p2

    :goto_1
    move-object v0, p3

    move-object v1, v0

    goto/16 :goto_8

    :catch_1
    move-exception p1

    move-object p2, v4

    move-object p3, p2

    :goto_2
    move-object v0, p3

    move-object v1, v0

    goto/16 :goto_9

    :cond_0
    move v6, v5

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", requestBody length is:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/util/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->d:Lcom/networkbench/agent/impl/harvest/InitUrlConnection;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->configureConnectionForLogTrack(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v4

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v4

    goto :goto_1

    :catch_3
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v4

    goto :goto_2

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p2

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/c/f;->h:I

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->h:I

    const/16 v6, 0x199

    if-ne v0, v6, :cond_2

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v1

    move-object v1, v4

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v1, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v1

    move-object v1, v4

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object v1, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v1

    move-object v1, v4

    goto/16 :goto_9

    :cond_2
    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    invoke-virtual {p2, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, v8

    goto/16 :goto_6

    :catch_6
    move-exception v1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, v8

    goto/16 :goto_8

    :catch_7
    move-exception v1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, v8

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_4
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v4

    move-object v1, p3

    goto :goto_6

    :catch_8
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v4

    move-object v1, p3

    goto :goto_8

    :catch_9
    move-exception p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, p3

    move-object p3, v4

    move-object v1, p3

    goto :goto_9

    :goto_6
    :try_start_5
    invoke-static {v3, v2, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_4

    :goto_7
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    :catchall_5
    move-exception p1

    goto :goto_b

    :goto_8
    :try_start_6
    invoke-static {v3, v2, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_4

    goto :goto_7

    :goto_9
    :try_start_7
    invoke-static {v3, v2, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_4

    goto :goto_7

    :cond_4
    :goto_a
    return-object v4

    :goto_b
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 168
    const-string p0, "LogTrackSendLogRunnable"

    const-string p1, "error formatLogFile is null"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string p0, ""

    return-object p0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->g:Ljava/util/List;

    const/4 v1, 0x1

    .line 171
    invoke-static {v1, v0}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 173
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/f;->c:Lcom/networkbench/agent/impl/harvest/a/k;

    .line 174
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/a/k;->a()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 176
    const-string p1, "{0}&completed={1}"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b([B)V
    .locals 4

    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string p1, "disabledTimeout"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 179
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/Harvester;->doDisabledTimeout(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 181
    :goto_0
    const-string v0, "LogTrackSendLogRunnable"

    const-string v1, "response data error:"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/f;->a()V

    return-void
.end method

.method private b(Ljava/io/File;)Z
    .locals 9

    const-string v0, "doSendFileByAction error"

    const-string v1, "LogTrackSendLogRunnable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x800

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v3, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_1
    move-object v3, v4

    goto/16 :goto_4

    :catch_0
    move-exception p1

    :goto_2
    move-object v3, v4

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-nez v3, :cond_1

    new-array v3, v2, [B

    :cond_1
    const-string v6, ""

    array-length v7, v3

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    iget-boolean v6, v6, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/a/g;->a([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ah;->a([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not sm bodyAbstract:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/networkbench/agent/impl/plugin/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v6}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, v7, v3, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_1
    move-exception p1

    move-object v5, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v5, v3

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v5, v3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v5, v3

    goto :goto_6

    :goto_4
    :try_start_3
    invoke-static {v1, v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_5
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_8

    :goto_6
    :try_start_4
    invoke-static {v1, v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :goto_7
    return v2

    :goto_8
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private c([B)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "errorCode"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x1d1

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->immediatelyInitMobileAgent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "LogTrackSendLogRunnable"

    const-string v0, "response data error:"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 356
    const-string p0, ".copy"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 358
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 359
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    return-object p1
.end method

.method public a([Ljava/lang/String;)V
    .locals 7

    .line 362
    const-string v0, "LogTrackSendLogRunnable"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 363
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 364
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 365
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/c/f;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    .line 368
    :goto_1
    const-string p1, "parse date error"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isEnableUpload()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    move-result p0

    return p0
.end method

.method public sendLog(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/f;->isEnableUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->b(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload log file result is\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", logFileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogTrackSendLogRunnable"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;->finish()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".copy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/ak;->a(JLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method
