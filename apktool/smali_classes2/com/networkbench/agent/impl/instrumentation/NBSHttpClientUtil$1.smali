.class Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/NBSNetworkProcessHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil;->processParamsAndHeader(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lorg/apache/http/HttpRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil$1;->a:Lorg/apache/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpClientUtil$1;->a:Lorg/apache/http/HttpRequest;

    invoke-interface {p0, p1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
