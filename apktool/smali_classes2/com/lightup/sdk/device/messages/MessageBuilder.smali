.class public Lcom/lightup/sdk/device/messages/MessageBuilder;
.super Lcom/lightup/sdk/device/messages/GenericMessageBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_GO_TO_OFF:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    const/16 v2, -0x22

    aput-byte v2, v1, v0

    const/4 v0, 0x2

    const/16 v2, -0x53

    aput-byte v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, -0x36

    aput-byte v2, v1, v0

    const/4 v0, 0x4

    const/4 v2, -0x2

    aput-byte v2, v1, v0

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {v0, v1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object v0
.end method

.method public static b(II[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 2

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_PROGRAM_UPDATE_PAGE_DATA:Lcom/lightup/sdk/device/messages/MessageInfo;

    new-instance v1, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    add-int/lit8 p0, p0, 0x3

    invoke-direct {v1, p0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result p0

    invoke-virtual {v1, p0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a(B)V

    const/4 p0, 0x2

    invoke-virtual {v1, p1, p0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v1, p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b([B)V

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    iget-object p1, v1, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    invoke-direct {p0, p1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object p0
.end method

.method public static c(IZ)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 5

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_TRIGGER_ANIMATION:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x2

    new-array v4, v3, [B

    aput-byte v0, v4, v2

    const/4 v0, 0x1

    aput-byte p0, v4, v0

    aget-byte p0, v4, v0

    aput-byte p0, v1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    int-to-byte p0, v0

    aput-byte p0, v1, v3

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p0, v1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object p0
.end method

.method public static d([B[B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
    .locals 4

    sget-object v0, Lcom/lightup/sdk/device/messages/MessageInfo;->SMARTPHONE_TO_DEVICE_UNLOCK:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->d()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lcom/lightup/sdk/device/messages/MessageInfo;->b()B

    move-result v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    const/16 v3, 0x10

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x11

    const/4 v0, 0x2

    invoke-static {p1, v2, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;

    invoke-direct {p0, v1}, Lcom/lightup/sdk/device/model/device/DeviceMessage;-><init>([B)V

    return-object p0
.end method
