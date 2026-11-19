.class public Lcom/lightup/sdk/device/model/WalkingModeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private brightnessMoving:I

.field private brightnessStanding:I

.field private duration:I

.field private threshold:I

.field private zones:[Z


# direct methods
.method public constructor <init>(II[ZII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->duration:I

    .line 39
    iput p2, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->threshold:I

    .line 40
    iput p4, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessMoving:I

    .line 41
    iput p5, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessStanding:I

    .line 42
    iput-object p3, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    .line 43
    array-length p1, p3

    :goto_0
    const/4 p2, 0x7

    if-ge p1, p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    const/4 p3, 0x0

    aput-boolean p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/lightup/sdk/device/model/WalkingModeConfig;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;

    iget v0, p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;->duration:I

    iput v0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->duration:I

    iget v0, p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;->threshold:I

    iput v0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->threshold:I

    iget v0, p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessMoving:I

    iput v0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessMoving:I

    iget v0, p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessStanding:I

    iput v0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessStanding:I

    iget-object p1, p1, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    iput-object p1, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    return-void
.end method


# virtual methods
.method public getBrightnessMoving()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessMoving:I

    return p0
.end method

.method public getBrightnessStanding()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessStanding:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->duration:I

    return p0
.end method

.method public getMessageData()[B
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-boolean v2, v2, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;-><init>(I)V

    iget v2, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->duration:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget v2, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->threshold:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    invoke-virtual {v1, v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b([B)V

    iget v0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessMoving:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->brightnessStanding:I

    invoke-virtual {v1, p0, v2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->c(II)V

    iget-object p0, v1, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    return-object p0
.end method

.method public getThreshold()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->threshold:I

    return p0
.end method

.method public getZones()[Z
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/model/WalkingModeConfig;->zones:[Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
