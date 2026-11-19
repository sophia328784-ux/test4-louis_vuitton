.class public final LXqjhMb/CnROgj;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x1dc1

.field public static b:I = 0x3e9

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pTrUTT\u000ebx{u\"em%v|{Dy\u0001by>)"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LXqjhMb/CnROgj;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[F[FI)V
    .locals 10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    div-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    add-int v4, p0, v3

    aget v5, p1, v4

    add-int v6, p0, p3

    sub-int/2addr v6, v0

    sub-int/2addr v6, v3

    aget v6, p1, v6

    add-float v7, v5, v6

    aput v7, p2, v4

    add-int/2addr v4, v1

    sub-float/2addr v5, v6

    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    int-to-double v8, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p1, v1}, LXqjhMb/CnROgj;->a(I[F[FI)V

    add-int v3, p0, v1

    invoke-static {v3, p2, p1, v1}, LXqjhMb/CnROgj;->a(I[F[FI)V

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_a

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p0

    add-int v5, p0, v2

    aget v6, p2, v5

    aput v6, p1, v4

    add-int/2addr v4, v0

    add-int/2addr v5, v1

    aget v6, p2, v5

    add-int/2addr v5, v0

    aget v5, p2, v5

    add-float/2addr v6, v5

    aput v6, p1, v4

    add-int/lit8 v2, v2, 0x1

    sget v4, LXqjhMb/CnROgj;->b:I

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_2

    :goto_1
    sget v4, LXqjhMb/CnROgj;->b:I

    add-int/lit8 v5, v4, 0x41

    const/16 v6, 0x17

    if-eq v5, v6, :cond_9

    const/16 v6, 0x9c

    if-eq v5, v6, :cond_7

    const/16 v6, 0x100

    if-eq v5, v6, :cond_3

    const/16 v6, 0x1b0

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_3
    rem-int/lit8 p0, v4, 0x5e

    rem-int/lit8 p0, p0, 0x52

    sput p0, LXqjhMb/CnROgj;->b:I

    :cond_4
    sget p0, LXqjhMb/CnROgj;->b:I

    rem-int/lit8 p0, p0, 0x5f

    rem-int/lit8 p0, p0, 0x6b

    sput p0, LXqjhMb/CnROgj;->b:I

    sget p0, LXqjhMb/CnROgj;->a:I

    xor-int/lit16 p0, p0, 0x1dc1

    if-eqz p0, :cond_9

    :goto_2
    sget p0, LXqjhMb/CnROgj;->a:I

    add-int/lit8 p1, p0, 0x5b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_5

    goto :goto_2

    :cond_5
    shr-int/lit8 p1, p0, 0x68

    add-int/2addr p1, p0

    sput p1, LXqjhMb/CnROgj;->a:I

    goto :goto_5

    :cond_6
    xor-int/lit16 p0, p0, 0x1ff1

    shr-int/lit8 p0, p0, 0x3f

    sput p0, LXqjhMb/CnROgj;->a:I

    goto :goto_2

    :cond_7
    mul-int/lit8 v5, v4, 0x45

    add-int/2addr v5, v4

    sput v5, LXqjhMb/CnROgj;->b:I

    sget v4, LXqjhMb/CnROgj;->a:I

    xor-int/lit16 v4, v4, 0x1dc1

    if-eqz v4, :cond_2

    :goto_3
    sget v4, LXqjhMb/CnROgj;->a:I

    add-int/lit8 p0, v4, 0x41

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    sget p0, LXqjhMb/CnROgj;->a:I

    add-int/2addr p0, v4

    rem-int/lit8 p0, p0, 0x23

    sput p0, LXqjhMb/CnROgj;->a:I

    goto :goto_4

    :cond_9
    :goto_5
    sget p0, LXqjhMb/CnROgj;->b:I

    xor-int/lit16 p0, p0, 0xc8c

    add-int/2addr p0, v4

    rem-int/lit8 p0, p0, 0x6d

    sput p0, LXqjhMb/CnROgj;->b:I

    goto :goto_5

    :cond_a
    add-int/2addr p0, p3

    add-int/lit8 p3, p0, -0x2

    sub-int/2addr v3, v0

    aget v1, p2, v3

    aput v1, p1, p3

    sub-int/2addr p0, v0

    aget p2, p2, p0

    aput p2, p1, p0

    return-void
.end method
