.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->updateAnimations(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2",
        "Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;",
        "onError",
        "",
        "dataUploadError",
        "Lcom/lightup/sdk/device/enums/DataUploadError;",
        "onCompleted",
        "onProgress",
        "progress",
        "",
        "library"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    iput-object p2, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    invoke-interface {v0}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onCompleted()V

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->access$setTriggerMax(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V

    return-void
.end method

.method public onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    invoke-interface {p0, p1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$updateAnimations$2;->$listener:Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    invoke-interface {p0, p1, p2}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onProgress(D)V

    return-void
.end method
