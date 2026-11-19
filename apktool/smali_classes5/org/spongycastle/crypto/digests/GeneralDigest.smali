.class public abstract Lorg/spongycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# instance fields
.field public final a:[B

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    .line 30
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->c(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->b([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget v3, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p2, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->g([BI)V

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    move v0, v5

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int v1, p1, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p2, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->g([BI)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, p1, :cond_4

    iget v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    return-void
.end method

.method public final c(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 4

    iget-object v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    return-void
.end method

.method public final d()V
    .locals 3

    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->i(B)V

    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->i(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->f(J)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->e()V

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f(J)V
.end method

.method public abstract g([BI)V
.end method

.method public h()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(B)V
    .locals 4

    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->a:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->g([BI)V

    iput p1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->b:I

    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->c:J

    return-void
.end method
