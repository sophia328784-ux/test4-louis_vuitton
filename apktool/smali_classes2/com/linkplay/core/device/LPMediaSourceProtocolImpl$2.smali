.class Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPMediaSourceProtocolImpl;->LPGetUserInfoWithDeviceId(Ljava/lang/String;Ljava/lang/String;ZLcom/linkplay/lpmdpkit/callback/DeviceCallback;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get user info failed: "

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

    iget-object p0, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;->val$deviceCallback:Lcom/linkplay/lpmdpkit/callback/DeviceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/lpmdpkit/callback/DeviceCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "get user info result error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/core/device/LPMediaSourceProtocolImpl$2;->failure(Ljava/lang/Exception;)V

    return-void
.end method
