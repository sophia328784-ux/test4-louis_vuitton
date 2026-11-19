.class public final Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lightup/sdk/device/features/process/listener/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;->setTriggerMax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1",
        "Lcom/lightup/sdk/device/features/process/listener/ActionListener;",
        "onDone",
        "",
        "onDeviceError",
        "error",
        "Lcom/lightup/sdk/device/features/process/errors/DeviceError;",
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
.field final synthetic this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1;->this$0:Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic onDeviceError(Ljava/lang/Enum;)V
    .locals 0

    check-cast p1, Lcom/lightup/sdk/device/features/process/errors/DeviceError;

    invoke-virtual {p0, p1}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$setTriggerMax$1;->onDeviceError(Lcom/lightup/sdk/device/features/process/errors/DeviceError;)V

    return-void
.end method

.method public onDone()V
    .locals 0

    return-void
.end method
