.class Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDeviceSettingsImpl;->setSSIDPassword(Ljava/lang/String;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

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
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$8;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->success(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
