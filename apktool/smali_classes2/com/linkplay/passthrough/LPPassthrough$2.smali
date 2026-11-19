.class Lcom/linkplay/passthrough/LPPassthrough$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/passthrough/LPPassthrough;->sendCommand(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/passthrough/LPPassthrough;

.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    iput-object p2, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->h(Lcom/linkplay/passthrough/LPPassthrough;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "e"

    const-string v2, "LPPassthrough"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v4}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SocketChannel.write() IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :goto_1
    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0

    :cond_1
    :goto_2
    return-void
.end method
