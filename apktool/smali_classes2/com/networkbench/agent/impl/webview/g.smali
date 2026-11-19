.class public Lcom/networkbench/agent/impl/webview/g;
.super Lcom/networkbench/agent/impl/webview/l;
.source "SourceFile"


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/webview/l;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/harvest/ActionData;
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/harvest/ActionData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;-><init>(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setDataTag(Ljava/util/Map;)V

    iget v1, p0, Lcom/networkbench/agent/impl/webview/g;->f:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setStatusCode(I)V

    iget v1, p0, Lcom/networkbench/agent/impl/webview/g;->f:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorCode(I)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/webview/g;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/webview/g;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->setRequestMethod(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V

    :cond_0
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/networkbench/agent/impl/webview/g;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/g;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/g;->i:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/webview/g;->h:Ljava/lang/String;

    return-void
.end method
