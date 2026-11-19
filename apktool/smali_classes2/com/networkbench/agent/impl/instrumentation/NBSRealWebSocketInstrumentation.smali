.class public Lcom/networkbench/agent/impl/instrumentation/NBSRealWebSocketInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSRealWebSocketInstrumentation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCollection()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result v0

    return v0
.end method

.method public static onReadPong(Ljava/lang/Object;Lokio/ByteString;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSRealWebSocketInstrumentation;->isCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lokhttp3/internal/ws/RealWebSocket;

    if-eqz v0, :cond_1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocketListener;

    instance-of v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->onReadPong(Lokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSRealWebSocketInstrumentation"

    const-string v0, "websocket onReadPong"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static send(Ljava/lang/Object;Lokio/ByteString;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSRealWebSocketInstrumentation;->isCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lokhttp3/internal/ws/RealWebSocket;

    if-eqz v0, :cond_1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocketListener;

    instance-of v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->send(Lokio/ByteString;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "NBSRealWebSocketInstrumentation"

    const-string p2, "websocket send"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static writePingFrame(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSRealWebSocketInstrumentation;->isCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lokhttp3/internal/ws/RealWebSocket;

    if-eqz v0, :cond_1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocketListener;

    instance-of v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->writePingFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSRealWebSocketInstrumentation"

    const-string v1, "websocket send"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
