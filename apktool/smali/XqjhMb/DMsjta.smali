.class public LXqjhMb/DMsjta;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u0014_i^L\u0015"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\u0019\u001f.T"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "\u0014TqBTE\u0007"

    invoke-static {v0}, LXqjhMb/CZqWkm;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    or-long/2addr p0, v1

    const/4 v1, 0x2

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/4 v1, 0x4

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    or-long/2addr p0, v1

    ushr-long v0, p0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(FF[F)Ljava/lang/String;
    .locals 7

    array-length v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-float v2, p1, p0

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p2, v3

    sub-float/2addr v4, p0

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aget v5, p2, v3

    cmpl-float v5, v5, p1

    if-nez v5, :cond_0

    const/16 v4, 0x7d

    :cond_0
    const/16 v5, 0x2e

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    move v4, v6

    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
