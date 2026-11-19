.class Lcom/linkplay/core/group/LPMultiroomManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/group/LPMultiroomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->privateOperateSlaveDevice(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/group/LPMultiroomManager;

.field final synthetic val$addGroupDeivces:Ljava/util/List;

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

.field final synthetic val$lpDevice:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$addGroupDeivces:Ljava/util/List;

    iput-object p4, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LPMultiroomManager \u5f53\u524d\u8bbe\u5907\u662f\u5b50\u8bbe\u5907\uff0c\u89e3\u7ec4\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slave device change master failed -1000. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager \u5f53\u524d\u8bbe\u5907\u662f\u5b50\u8bbe\u5907\uff0c\u89e3\u7ec4\u6210\u529f: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LINKPLAY_SDK"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1, v0}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$addGroupDeivces:Ljava/util/List;

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$1;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-static {p1, v0, v1, p0}, Lcom/linkplay/core/group/LPMultiroomManager;->h(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method
