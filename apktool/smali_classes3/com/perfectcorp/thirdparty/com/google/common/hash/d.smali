.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/d;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/b;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;
    }
.end annotation


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/hash/j;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/d$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/hash/d;Ljava/util/zip/Checksum;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Hashing.crc32()"

    return-object p0
.end method
