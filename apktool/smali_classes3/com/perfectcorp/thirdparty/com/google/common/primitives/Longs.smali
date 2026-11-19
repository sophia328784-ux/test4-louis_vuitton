.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x80

    if-ge v2, v4, :cond_3

    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs$a;->a:[B

    aget-byte v2, v5, v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs$a;->a:[B

    move v2, v3

    :goto_0
    if-ltz v2, :cond_b

    const/16 v5, 0xa

    if-lt v2, v5, :cond_4

    goto :goto_3

    :cond_4
    neg-int v2, v2

    int-to-long v6, v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/high16 v8, -0x8000000000000000L

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v4, :cond_5

    sget-object v10, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs$a;->a:[B

    aget-byte v1, v10, v1

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Longs$a;->a:[B

    move v1, v3

    :goto_2
    if-ltz v1, :cond_b

    if-ge v1, v5, :cond_b

    const-wide v10, -0xcccccccccccccccL

    cmp-long v10, v6, v10

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0xa

    mul-long/2addr v6, v10

    int-to-long v10, v1

    add-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gez v1, :cond_7

    goto :goto_3

    :cond_7
    sub-long/2addr v6, v10

    move v1, v2

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9
    cmp-long p0, v6, v8

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    neg-long v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
