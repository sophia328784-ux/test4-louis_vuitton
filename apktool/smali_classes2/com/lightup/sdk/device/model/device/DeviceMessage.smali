.class public Lcom/lightup/sdk/device/model/device/DeviceMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final data:[B

.field private final epochTimestampPosition:I

.field private final refTimestampPosition:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->refTimestampPosition:I

    iput p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->epochTimestampPosition:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->refTimestampPosition:I

    .line 18
    iput p2, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->epochTimestampPosition:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    .line 13
    iput p2, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->refTimestampPosition:I

    .line 14
    iput p3, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->epochTimestampPosition:I

    return-void
.end method

.method public static getProcessedData(Lcom/lightup/sdk/device/model/device/DeviceMessage;)[B
    .locals 8

    iget v0, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->epochTimestampPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->refTimestampPosition:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result v0

    invoke-static {v0}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    iget v4, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->refTimestampPosition:I

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    sget-boolean v0, Lcom/lightup/sdk/device/utils/communication/Scheduling;->b:Z

    const-class v0, Lcom/lightup/sdk/device/utils/communication/Scheduling;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/lightup/sdk/device/utils/communication/Scheduling;->b:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/lightup/sdk/device/properties/Properties;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/lightup/sdk/device/utils/communication/Scheduling;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    invoke-static {v1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->d(I)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    iget v4, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->epochTimestampPosition:I

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/lightup/sdk/device/model/device/DeviceMessage;->data:[B

    return-object p0
.end method
