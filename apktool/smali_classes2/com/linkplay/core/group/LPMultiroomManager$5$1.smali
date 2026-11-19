.class Lcom/linkplay/core/group/LPMultiroomManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager$5;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LPMultiroomManager checkoutJoinResult:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  sourceuuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sourceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  targetuuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$target:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$target:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$target:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v2, v2, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v2, v2, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object v0, p1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/linkplay/core/group/LPMultiroomManager$5;->running:Z

    if-eqz p1, :cond_1

    const-string p1, "LPMultiroomManager \u52a0\u7ec4\u6210\u529f"

    invoke-static {v1, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    iget-object p1, p1, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    const-string v0, "join group success"

    invoke-interface {p1, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$5;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->running:Z

    :cond_1
    return-void
.end method
