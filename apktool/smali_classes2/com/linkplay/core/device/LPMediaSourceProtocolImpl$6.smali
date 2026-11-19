.class Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;
.super Lcom/linkplay/network/HttpRequestUtils$ResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpMethod;Ljava/lang/String;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;Lcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    invoke-direct {p0}, Lcom/linkplay/network/HttpRequestUtils$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send command failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p0, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$6;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
