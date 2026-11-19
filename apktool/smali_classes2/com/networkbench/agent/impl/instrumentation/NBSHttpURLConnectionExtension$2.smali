.class Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->getErrorStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    const/16 p1, 0xce

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->c(Ljava/net/URLConnection;)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    move-wide v1, v3

    :cond_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    :cond_1
    return-void
.end method

.method public streamError(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streamError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->b(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesReceived(J)V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;Ljava/lang/Exception;)V

    return-void
.end method
