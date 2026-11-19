.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public c:I


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;)Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;->c:I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->c()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;->c:I

    return p0
.end method

.method public final d()[B
    .locals 5

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$b;->c:I

    int-to-byte v0, p0

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v3, 0x4

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
