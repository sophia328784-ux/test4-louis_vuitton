.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/io/Files;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/File;)Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/com/google/common/io/e;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;-><init>(Ljava/io/File;[Lcom/perfectcorp/thirdparty/com/google/common/io/e;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->e:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;)V

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->c:Ljava/util/ArrayDeque;

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    new-instance p0, Ljava/io/FileOutputStream;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$a;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/io/e;->a:Lcom/perfectcorp/thirdparty/com/google/common/io/e;

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->d:Ljava/lang/Throwable;

    const-class p1, Ljava/io/IOException;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    throw p0

    :cond_3
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Source %s and destination %s must be different"

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/io/File;Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;->a(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 7

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/thirdparty/com/google/common/io/d;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->e:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    invoke-direct {v6, v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;)V

    iget-object v0, v6, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->c:Ljava/util/ArrayDeque;

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    return-object p0

    :goto_1
    :try_start_1
    iput-object p0, v6, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->d:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    throw p0
.end method
