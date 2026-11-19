.class public final Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;
.super Lcom/lightup/sdk/device/features/commands/CommandFeature;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;",
        "Lcom/lightup/sdk/device/features/commands/CommandFeature;",
        "device",
        "Lcom/lightup/sdk/device/devicemanagement/BLEDevice;",
        "intensity",
        "",
        "<init>",
        "(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V",
        "getMessage",
        "Lcom/lightup/sdk/device/model/device/DeviceMessage;",
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
.field private final intensity:I


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/features/commands/CommandFeature;-><init>(Lcom/lightup/sdk/device/devicemanagement/BLEDevice;)V

    iput p2, p0, Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;->intensity:I

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 4

    iget p0, p0, Lcom/lightup/sdk/device/features/process/lightup/SendWalkingInfo;->intensity:I

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_AND_DEVICE_WALKING_INFO:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance v2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v2, p0, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object p0, v2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object v1
.end method
