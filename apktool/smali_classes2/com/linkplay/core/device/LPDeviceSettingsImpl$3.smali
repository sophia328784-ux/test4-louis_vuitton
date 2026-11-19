.class Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDeviceSettingsImpl;->getUSBDiskStatus(Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

.field final synthetic val$lpDevice:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUsb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$3;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p1, :cond_0

    const-string p1, "0"

    invoke-interface {p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->success(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "1"

    invoke-interface {p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->success(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
