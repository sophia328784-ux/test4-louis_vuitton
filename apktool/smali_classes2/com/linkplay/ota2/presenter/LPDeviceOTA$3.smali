.class Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareUpdateFinish(Lcom/linkplay/ota2/model/OTAStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

.field final synthetic val$device:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    iput-object p2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$device:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatusEx onFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPDeviceOTA"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$device:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "LPDeviceOTA"

    if-eqz p1, :cond_0

    const-string p1, "otaFailed 2222"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$device:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firmwareUpdateFinish targetFWVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->g(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fimrware: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  targetMCUVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->h(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mcu_ver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMCUVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->g(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->g(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "otaFailed 3333"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->h(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->h(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMCUVer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "otaFailed 4444"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setDownloadPercent(I)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setUpdatePercent(I)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setRebootPercent(I)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/linkplay/ota2/model/OTAStatus;->setRemainTime(J)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$otaStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-interface {p1, v0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaStatusUpdated(Lcom/linkplay/ota2/model/OTAStatus;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;->val$device:Lcom/linkplay/core/device/LPDevice;

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaSuccess(Lcom/linkplay/core/device/LPDevice;)V

    :cond_3
    return-void
.end method
