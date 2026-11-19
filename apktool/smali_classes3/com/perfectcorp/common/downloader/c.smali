.class Lcom/perfectcorp/common/downloader/c;
.super Lcom/perfectcorp/common/downloader/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/downloader/c$c;,
        Lcom/perfectcorp/common/downloader/c$a;,
        Lcom/perfectcorp/common/downloader/c$b;
    }
.end annotation


# instance fields
.field private final a:[B

.field private volatile b:I

.field private volatile c:I

.field private volatile d:Z

.field private volatile e:I

.field private volatile f:I

.field private volatile g:I

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/perfectcorp/common/downloader/c$c$a;

.field private final j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile l:Lcom/perfectcorp/common/downloader/c$a;

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/p$f;I)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/perfectcorp/common/downloader/c;-><init>(Lcom/perfectcorp/common/downloader/p$f;II)V

    return-void
.end method

.method private constructor <init>(Lcom/perfectcorp/common/downloader/p$f;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/perfectcorp/common/downloader/p;-><init>(Lcom/perfectcorp/common/downloader/p$f;)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/c;->a:[B

    const p1, 0x7fffffff

    iput p1, p0, Lcom/perfectcorp/common/downloader/c;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/perfectcorp/common/downloader/c;->g:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/c;->h:Ljava/lang/Object;

    new-instance p1, Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-direct {p1}, Lcom/perfectcorp/common/downloader/c$c$a;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/perfectcorp/common/downloader/c;->j:I

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/perfectcorp/common/downloader/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p1, Lcom/perfectcorp/common/downloader/c$c$a;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/common/downloader/p$f;IIB)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/perfectcorp/common/downloader/c;-><init>(Lcom/perfectcorp/common/downloader/p$f;II)V

    return-void
.end method

.method public static a(Lcom/perfectcorp/common/downloader/p;Lcom/perfectcorp/common/downloader/p$f;)Lcom/perfectcorp/common/downloader/c;
    .locals 3

    .line 771
    instance-of v0, p0, Lcom/perfectcorp/common/downloader/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/common/downloader/c;

    new-instance v1, Lcom/perfectcorp/common/downloader/d;

    invoke-virtual {p0}, Lcom/perfectcorp/common/downloader/p;->a()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2, v0}, Lcom/perfectcorp/common/downloader/d;-><init>(Lcom/perfectcorp/common/downloader/p$f;IILcom/perfectcorp/common/downloader/c;)V

    return-object v1

    :cond_0
    const-string p0, "from is not DownloadTask"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(II)V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/perfectcorp/common/downloader/c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/perfectcorp/common/downloader/c;->b:I

    iput p2, p0, Lcom/perfectcorp/common/downloader/c;->c:I

    iget p1, p0, Lcom/perfectcorp/common/downloader/c;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/perfectcorp/common/downloader/c;->c:I

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/perfectcorp/common/downloader/c;->d:Z

    :cond_1
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/DataOutput;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/c;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/common/downloader/p;->d()V

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/c;->a:[B

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2, v0}, Ljava/io/DataOutput;->write([BII)V

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/c;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/perfectcorp/common/downloader/c;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/perfectcorp/common/downloader/c;->e:I

    iget v0, p0, Lcom/perfectcorp/common/downloader/c;->e:I

    iget v2, p0, Lcom/perfectcorp/common/downloader/c;->f:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/perfectcorp/common/downloader/c;->e:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lcom/perfectcorp/common/downloader/c;->d:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/perfectcorp/common/downloader/c;->c:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/perfectcorp/common/downloader/c;->f:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/common/downloader/p;->a(D)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/common/downloader/p;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/c;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/common/downloader/p;->a(D)V

    new-instance p0, Lcom/perfectcorp/common/downloader/p$b;

    .line 778
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 779
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    .line 780
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .locals 3

    .line 782
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v1

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    move-result-object p0

    const/16 v2, 0xce

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v1, "Accept-Ranges"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bytes"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static b(III)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p0, p2, :cond_1

    sget p2, Lcom/perfectcorp/common/downloader/a;->f:I

    mul-int/2addr p0, p2

    sub-int/2addr p1, p0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "length can\'t be less than 0"

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return p1

    :cond_1
    sget p0, Lcom/perfectcorp/common/downloader/a;->f:I

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/perfectcorp/common/downloader/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final a(III)V
    .locals 3

    new-instance v0, Lcom/perfectcorp/common/downloader/c$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/perfectcorp/common/downloader/c$a;-><init>(III)V

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget-object p2, p0, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget p2, p2, Lcom/perfectcorp/common/downloader/c$a;->a:I

    sget p3, Lcom/perfectcorp/common/downloader/a;->f:I

    mul-int/2addr p2, p3

    iget-object p3, p0, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget p3, p3, Lcom/perfectcorp/common/downloader/c$a;->a:I

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget v0, v0, Lcom/perfectcorp/common/downloader/c$a;->b:I

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget v1, v1, Lcom/perfectcorp/common/downloader/c$a;->c:I

    invoke-static {p3, v0, v1}, Lcom/perfectcorp/common/downloader/c;->b(III)I

    move-result p3

    const-string v0, ", start:"

    const-string v1, ", length:"

    .line 773
    const-string v2, "setByteRange. index="

    invoke-static {p1, p2, v2, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 774
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 775
    const-string v1, "DownloadTask"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-direct {p0, p2, p3}, Lcom/perfectcorp/common/downloader/c;->a(II)V

    return-void
.end method

.method public final a(Lcom/perfectcorp/common/downloader/c;)V
    .locals 3

    .line 777
    iget-object v0, p1, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget v0, v0, Lcom/perfectcorp/common/downloader/c$a;->a:I

    iget-object v1, p1, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget v1, v1, Lcom/perfectcorp/common/downloader/c$a;->b:I

    iget-object v2, p1, Lcom/perfectcorp/common/downloader/c;->l:Lcom/perfectcorp/common/downloader/c$a;

    iget v2, v2, Lcom/perfectcorp/common/downloader/c$a;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/perfectcorp/common/downloader/c;->a(III)V

    :cond_0
    iget v0, p1, Lcom/perfectcorp/common/downloader/c;->e:I

    if-lez v0, :cond_1

    iget p1, p1, Lcom/perfectcorp/common/downloader/c;->e:I

    iput p1, p0, Lcom/perfectcorp/common/downloader/c;->e:I

    :cond_1
    return-void
.end method

.method public final a(Ljava/net/URI;Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v2

    :goto_0
    iget v0, v1, Lcom/perfectcorp/common/downloader/c;->j:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    if-ge v4, v0, :cond_f

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    iget v6, v0, Lcom/perfectcorp/common/downloader/c$c$a;->a:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/perfectcorp/common/downloader/c$c$a;->a:I

    sget-object v6, Lcom/perfectcorp/common/downloader/a;->e:Lcom/perfectcorp/common/downloader/a;

    monitor-enter v6

    :try_start_0
    iget-object v0, v6, Lcom/perfectcorp/common/downloader/a;->a:Ljava/util/List;

    iget-object v7, v6, Lcom/perfectcorp/common/downloader/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7, v0}, Lcom/perfectcorp/common/downloader/a;->a(ILjava/util/List;)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    monitor-exit v6

    monitor-enter v6

    :try_start_1
    iget-object v0, v6, Lcom/perfectcorp/common/downloader/a;->b:Ljava/util/List;

    iget-object v8, v6, Lcom/perfectcorp/common/downloader/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {v8, v0}, Lcom/perfectcorp/common/downloader/a;->a(ILjava/util/List;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    monitor-exit v6

    const/4 v6, 0x3

    :try_start_2
    iget v0, v1, Lcom/perfectcorp/common/downloader/c;->b:I

    iget v9, v1, Lcom/perfectcorp/common/downloader/c;->e:I

    add-int/2addr v0, v9

    iget v9, v1, Lcom/perfectcorp/common/downloader/c;->e:I

    if-lez v9, :cond_0

    const-string v9, "DownloadTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Retry] copiedBytes:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/perfectcorp/common/downloader/c;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", realStartByte:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v9, v10}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    move v14, v7

    goto/16 :goto_15

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/perfectcorp/common/downloader/p;->d()V
    :try_end_2
    .catch Lcom/perfectcorp/common/downloader/p$e; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lcom/perfectcorp/common/downloader/c$b; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    invoke-static {v10}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    invoke-virtual {v10, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v11, "User-Agent"

    const-string v12, "Mozilla/5.0"

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v7, :cond_1

    :try_start_7
    invoke-virtual {v10, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v10, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    move-object v13, v9

    move-object v6, v10

    :goto_2
    move-object/from16 v10, p1

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    move-object v13, v9

    move-object v6, v10

    move-object/from16 v10, p1

    move v7, v2

    goto/16 :goto_11

    :cond_1
    :goto_3
    :try_start_8
    iget-boolean v11, v1, Lcom/perfectcorp/common/downloader/c;->d:Z
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_2

    :try_start_9
    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bytes="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/perfectcorp/common/downloader/c;->b:I

    iget v14, v1, Lcom/perfectcorp/common/downloader/c;->c:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_2
    :try_start_a
    iget-object v11, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/perfectcorp/common/downloader/p;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    iget-boolean v13, v1, Lcom/perfectcorp/common/downloader/c;->d:Z

    invoke-static {v10}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v14
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/16 v15, 0x190

    if-lt v14, v15, :cond_4

    const/16 v15, 0x258

    if-lt v14, v15, :cond_3

    goto :goto_4

    :cond_3
    :try_start_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Response code="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", message="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/dynatrace/android/callback/Callback;->l(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    if-eqz v13, :cond_6

    invoke-static {v10}, Lcom/perfectcorp/common/downloader/c;->a(Ljava/net/HttpURLConnection;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Server doesn\'t support byte range access. Response code="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_6
    :goto_5
    :try_start_c
    iget-object v13, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v14, v11

    iput-wide v14, v13, Lcom/perfectcorp/common/downloader/c$c$a;->b:J
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    const-string v11, "Setting"

    invoke-static {v11, v10}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_2
    :try_start_e
    iget-object v11, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/perfectcorp/common/downloader/p;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {v10}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    iget-object v12, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {v10}, Lcom/dynatrace/android/callback/Callback;->c(Ljava/net/URLConnection;)I

    move-result v12

    iget-object v13, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v14, "rw"
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v15, p2

    :try_start_10
    invoke-direct {v13, v15, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    iget-boolean v9, v1, Lcom/perfectcorp/common/downloader/c;->d:Z
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move v14, v7

    if-eqz v9, :cond_7

    int-to-long v6, v0

    :try_start_12
    invoke-virtual {v13, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_6
    move-object v6, v10

    move-object v9, v11

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :goto_7
    move v7, v2

    :goto_8
    move-object v6, v10

    move-object v9, v11

    :goto_9
    move-object/from16 v10, p1

    goto/16 :goto_11

    :cond_7
    iput v2, v1, Lcom/perfectcorp/common/downloader/c;->e:I

    :goto_a
    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/perfectcorp/common/downloader/p;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    invoke-direct {v1, v11, v13, v12}, Lcom/perfectcorp/common/downloader/c;->a(Ljava/io/InputStream;Ljava/io/DataOutput;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    iget-object v0, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v11, v0, v2

    aput-object v13, v0, v5

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Lcom/perfectcorp/common/downloader/p$e; {:try_start_15 .. :try_end_15} :catch_10
    .catch Lcom/perfectcorp/common/downloader/c$b; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v10, p1

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move v7, v5

    goto :goto_8

    :catchall_4
    move-exception v0

    :try_start_16
    iget-object v6, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :catchall_5
    move-exception v0

    move v14, v7

    goto :goto_6

    :catch_6
    move-exception v0

    move v14, v7

    goto :goto_7

    :catchall_6
    move-exception v0

    :goto_b
    move v14, v7

    move-object v13, v9

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_c
    move v14, v7

    move v7, v2

    move-object v13, v9

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    move v7, v2

    move-object v13, v9

    move-object v6, v10

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    :goto_d
    move-object/from16 v10, p1

    :goto_e
    move-object v6, v9

    move-object v13, v6

    goto :goto_12

    :catch_a
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    :goto_f
    move-object/from16 v10, p1

    :goto_10
    move v7, v2

    move-object v6, v9

    move-object v13, v6

    goto :goto_11

    :catch_b
    move-exception v0

    move-object/from16 v15, p2

    move v14, v7

    :try_start_17
    const-string v6, "DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Convert URI to URL failed. URI="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object/from16 v10, p1

    :try_start_18
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_10

    :catchall_a
    move-exception v0

    goto :goto_d

    :catch_d
    move-exception v0

    goto :goto_f

    :catchall_b
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    move v14, v7

    goto :goto_e

    :catch_e
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v15, p2

    move v14, v7

    goto :goto_10

    :goto_11
    if-nez v7, :cond_8

    :try_start_19
    new-instance v7, Lcom/perfectcorp/common/downloader/c$b;

    const-string v11, "Connection timeout"

    invoke-direct {v7, v11, v0, v5}, Lcom/perfectcorp/common/downloader/c$b;-><init>(Ljava/lang/String;Ljava/net/SocketTimeoutException;I)V

    throw v7

    :catchall_c
    move-exception v0

    goto :goto_12

    :cond_8
    new-instance v7, Lcom/perfectcorp/common/downloader/c$b;

    const-string v11, "Read timeout"

    invoke-direct {v7, v11, v0, v3}, Lcom/perfectcorp/common/downloader/c$b;-><init>(Ljava/lang/String;Ljava/net/SocketTimeoutException;I)V

    throw v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :goto_12
    :try_start_1a
    new-array v7, v3, [Ljava/io/Closeable;

    aput-object v9, v7, v2

    aput-object v13, v7, v5

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_14

    :catch_f
    move-exception v0

    goto :goto_15

    :cond_9
    :goto_13
    throw v0
    :try_end_1a
    .catch Lcom/perfectcorp/common/downloader/p$e; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Lcom/perfectcorp/common/downloader/c$b; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    :goto_14
    const-string v5, "DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onExecuteImpl downloadCount count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    iget v7, v7, Lcom/perfectcorp/common/downloader/c$c$a;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v5, v1, Lcom/perfectcorp/common/downloader/c;->j:I

    if-eq v4, v5, :cond_a

    goto :goto_17

    :cond_a
    throw v0

    :goto_15
    iget v6, v0, Lcom/perfectcorp/common/downloader/c$b;->b:I

    if-eq v6, v5, :cond_c

    if-eq v6, v3, :cond_b

    goto :goto_16

    :cond_b
    iget-object v6, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    iget v7, v6, Lcom/perfectcorp/common/downloader/c$c$a;->c:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/perfectcorp/common/downloader/c$c$a;->c:I

    iget-object v5, v6, Lcom/perfectcorp/common/downloader/c$c$a;->e:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/perfectcorp/common/downloader/a;->e:Lcom/perfectcorp/common/downloader/a;

    iget-object v5, v5, Lcom/perfectcorp/common/downloader/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-le v8, v6, :cond_d

    const-string v6, "Config"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "timeoutMs:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    invoke-static {v9, v6, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_16

    :cond_c
    iget-object v6, v1, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    iget v7, v6, Lcom/perfectcorp/common/downloader/c$c$a;->c:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/perfectcorp/common/downloader/c$c$a;->c:I

    iget-object v5, v6, Lcom/perfectcorp/common/downloader/c$c$a;->d:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/perfectcorp/common/downloader/a;->e:Lcom/perfectcorp/common/downloader/a;

    iget-object v5, v5, Lcom/perfectcorp/common/downloader/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-le v14, v6, :cond_d

    const-string v6, "Config"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "timeoutMs:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    invoke-static {v9, v6, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_d
    :goto_16
    iget v5, v1, Lcom/perfectcorp/common/downloader/c;->j:I

    if-eq v4, v5, :cond_e

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :catch_10
    move-exception v0

    throw v0

    :catchall_e
    move-exception v0

    :try_start_1b
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    throw v0

    :catchall_f
    move-exception v0

    :try_start_1c
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    throw v0

    :cond_f
    :goto_18
    return-void
.end method

.method public final b()Lcom/perfectcorp/common/downloader/c$c;
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/perfectcorp/common/downloader/c;->i:Lcom/perfectcorp/common/downloader/c$c$a;

    new-instance v0, Lcom/perfectcorp/common/downloader/c$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/downloader/c$c;-><init>(Lcom/perfectcorp/common/downloader/c$c$a;)V

    return-object v0
.end method
