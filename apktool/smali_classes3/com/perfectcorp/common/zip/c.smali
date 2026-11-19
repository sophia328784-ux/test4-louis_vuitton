.class public Lcom/perfectcorp/common/zip/c;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/zip/c$a;,
        Lcom/perfectcorp/common/zip/c$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "FATAL: zip.getInputStream(entry) == null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/common/zip/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/common/zip/c;->c:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {p2, p1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    return-void

    :cond_1
    new-instance p0, Lcom/perfectcorp/common/zip/c$b;

    const-string p1, " entry does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/zip/ZipFile;Ljava/lang/String;Z)Lcom/perfectcorp/common/zip/c;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/perfectcorp/common/zip/c$a;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/common/zip/c$a;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/perfectcorp/common/zip/c;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/common/zip/c;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public final available()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    if-gez p1, :cond_1

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/perfectcorp/common/zip/c;->c:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    check-cast p1, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {p1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRC mismatch. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/zip/c;->d(I)V

    return v0
.end method

.method public final read([B)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/zip/c;->d(I)V

    return p1
.end method

.method public final read([BII)I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/perfectcorp/common/zip/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/zip/c;->d(I)V

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnzipEntryStream [entryName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/zip/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', crc32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v2, p0, Lcom/perfectcorp/common/zip/c;->c:J

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%08X"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
