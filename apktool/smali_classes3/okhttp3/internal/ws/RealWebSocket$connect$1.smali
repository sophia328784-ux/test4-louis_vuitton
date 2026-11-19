.class public final Lokhttp3/internal/ws/RealWebSocket$connect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/ws/RealWebSocket;->connect(Lokhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "okhttp3/internal/ws/RealWebSocket$connect$1",
        "Lokhttp3/Callback;",
        "onResponse",
        "",
        "call",
        "Lokhttp3/Call;",
        "response",
        "Lokhttp3/Response;",
        "onFailure",
        "e",
        "Ljava/io/IOException;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $request:Lokhttp3/Request;

.field final synthetic this$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/Request;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket$default(Lokhttp3/internal/ws/RealWebSocket;Ljava/lang/Exception;Lokhttp3/Response;ZILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, v2}, Lokhttp3/internal/ws/RealWebSocket;->checkUpgradeSuccess$okhttp(Lokhttp3/Response;)Lokio/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lokhttp3/internal/ws/WebSocketExtensions;->g:Lokhttp3/internal/ws/WebSocketExtensions$Companion;

    iget-object v4, v2, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v5, 0x0

    move v7, v5

    move v9, v7

    move v11, v9

    move v13, v11

    move v14, v13

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v7, v3, :cond_13

    invoke-virtual {v4, v7}, Lokhttp3/Headers;->f(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "Sec-WebSocket-Extensions"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move/from16 v17, v3

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v4, v7}, Lokhttp3/Headers;->m(I)Ljava/lang/String;

    move-result-object v6

    move v8, v5

    const/16 v16, 0x1

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v8, v15, :cond_0

    const/16 v15, 0x2c

    move/from16 v17, v3

    const/4 v3, 0x4

    invoke-static {v6, v15, v8, v5, v3}, Lokhttp3/internal/_UtilCommonKt;->g(Ljava/lang/String;CIII)I

    move-result v3

    const/16 v15, 0x3b

    invoke-static {v6, v8, v3, v15}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v5

    invoke-static {v8, v5, v6}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v8

    invoke-static {v8, v5, v6}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    const-string v15, "permessage-deflate"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v9, :cond_2

    move/from16 v14, v16

    :cond_2
    move v8, v5

    :goto_2
    if-ge v8, v3, :cond_11

    const/16 v5, 0x3b

    invoke-static {v6, v8, v3, v5}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v9

    const/16 v15, 0x3d

    invoke-static {v6, v8, v9, v15}, Lokhttp3/internal/_UtilCommonKt;->f(Ljava/lang/String;IIC)I

    move-result v15

    invoke-static {v8, v15, v6}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v8

    invoke-static {v8, v15, v6}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-ge v15, v9, :cond_3

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15, v9, v6}, Lokhttp3/internal/_UtilCommonKt;->j(IILjava/lang/String;)I

    move-result v8

    invoke-static {v8, v9, v6}, Lokhttp3/internal/_UtilCommonKt;->k(IILjava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v15, "\""

    invoke-static {v8, v15, v15}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const-string v15, "client_max_window_bits"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    if-eqz v10, :cond_4

    move/from16 v14, v16

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v10, v5

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-nez v10, :cond_7

    :cond_6
    :goto_5
    move v8, v9

    move/from16 v14, v16

    goto :goto_2

    :cond_7
    move v8, v9

    goto :goto_2

    :cond_8
    const-string v15, "client_no_context_takeover"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    if-eqz v11, :cond_9

    move/from16 v14, v16

    :cond_9
    if-eqz v8, :cond_a

    move/from16 v14, v16

    :cond_a
    move v8, v9

    move/from16 v11, v16

    goto :goto_2

    :cond_b
    const-string v15, "server_max_window_bits"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    if-eqz v12, :cond_c

    move/from16 v14, v16

    :cond_c
    if-eqz v8, :cond_d

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v12, v5

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    :goto_6
    if-nez v12, :cond_7

    goto :goto_5

    :cond_e
    const-string v15, "server_no_context_takeover"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v13, :cond_f

    move/from16 v14, v16

    :cond_f
    if-eqz v8, :cond_10

    move/from16 v14, v16

    :cond_10
    move v8, v9

    move/from16 v13, v16

    goto/16 :goto_2

    :cond_11
    move/from16 v9, v16

    :goto_7
    move/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_12
    move v8, v5

    move/from16 v14, v16

    goto :goto_7

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v16, 0x1

    new-instance v8, Lokhttp3/internal/ws/WebSocketExtensions;

    invoke-direct/range {v8 .. v14}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    iget-object v3, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-static {v3, v8}, Lokhttp3/internal/ws/RealWebSocket;->access$setExtensions$p(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)V

    iget-object v3, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-static {v3, v8}, Lokhttp3/internal/ws/RealWebSocket;->access$isValid(Lokhttp3/internal/ws/RealWebSocket;Lokhttp3/internal/ws/WebSocketExtensions;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    monitor-enter v3

    :try_start_1
    invoke-static {v3}, Lokhttp3/internal/ws/RealWebSocket;->access$getMessageAndCloseQueue$p(Lokhttp3/internal/ws/RealWebSocket;)Ljava/util/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    const-string v4, "unexpected Sec-WebSocket-Extensions in response header"

    const/16 v5, 0x3f2

    invoke-virtual {v3, v5, v4}, Lokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_14
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lokhttp3/internal/_UtilJvmKt;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WebSocket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lokhttp3/Request;

    iget-object v4, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    invoke-direct {v5, v0}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/Socket;)V

    move/from16 v0, v16

    invoke-virtual {v4, v3, v5, v0}, Lokhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lokhttp3/internal/connection/BufferedSocket;Z)V

    iget-object v0, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, v2}, Lokhttp3/internal/ws/RealWebSocket;->loopReader(Lokhttp3/Response;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Lokhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lokhttp3/internal/ws/RealWebSocket;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/ws/RealWebSocket;->failWebSocket$default(Lokhttp3/internal/ws/RealWebSocket;Ljava/lang/Exception;Lokhttp3/Response;ZILjava/lang/Object;)V

    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    iget-object v0, v2, Lokhttp3/Response;->i:Lokio/Socket;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lokio/Socket;->a()Lokio/Sink;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_15
    iget-object v0, v2, Lokhttp3/Response;->i:Lokio/Socket;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lokio/Socket;->getSource()Lokio/Source;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_16
    return-void
.end method
