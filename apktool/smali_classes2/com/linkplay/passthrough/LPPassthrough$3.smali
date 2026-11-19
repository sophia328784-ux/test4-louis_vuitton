.class Lcom/linkplay/passthrough/LPPassthrough$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/passthrough/LPPassthrough;->disConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/passthrough/LPPassthrough;


# direct methods
.method public constructor <init>(Lcom/linkplay/passthrough/LPPassthrough;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "finally closeSocket IOException:"

    const-string v1, "e"

    const-string v2, "LPPassthrough"

    iget-object v3, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/linkplay/passthrough/LPPassthrough;->j(Lcom/linkplay/passthrough/LPPassthrough;Z)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "i"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v6}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "closeSocket"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto/16 :goto_7

    :catch_0
    move-exception v4

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_1
    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownOutput()V

    :cond_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_3
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_1
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_6
    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownOutput()V

    :cond_7
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_8
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {p0}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v6}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "closeSocket IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_3
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownInput()V

    :cond_a
    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Ljava/net/Socket;->shutdownOutput()V

    :cond_b
    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_c
    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4, v3}, Lcom/linkplay/passthrough/LPPassthrough;->f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {p0}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void

    :goto_7
    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_4
    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v5}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V

    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v5, v3}, Lcom/linkplay/passthrough/LPPassthrough;->e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V

    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_9

    :cond_e
    :goto_8
    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v5}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    :cond_f
    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownOutput()V

    :cond_10
    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    :cond_11
    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v5}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v5, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v5, v3}, Lcom/linkplay/passthrough/LPPassthrough;->f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$3;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {p0}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_a
    throw v4
.end method
