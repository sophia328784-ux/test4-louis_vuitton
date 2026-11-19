.class public Lcom/networkbench/agent/impl/logtrack/i;
.super Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "SendLogDefaultRunnable"


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/networkbench/agent/impl/logtrack/SendLogCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/i;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 505
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 506
    invoke-direct {p0, p3, v0, p2}, Lcom/networkbench/agent/impl/logtrack/i;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 507
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x800

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v6, v2

    goto/16 :goto_23

    :catch_0
    move-exception p3

    move-object v0, v2

    :goto_1
    move-object v6, v0

    goto/16 :goto_11

    :catch_1
    move-exception p3

    move-object v0, v2

    :goto_2
    move-object v6, v0

    goto/16 :goto_16

    :catch_2
    move-exception p3

    move-object v0, v2

    :goto_3
    move-object v6, v0

    goto/16 :goto_1a

    :catch_3
    move-exception p3

    move-object v0, v2

    :goto_4
    move-object v6, v0

    goto/16 :goto_1e

    :cond_0
    const/16 p3, 0x3a98

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

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
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_5
    :try_start_3
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1

    invoke-virtual {v4, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    div-int/lit8 v4, v0, 0x64

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_6
    :try_start_6
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v3, :cond_2

    invoke-virtual {v4, v1, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :catchall_2
    move-exception p0

    :goto_7
    move-object v2, p3

    goto/16 :goto_23

    :catch_4
    move-exception v1

    move v3, v0

    :goto_8
    move-object v0, p3

    move-object p3, v1

    goto/16 :goto_11

    :catch_5
    move-exception v1

    move v3, v0

    :goto_9
    move-object v0, p3

    move-object p3, v1

    goto/16 :goto_16

    :catch_6
    move-exception v1

    move v3, v0

    :goto_a
    move-object v0, p3

    move-object p3, v1

    goto/16 :goto_1a

    :catch_7
    move-exception v1

    move v3, v0

    :goto_b
    move-object v0, p3

    move-object p3, v1

    goto/16 :goto_1e

    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v1, v2

    move-object v2, v6

    goto :goto_c

    :catchall_3
    move-exception p0

    move-object v6, v2

    goto :goto_7

    :catch_8
    move-exception v1

    move v3, v0

    move-object v6, v2

    goto :goto_8

    :catch_9
    move-exception v1

    move v3, v0

    move-object v6, v2

    goto :goto_9

    :catch_a
    move-exception v1

    move v3, v0

    move-object v6, v2

    goto :goto_a

    :catch_b
    move-exception v1

    move v3, v0

    move-object v6, v2

    goto :goto_b

    :cond_3
    move-object v1, v2

    :goto_c
    :try_start_7
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_d

    :catch_c
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_e

    :catch_d
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_e
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_f

    :catch_e
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    move-object v2, v1

    goto/16 :goto_22

    :catch_f
    move-exception v0

    move-object v6, v0

    move-object v0, p3

    move-object p3, v6

    move-object v6, v2

    goto :goto_11

    :catch_10
    move-exception v0

    move-object v6, v0

    move-object v0, p3

    move-object p3, v6

    move-object v6, v2

    goto/16 :goto_16

    :catch_11
    move-exception v0

    move-object v6, v0

    move-object v0, p3

    move-object p3, v6

    move-object v6, v2

    goto/16 :goto_1a

    :catch_12
    move-exception v0

    move-object v6, v0

    move-object v0, p3

    move-object p3, v6

    move-object v6, v2

    goto/16 :goto_1e

    :goto_10
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
    :try_end_a
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_4
    move-exception p0

    move-object p1, v2

    move-object v6, p1

    goto/16 :goto_23

    :catch_13
    move-exception p3

    move-object p1, v2

    move-object v0, p1

    goto/16 :goto_1

    :catch_14
    move-exception p3

    move-object p1, v2

    move-object v0, p1

    goto/16 :goto_2

    :catch_15
    move-exception p3

    move-object p1, v2

    move-object v0, p1

    goto/16 :goto_3

    :catch_16
    move-exception p3

    move-object p1, v2

    move-object v0, p1

    goto/16 :goto_4

    :goto_11
    :try_start_b
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_5

    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17

    goto :goto_12

    :catch_17
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_12
    if-eqz v6, :cond_6

    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_18

    goto :goto_13

    :catch_18
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_13
    if-eqz p2, :cond_7

    :try_start_e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19

    goto :goto_14

    :catch_19
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_14
    if-eqz p1, :cond_11

    :goto_15
    move v0, v3

    goto/16 :goto_22

    :catchall_5
    move-exception p0

    move-object v2, v0

    goto/16 :goto_23

    :goto_16
    :try_start_f
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v0, :cond_8

    :try_start_10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1a

    goto :goto_17

    :catch_1a
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_17
    if-eqz v6, :cond_9

    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1b

    goto :goto_18

    :catch_1b
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_18
    if-eqz p2, :cond_a

    :try_start_12
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1c

    goto :goto_19

    :catch_1c
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_19
    if-eqz p1, :cond_11

    goto :goto_15

    :goto_1a
    :try_start_13
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v0, :cond_b

    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1d

    goto :goto_1b

    :catch_1d
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_1b
    if-eqz v6, :cond_c

    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1e

    goto :goto_1c

    :catch_1e
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_1c
    if-eqz p2, :cond_d

    :try_start_16
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1f

    goto :goto_1d

    :catch_1f
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_1d
    if-eqz p1, :cond_11

    goto :goto_15

    :goto_1e
    :try_start_17
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    if-eqz v0, :cond_e

    :try_start_18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_20

    goto :goto_1f

    :catch_20
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_1f
    if-eqz v6, :cond_f

    :try_start_19
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_21

    goto :goto_20

    :catch_21
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_20
    if-eqz p2, :cond_10

    :try_start_1a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_22

    goto :goto_21

    :catch_22
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_21
    if-eqz p1, :cond_11

    goto :goto_15

    :goto_22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    move v3, v0

    :cond_11
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/i;->e:Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    if-eqz p0, :cond_12

    invoke-interface {p0, v3, v2}, Lcom/networkbench/agent/impl/logtrack/SendLogCallback;->onLogSendCompleted(I[B)V

    :cond_12
    return-void

    :goto_23
    if-eqz v2, :cond_13

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_23

    goto :goto_24

    :catch_23
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_24
    if-eqz v6, :cond_14

    :try_start_1c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_24

    goto :goto_25

    :catch_24
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_25
    if-eqz p2, :cond_15

    :try_start_1d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_25

    goto :goto_26

    :catch_25
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_26
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    throw p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/i;->e:Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/i;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 503
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/i;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public sendLog(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/i;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/i;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/networkbench/agent/impl/logtrack/i;->a(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;->finish()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".copy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
