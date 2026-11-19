.class Lcom/linkplay/core/app/LPDeviceManager$2;
.super Lcom/linkplay/request/LPNetworkListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/app/LPDeviceManager;->setTimeZone(Lcom/linkplay/core/device/LPDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/linkplay/core/app/LPDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/request/LPNetworkListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set setTimezoneEx failed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/LPNetworkResponseItem;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/linkplay/request/LPNetworkListener;->onSuccess(Lcom/linkplay/network/LPNetworkResponseItem;)V

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/linkplay/network/LPNetworkResponseItem;->body:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set setTimezoneEx success "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
