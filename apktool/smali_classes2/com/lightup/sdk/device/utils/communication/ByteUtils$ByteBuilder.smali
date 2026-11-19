.class public Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/utils/communication/ByteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteBuilder"
.end annotation


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 3

    iget v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    iget-object v1, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    return-void

    :cond_0
    invoke-static {}, Lzy0;->b()V

    return-void
.end method

.method public final b([B)V
    .locals 4

    iget v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    return-void

    :cond_0
    invoke-static {}, Lzy0;->b()V

    return-void
.end method

.method public final c(II)V
    .locals 4

    iget v0, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    add-int v1, v0, p2

    iget-object v2, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->a:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    invoke-static {p1, p2}, Lcom/lightup/sdk/device/utils/communication/ByteUtils;->e(II)[B

    move-result-object p1

    const/4 v1, 0x0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/lightup/sdk/device/utils/communication/ByteUtils$ByteBuilder;->b:I

    return-void

    :cond_0
    invoke-static {}, Lzy0;->b()V

    return-void
.end method
