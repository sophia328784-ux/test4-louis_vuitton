.class public final Landroidx/media3/common/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 8
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 11
    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->d:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget p0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->d:I

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget p0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    return p0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget p0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    return v0
.end method

.method public final g(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    iget-object v3, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v4, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return p1
.end method

.method public final h(I[B)V
    .locals 9

    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v6, v5, v6

    iget v8, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    return-void

    :cond_1
    aget-byte v2, p2, v0

    shr-int v5, v3, p1

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    iget v5, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int v6, v5, p1

    if-le v6, v4, :cond_2

    iget-object v6, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v7, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    sub-int/2addr v5, v4

    iput v5, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    :cond_2
    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/2addr v2, p1

    iput v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    iget-object v5, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    aget-byte v5, p2, v0

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v3, p1

    int-to-byte p1, p1

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    if-ne v2, v4, :cond_3

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final i(I)J
    .locals 5

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p0

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    int-to-long p0, p0

    and-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p0

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    int-to-long v3, p1

    and-long/2addr v3, v0

    shl-long v2, v3, v2

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public final j(I[B)V
    .locals 3

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    invoke-static {v0, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final k(I[B)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    const/4 p2, 0x0

    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    iput p2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->d:I

    return-void
.end method

.method public final l(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableBitArray;->k(I[B)V

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final n()V
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final o(I)V
    .locals 3

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    iget v2, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/util/ParsableBitArray;->b:I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->a()V

    return-void
.end method
