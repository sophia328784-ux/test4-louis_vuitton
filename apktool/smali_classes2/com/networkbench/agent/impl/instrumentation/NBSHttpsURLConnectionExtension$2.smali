.class Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

.field final synthetic b:Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->b:Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->b:Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V

    :cond_1
    return-void
.end method

.method public streamError(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension$2;->b:Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;->a(Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;Ljava/lang/Exception;)V

    return-void
.end method
