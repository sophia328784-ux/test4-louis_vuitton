.class Lcom/linkplay/core/device/LPDevicePlayerImpl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->browseCurrentQueue(Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

.field final synthetic val$albumInfoData:Ljava/lang/String;

.field final synthetic val$infoParam:Lcom/linkplay/mediainfo/LPMediaInfo;

.field final synthetic val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$albumInfoData:Ljava/lang/String;

    iput-object p4, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$infoParam:Lcom/linkplay/mediainfo/LPMediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QueueContext"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/linkplay/mediainfo/parser/LPCurrentQueueController;->convert2CurrentQueueItem(Ljava/lang/String;)Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$albumInfoData:Ljava/lang/String;

    iget-object v2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$infoParam:Lcom/linkplay/mediainfo/LPMediaInfo;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-static {v0, v1, v2, p1, p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->e(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/mediainfo/LPMediaInfo;Lcom/linkplay/mediainfo/parser/LPSourceCurrentQueueItem;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$15;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_2

    const-string p1, "next play failed"

    invoke-static {p1, p0}, Ln00;->B(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    :cond_2
    return-void
.end method
