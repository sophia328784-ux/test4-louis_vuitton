.class public Lcom/lightup/sdk/device/model/device/DeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;
    }
.end annotation


# instance fields
.field private final additional:[B

.field private final pairingId:[B

.field private final patternId:[B

.field private final serialNumber:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->c(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    const/16 v2, 0x16

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->c(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->c(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->additional:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->pairingId:[B

    return-void

    :cond_0
    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;-><init>()V

    throw p0
.end method

.method public constructor <init>([B[B[B)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 58
    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    .line 60
    iput-object p2, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    const/4 p1, 0x0

    .line 61
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->pairingId:[B

    .line 62
    iput-object p3, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->additional:[B

    return-void

    .line 63
    :cond_0
    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;-><init>()V

    throw p0

    .line 64
    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;-><init>()V

    throw p0
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 66
    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    .line 68
    iput-object p2, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    .line 69
    iput-object p3, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->additional:[B

    .line 70
    iput-object p4, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->pairingId:[B

    return-void

    .line 71
    :cond_0
    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;-><init>()V

    throw p0

    .line 72
    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;

    invoke-direct {p0}, Lcom/lightup/sdk/device/model/device/DeviceId$WrongDeviceIdFormat;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/lightup/sdk/device/model/device/DeviceId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/lightup/sdk/device/model/device/DeviceId;

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    iget-object p1, p1, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public getAdditional()[B
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->additional:[B

    return-object p0
.end method

.method public getHardwareVersion()B
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    return p0
.end method

.method public getPairingId()[B
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->pairingId:[B

    return-object p0
.end method

.method public getProductId()[B
    .locals 1

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v1, p0, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringProductId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/lightup/sdk/device/model/device/DeviceId;->getProductId()[B

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v1, p0, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toByteArray()[B
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->serialNumber:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->patternId:[B

    array-length v2, v1

    invoke-static {v2, v1, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceId;->additional:[B

    array-length v1, p0

    invoke-static {v1, p0, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->g(I[BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
