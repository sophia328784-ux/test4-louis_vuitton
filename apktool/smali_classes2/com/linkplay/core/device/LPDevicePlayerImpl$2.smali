.class Lcom/linkplay/core/device/LPDevicePlayerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->playQueueWithIndex(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

.field final synthetic val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    invoke-static {v1}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->a(Lcom/linkplay/core/device/LPDevicePlayerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Success"

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$2;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onSuccess(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
