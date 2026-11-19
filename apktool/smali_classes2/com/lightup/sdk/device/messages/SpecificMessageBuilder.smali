.class public Lcom/lightup/sdk/device/messages/SpecificMessageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWalkingModeConfig(Lcom/lightup/sdk/device/model/WalkingModeConfig;)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 4

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_SET_WALKING_MODE:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v1, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    new-instance v2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/WalkingModeConfig;->getMessageData()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b([B)V

    iget-object p0, v2, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object v1
.end method
