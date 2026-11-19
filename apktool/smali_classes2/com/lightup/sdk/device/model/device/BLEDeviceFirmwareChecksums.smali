.class public Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bootloaderChecksum:[B

.field public final firmwareChecksum:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->firmwareChecksum:[B

    iput-object p2, p0, Lcom/lightup/sdk/device/model/device/BLEDeviceFirmwareChecksums;->bootloaderChecksum:[B

    return-void
.end method
