.class Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->praseInfoEx(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    sget-object v0, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_SLAVE:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    return-void
.end method
