.class public Lcom/dynatrace/android/agent/comm/RequestExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Lcom/dynatrace/android/agent/conf/Configuration;

.field public final e:Lcom/dynatrace/android/agent/comm/CommHandler;

.field public final f:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/comm/CommHandler;Lcom/dynatrace/android/agent/conf/Configuration;Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->d:Lcom/dynatrace/android/agent/conf/Configuration;

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->e:Lcom/dynatrace/android/agent/comm/CommHandler;

    iput-object p3, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->f:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;

    iget-object p1, p2, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    iget-object p2, p2, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    sget-object p3, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne p1, p3, :cond_0

    iput-object p2, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->c:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object p1, p1, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    const-string p3, "DTX_BeaconSignal"

    const-string v0, "dynaTraceMonitor"

    iget-object p1, p1, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    const-string p1, "/"

    invoke-static {p2, p1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLjava/lang/String;IJIZ)Lcom/dynatrace/android/agent/conf/ServerConfiguration;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?type=m&srvid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&va="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "8.343.1.1038"

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&tt=maandroid&pt=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->d:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v5, v4, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    iget-object v6, v4, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v7, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v5, v7, :cond_0

    const-string v5, "&resp=json&cts="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string v5, "&ns=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v5, "&si="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->e:Lcom/dynatrace/android/agent/comm/CommHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/dynatrace/android/agent/comm/CommHandler;->b:I

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/dynatrace/android/agent/comm/CommHandler;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget v5, Lcom/dynatrace/android/agent/comm/CommHandler;->b:I

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget v5, Lcom/dynatrace/android/agent/comm/CommHandler;->c:I

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-nez p8, :cond_2

    const-string v5, "Connection"

    const-string v8, "close"

    invoke-virtual {v3, v5, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v3

    :goto_0
    const/4 v9, 0x0

    goto/16 :goto_c

    :cond_2
    :goto_1
    const-string v5, "Accept-Encoding"

    const-string v8, "identity, gzip"

    invoke-virtual {v3, v5, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const-string v8, "Content-Type"

    const-string v9, "text/plain; charset=utf-8"

    invoke-virtual {v3, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v3, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget-boolean v8, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v8, "__tsNow__"

    sget-object v9, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v9}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v9, Lcom/dynatrace/android/agent/TimeLineProvider;->a:Lcom/dynatrace/android/agent/DeviceStartTimeProvider;

    iget-wide v8, v8, Lcom/dynatrace/android/agent/DeviceStartTimeProvider;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    add-long/2addr v10, v8

    sget-object v8, Lcom/dynatrace/android/agent/events/eventsapi/EventPayloadUtility;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/dynatrace/android/agent/events/eventsapi/EventPayloadUtility;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "%%SEND_NOW%%"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v9, "utf-8"

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_3
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v9}, Lcom/dynatrace/android/agent/util/Utility;->j(Ljava/io/FilterInputStream;)[B

    move-result-object v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v3

    goto/16 :goto_c

    :catch_0
    const/4 v9, 0x0

    :catch_1
    :try_start_4
    sget-boolean v10, Lcom/dynatrace/android/agent/Global;->a:Z

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    array-length v13, v10

    if-lt v13, v11, :cond_4

    aget-byte v13, v10, v12

    const/16 v14, 0x1f

    if-ne v13, v14, :cond_4

    aget-byte v13, v10, v5

    const/16 v14, -0x75

    if-ne v13, v14, :cond_4

    new-instance v13, Ljava/util/zip/GZIPInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v13}, Lcom/dynatrace/android/agent/util/Utility;->j(Ljava/io/FilterInputStream;)[B

    move-result-object v10

    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    sget-boolean v10, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v10, Lcom/dynatrace/android/agent/comm/HttpResponse;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-direct {v10, v2, v8, v13, v14}, Lcom/dynatrace/android/agent/comm/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget v2, v10, Lcom/dynatrace/android/agent/comm/HttpResponse;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v9, :cond_6

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_6
    :goto_5
    const/16 v3, 0xc8

    const-string v8, "DTX_BeaconSignal"

    iget-object v9, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v13, "dynaTraceMonitor"

    if-lt v2, v3, :cond_12

    const/16 v3, 0x12b

    if-gt v2, v3, :cond_12

    iget-object v2, v10, Lcom/dynatrace/android/agent/comm/HttpResponse;->c:Ljava/lang/String;

    if-eqz v2, :cond_11

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "invalid message protocol"

    iget-object v15, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->f:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;

    if-eqz v3, :cond_8

    sget-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-eq v6, v0, :cond_7

    :try_start_6
    invoke-interface {v15, v1, v2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;->c(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/dynatrace/android/agent/comm/InvalidConfigurationException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_b

    :catch_3
    move-exception v0

    new-instance v1, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    invoke-direct {v1, v14, v0, v10}, Lcom/dynatrace/android/agent/comm/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dynatrace/android/agent/comm/HttpResponse;)V

    throw v1

    :cond_7
    new-instance v0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    const-string v1, "invalid configuration format"

    invoke-direct {v0, v1, v10}, Lcom/dynatrace/android/agent/comm/InvalidResponseException;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/comm/HttpResponse;)V

    throw v0

    :cond_8
    sget-object v1, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move/from16 p2, v5

    move v5, v12

    :goto_6
    if-ge v5, v3, :cond_a

    aget-object v7, v2, v5

    move/from16 p3, v12

    const-string v12, "="

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v12, v7

    if-eq v12, v11, :cond_9

    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    aget-object v12, v7, p3

    aget-object v7, v7, p2

    invoke-virtual {v1, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move/from16 v12, p3

    goto :goto_6

    :cond_a
    move-object v7, v1

    :goto_7
    if-eqz v7, :cond_10

    const-string v1, "type"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v15, v7, v6}, Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;->d(Ljava/util/HashMap;Lcom/dynatrace/android/agent/conf/AgentMode;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v6, v2, :cond_e

    const-string v2, "bn"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_b

    goto :goto_8

    :cond_b
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    goto :goto_9

    :cond_c
    :goto_8
    move-object v2, v13

    :goto_9
    iget-object v3, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    iput-object v2, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/dynatrace/android/agent/conf/Configuration;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->c:Ljava/lang/String;

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v2, v2, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_f

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    :goto_a
    move-object v0, v1

    goto :goto_b

    :cond_f
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a

    :goto_b
    return-object v0

    :cond_10
    new-instance v0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    invoke-direct {v0, v14, v10}, Lcom/dynatrace/android/agent/comm/InvalidResponseException;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/comm/HttpResponse;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    const-string v1, "no message body"

    invoke-direct {v0, v1, v10}, Lcom/dynatrace/android/agent/comm/InvalidResponseException;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/comm/HttpResponse;)V

    throw v0

    :cond_12
    const/16 v1, 0x194

    if-ne v2, v1, :cond_13

    sget-object v1, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v6, v1, :cond_13

    iget-object v1, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    iput-object v13, v0, Lcom/dynatrace/android/agent/comm/RequestExecutor;->b:Ljava/lang/String;

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_13
    new-instance v0, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    const-string v1, "invalid response code "

    invoke-static {v2, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/dynatrace/android/agent/comm/InvalidResponseException;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/comm/HttpResponse;)V

    throw v0

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_0

    :goto_c
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    if-eqz v9, :cond_15

    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :catch_4
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_15
    :goto_d
    throw v0
.end method
