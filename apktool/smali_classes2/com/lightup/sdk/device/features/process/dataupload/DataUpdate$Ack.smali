.class Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ack"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>([BI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x3

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;->a:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->b([B)J

    move-result-wide v0

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result p1

    int-to-long v2, p1

    sub-long v2, v0, v2

    int-to-long v4, p2

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    invoke-static {}, Lcom/lightup/sdk/device/utils/communication/Scheduling;->a()I

    move-result p1

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    :goto_0
    iput p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Ack;->b:I

    return-void

    :cond_1
    new-instance p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$BadAckException;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
