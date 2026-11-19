.class Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/squareup/okhttp/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/Request;

.field final synthetic b:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;Lcom/squareup/okhttp/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->b:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;

    iput-object p2, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->a:Lcom/squareup/okhttp/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->a:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->a:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/socket/r;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->b:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->b:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setOk2DnsFromThread(Z)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->b:Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;->a(Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/okhttp2/NBSCallExtension$1;->a:Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/r;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setDnsElapse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSCallExtension calcDnsTime  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
