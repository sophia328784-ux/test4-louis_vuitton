.class Lcom/linkplay/request/LPNetwork$1;
.super Lcom/linkplay/network/HttpRequestUtils$ResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/request/LPNetwork;->get(Ljava/lang/String;Ljava/util/List;Lcom/linkplay/request/LPNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/request/LPNetworkListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/request/LPNetwork;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/request/LPNetwork$1;->val$listener:Lcom/linkplay/request/LPNetworkListener;

    invoke-direct {p0}, Lcom/linkplay/network/HttpRequestUtils$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/request/LPNetwork$1;->val$listener:Lcom/linkplay/request/LPNetworkListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/request/LPNetwork$1;->val$listener:Lcom/linkplay/request/LPNetworkListener;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lcom/linkplay/network/LPNetworkResponseItem;

    invoke-direct {p1}, Lcom/linkplay/network/LPNetworkResponseItem;-><init>()V

    iput-object v0, p1, Lcom/linkplay/network/LPNetworkResponseItem;->body:Ljava/lang/String;

    iget-object v0, p0, Lcom/linkplay/request/LPNetwork$1;->val$listener:Lcom/linkplay/request/LPNetworkListener;

    invoke-virtual {v0, p1}, Lcom/linkplay/request/LPNetworkListener;->onSuccess(Lcom/linkplay/network/LPNetworkResponseItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/linkplay/request/LPNetwork$1;->val$listener:Lcom/linkplay/request/LPNetworkListener;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "requese callback exception"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
