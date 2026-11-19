.class Lcom/linkplay/core/group/LPMultiroomManager$4;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->deviceJoinGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/group/LPMultiroomManager;

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

.field final synthetic val$source:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$target:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$target:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    iput-object p4, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "error response empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/core/group/LPMultiroomManager$4;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$target:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1, v0}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$source:Lcom/linkplay/core/device/LPDevice;

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$target:Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$4;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-static {p1, v0, v1, p0}, Lcom/linkplay/core/group/LPMultiroomManager;->f(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method
