.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:[B


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    array-length p0, p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;)Z
    .locals 6

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    array-length v0, p0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->e()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget-byte v4, p0, v1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->e()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final c()I
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p0

    if-eqz v0, :cond_1

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v2
.end method

.method public final d()[B
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final e()[B
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    return-object p0
.end method
