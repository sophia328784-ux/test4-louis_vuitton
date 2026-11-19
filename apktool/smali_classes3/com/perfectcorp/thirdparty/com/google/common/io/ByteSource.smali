.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;
.super Ljava/lang/Object;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
    .locals 3

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;->a()Lcom/perfectcorp/thirdparty/com/google/common/hash/j;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/e;->a(Lcom/perfectcorp/thirdparty/com/google/common/hash/j;)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/io/d;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->e:Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/io/d$c;)V

    :try_start_0
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/io/Files$b;->a:Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/j;->a()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    iput-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->d:Ljava/lang/Throwable;

    const-class p1, Ljava/io/IOException;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

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

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/io/d;->close()V

    throw p0
.end method
