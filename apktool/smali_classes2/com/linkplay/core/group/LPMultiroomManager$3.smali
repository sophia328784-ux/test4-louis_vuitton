.class Lcom/linkplay/core/group/LPMultiroomManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/group/LPMultiroomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->privateLeaveSlaveDevice(Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/group/LPMultiroomManager;

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

.field final synthetic val$slaveDevice:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget v1, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LPMultiroomManager slaveDevice leave Group failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget-boolean v3, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupFailed:Z

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager slaveDevice leave Group failed leaveGroupFailed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean v2, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupFailed:Z

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "leave group failed -1002. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget v1, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LPMultiroomManager slaveDevice leave Group success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget-boolean v0, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupFailed:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager deviceLeaveGroup success leaveGroupFailed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$slaveDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget v1, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupIndex:I

    iget v0, v0, Lcom/linkplay/core/group/LPMultiroomManager;->leaveGroupCount:I

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$3;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
