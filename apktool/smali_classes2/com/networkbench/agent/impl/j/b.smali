.class public Lcom/networkbench/agent/impl/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:B

.field private b:B

.field private c:B

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(BBBIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/networkbench/agent/impl/j/b;->a:B

    iput-byte p2, p0, Lcom/networkbench/agent/impl/j/b;->b:B

    iput-byte p3, p0, Lcom/networkbench/agent/impl/j/b;->c:B

    iput p4, p0, Lcom/networkbench/agent/impl/j/b;->d:I

    iput p5, p0, Lcom/networkbench/agent/impl/j/b;->e:I

    iput p6, p0, Lcom/networkbench/agent/impl/j/b;->f:I

    return-void
.end method

.method public static a([B)Lcom/networkbench/agent/impl/j/b;
    .locals 11

    .line 99
    invoke-static {p0}, Lcom/networkbench/agent/impl/j/b;->b([B)J

    move-result-wide v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    and-long/2addr v2, v0

    const/16 p0, 0x3e

    ushr-long/2addr v2, p0

    long-to-int p0, v2

    int-to-byte v4, p0

    const-wide/high16 v2, 0x3800000000000000L    # 5.8774717541114375E-39

    and-long/2addr v2, v0

    const/16 p0, 0x3b

    ushr-long/2addr v2, p0

    long-to-int p0, v2

    int-to-byte v3, p0

    const-wide/high16 v5, 0x700000000000000L

    and-long/2addr v5, v0

    const/16 p0, 0x38

    ushr-long/2addr v5, p0

    long-to-int p0, v5

    int-to-byte v5, p0

    const-wide v6, 0xfc000000000L

    and-long/2addr v6, v0

    const/16 p0, 0x26

    ushr-long/2addr v6, p0

    long-to-int v8, v6

    const-wide v6, 0x3ff8000000L

    and-long/2addr v6, v0

    const/16 p0, 0x1b

    ushr-long/2addr v6, p0

    long-to-int v7, v6

    const-wide/32 v9, 0x7ffffff

    and-long/2addr v0, v9

    long-to-int v6, v0

    .line 100
    new-instance v2, Lcom/networkbench/agent/impl/j/b;

    invoke-direct/range {v2 .. v8}, Lcom/networkbench/agent/impl/j/b;-><init>(BBBIII)V

    return-object v2
.end method

.method public static a(I)[B
    .locals 5

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 103
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static a(J)[B
    .locals 11

    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const-wide/high16 v1, 0xff000000000000L

    and-long/2addr v1, p0

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    const-wide v4, 0xff000000L

    and-long/2addr v4, p0

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, p0

    const/16 v7, 0x10

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    const-wide/32 v6, 0xff00

    and-long/2addr v6, p0

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    const-wide/16 v9, 0xff

    and-long/2addr p0, v9

    long-to-int p0, p0

    int-to-byte p0, p0

    new-array p1, v8, [B

    const/4 v7, 0x0

    aput-byte v0, p1, v7

    const/4 v0, 0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    aput-byte v3, p1, v0

    const/4 v0, 0x4

    aput-byte v4, p1, v0

    const/4 v0, 0x5

    aput-byte v5, p1, v0

    const/4 v0, 0x6

    aput-byte v6, p1, v0

    const/4 v0, 0x7

    aput-byte p0, p1, v0

    return-object p1
.end method

.method public static b([B)J
    .locals 7

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x7

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()[B
    .locals 5

    .line 101
    iget-byte v0, p0, Lcom/networkbench/agent/impl/j/b;->b:B

    int-to-long v0, v0

    const/16 v2, 0x3e

    shl-long/2addr v0, v2

    iget-byte v2, p0, Lcom/networkbench/agent/impl/j/b;->a:B

    int-to-long v2, v2

    const/16 v4, 0x3b

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-byte v2, p0, Lcom/networkbench/agent/impl/j/b;->c:B

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lcom/networkbench/agent/impl/j/b;->f:I

    int-to-long v2, v2

    const/16 v4, 0x26

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lcom/networkbench/agent/impl/j/b;->e:I

    int-to-long v2, v2

    const/16 v4, 0x1b

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget p0, p0, Lcom/networkbench/agent/impl/j/b;->d:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    .line 102
    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/j/b;->a(J)[B

    move-result-object p0

    return-object p0
.end method
