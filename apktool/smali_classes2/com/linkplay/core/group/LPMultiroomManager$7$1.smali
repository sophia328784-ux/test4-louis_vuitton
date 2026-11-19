.class Lcom/linkplay/core/group/LPMultiroomManager$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

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
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v1, v1, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v0, p1, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/linkplay/core/group/LPMultiroomManager$7;->running:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager leave group success device: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object v0, v0, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LINKPLAY_SDK"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    iget-object p1, p1, Lcom/linkplay/core/group/LPMultiroomManager$7;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    const-string v0, "leave group success"

    invoke-interface {p1, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$7$1;->this$1:Lcom/linkplay/core/group/LPMultiroomManager$7;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$7;->running:Z

    :cond_1
    return-void
.end method
