.class public Lcom/networkbench/agent/impl/plugin/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static k:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field g:I

.field h:I

.field i:I

.field j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/b/b;->k:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->j:Ljava/util/Map;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->l:Ljava/lang/String;

    const/high16 p1, 0x100000

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/b/b;->h:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "downloadSizeLimit:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/networkbench/agent/impl/plugin/b/b;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->i:I

    return-void
.end method

.method private a(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 143
    new-array v1, v1, [B

    .line 144
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget v3, p0, Lcom/networkbench/agent/impl/plugin/b/b;->h:I

    if-lt v2, v3, :cond_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 148
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 141
    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    return-void
.end method

.method private b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->m(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/g/a/f;-><init>()V

    new-instance v2, Lcom/networkbench/agent/impl/plugin/b/b$1;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/plugin/b/b$1;-><init>(Lcom/networkbench/agent/impl/plugin/b/b;)V

    invoke-static {v1, v0, v2}, Lcom/networkbench/agent/impl/plugin/g/a/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/b$a;)V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->l:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/plugin/b/b;->k:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadPlugin get hostName error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private d()Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->l:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HTTP statusCode: "

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/b/b;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/b/b;->b()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/b/b;->d()Ljava/net/HttpURLConnection;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/b;->j:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_3
    const-string v4, "DownloadPlugin  response  headerFields :   null  "

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v4

    const/16 v5, 0x190

    if-lt v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/b/b;->a(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->i:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/networkbench/agent/impl/plugin/b/b;->b:J

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_2
    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ai;->b(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/networkbench/agent/impl/plugin/b/b;->i:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/networkbench/agent/impl/plugin/b/b;->b:J

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisitDownUrl{urlStr=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', exception=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', networktime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', host=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dnsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/plugin/b/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limitSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/b/b;->h:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
