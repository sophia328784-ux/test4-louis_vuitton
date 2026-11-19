.class final Lcom/perfectcorp/common/downloader/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/io/a$a;


# instance fields
.field public synthetic a:J


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing;->a()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->c(Ljava/io/File;Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->c()I

    move-result p1

    iget-wide v0, p0, Lcom/perfectcorp/common/downloader/t;->a:J

    long-to-int p0, v0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "CRC mismatch. The disk is bad."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
