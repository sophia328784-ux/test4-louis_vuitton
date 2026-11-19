.class Lcom/linkplay/passthrough/LPPassthrough$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/passthrough/LPPassthrough;->onLooperPrepared()V
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

    iput-object p1, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/linkplay/passthrough/LPPassthrough;->j(Lcom/linkplay/passthrough/LPPassthrough;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/passthrough/LPPassthrough;->f(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v3}, Lcom/linkplay/passthrough/LPPassthrough;->a(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/linkplay/passthrough/LPPassthrough;->b(Lcom/linkplay/passthrough/LPPassthrough;)I

    move-result v3

    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/linkplay/passthrough/LPPassthrough;->e(Lcom/linkplay/passthrough/LPPassthrough;Ljava/nio/channels/Selector;)V

    iget-object v0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->d(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-static {v0}, Lcom/linkplay/passthrough/LPPassthrough;->c(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v2, v0, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/linkplay/passthrough/LPPassthrough;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/linkplay/passthrough/LPPassthrough$1$1;

    invoke-direct {v1, p0}, Lcom/linkplay/passthrough/LPPassthrough$1$1;-><init>(Lcom/linkplay/passthrough/LPPassthrough$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    iget-object v2, v2, Lcom/linkplay/passthrough/LPPassthrough;->iUartPresenter:Lcom/linkplay/passthrough/LPPassthroughListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/linkplay/passthrough/LPPassthroughListener;->onException(Ljava/lang/Exception;I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/passthrough/LPPassthrough$1;->this$0:Lcom/linkplay/passthrough/LPPassthrough;

    invoke-static {p0}, Lcom/linkplay/passthrough/LPPassthrough;->g(Lcom/linkplay/passthrough/LPPassthrough;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "initialization IOException: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "e"

    const-string v1, "LPPassthrough"

    invoke-static {v0, v1, p0}, Lcom/linkplay/passthrough/LPUartLogUtil;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
