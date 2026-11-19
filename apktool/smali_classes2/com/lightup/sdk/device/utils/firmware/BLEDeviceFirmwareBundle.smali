.class public Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public final d:[B

.field public final e:[B

.field public final f:I

.field public final g:[B

.field public final h:[B

.field public final i:I

.field public final j:[B

.field public final k:[B

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->b:[B

    iput p3, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->c:I

    iput-object p4, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->e:[B

    iput p5, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->f:I

    iput-object p6, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->i:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->k:[B

    iput p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->l:I

    new-instance p3, Ljava/util/zip/CRC32;

    invoke-direct {p3}, Ljava/util/zip/CRC32;-><init>()V

    array-length p5, p2

    invoke-virtual {p3, p2, p1, p5}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    long-to-int p2, p2

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p2

    iput-object p2, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    new-instance p2, Ljava/util/zip/CRC32;

    invoke-direct {p2}, Ljava/util/zip/CRC32;-><init>()V

    array-length p5, p4

    invoke-virtual {p2, p4, p1, p5}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p4

    long-to-int p2, p4

    invoke-static {p2, p3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p2

    iput-object p2, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->g:[B

    new-instance p2, Ljava/util/zip/CRC32;

    invoke-direct {p2}, Ljava/util/zip/CRC32;-><init>()V

    array-length p4, p6

    invoke-virtual {p2, p6, p1, p4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p1, p3}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI[BI[BI)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->a:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->b:[B

    .line 88
    iput p3, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->c:I

    .line 89
    iput-object p4, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->h:[B

    .line 90
    iput p5, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->i:I

    .line 91
    iput-object p6, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->k:[B

    .line 92
    iput p7, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->l:I

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->e:[B

    const/4 p3, 0x0

    .line 94
    iput p3, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->f:I

    .line 95
    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->g:[B

    .line 96
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 97
    array-length p5, p2

    invoke-virtual {p1, p2, p3, p5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 98
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->d:[B

    .line 99
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 100
    array-length p5, p4

    invoke-virtual {p1, p4, p3, p5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 101
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p3

    long-to-int p1, p3

    invoke-static {p1, p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/firmware/BLEDeviceFirmwareBundle;->j:[B

    return-void
.end method
