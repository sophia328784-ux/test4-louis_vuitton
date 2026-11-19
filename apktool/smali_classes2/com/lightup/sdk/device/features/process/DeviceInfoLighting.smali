.class public Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;
.super Lcom/lightup/sdk/device/features/process/DeviceInfo;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Lcom/lightup/sdk/device/features/process/DeviceInfo;-><init>()V

    array-length v0, p1

    sget-object v1, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_SEND_STATUS:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {v1}, Lcom/lightup/sdk/device/messages/MessageInfo;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    iput v1, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->a:I

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->c:I

    return-void

    :cond_0
    sget-object p0, Lcom/lightup/sdk/device/messages/MessageInfo;->DEVICE_TO_SMARTPHONE_DEVICE_INFO:Lcom/lightup/sdk/device/messages/MessageInfo;

    invoke-virtual {p0}, Lcom/lightup/sdk/device/messages/MessageInfo;->c()I

    move-result p0

    const-string v0, ", found: "

    array-length p1, p1

    const-string v1, "bad length in input of DeviceInfo, should be: "

    invoke-static {v0, p0, p1, v1}, Lv7;->e(Ljava/lang/Object;IILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfoLighting{trigger="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lightup/sdk/device/features/process/DeviceInfoLighting;->c:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
