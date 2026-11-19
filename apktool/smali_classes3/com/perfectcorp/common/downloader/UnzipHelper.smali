.class public abstract Lcom/perfectcorp/common/downloader/UnzipHelper;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V
    .locals 12

    const/4 v0, 0x0

    const-wide/32 v1, 0x6400000

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "mkdirs() failed at "

    invoke-static {v5, p0}, La61;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lcom/perfectcorp/common/io/a;

    invoke-direct {v8, v6}, Lcom/perfectcorp/common/io/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    :try_start_1
    new-instance v6, Lcom/perfectcorp/common/downloader/t;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-wide v4, v6, Lcom/perfectcorp/common/downloader/t;->a:J

    iput-object v6, v8, Lcom/perfectcorp/common/io/a;->f:Lcom/perfectcorp/common/io/a$a;

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v7, v8

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v4, 0x2000

    new-array v5, v4, [B

    const-wide/16 v6, 0x0

    :goto_3
    invoke-virtual {p0, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    int-to-long v10, v9

    add-long/2addr v6, v10

    cmp-long v10, v6, v1

    if-gtz v10, :cond_4

    invoke-virtual {v8, v5, v0, v9}, Lcom/perfectcorp/common/io/a;->write([BII)V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "File being unzipped is too big."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/perfectcorp/common/io/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Lcom/perfectcorp/common/downloader/u;

    invoke-direct {v4, p0}, Lcom/perfectcorp/common/downloader/u;-><init>(Ljava/util/zip/ZipInputStream;)V

    invoke-static {v4}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-virtual {v8}, Lcom/perfectcorp/common/io/a;->close()V

    sub-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x400

    if-gt v3, v4, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string p0, "Too many files to unzip."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    :goto_4
    new-instance v0, Lcom/perfectcorp/common/downloader/u;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/downloader/u;-><init>(Ljava/util/zip/ZipInputStream;)V

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/perfectcorp/common/io/a;->close()V

    :cond_7
    throw p1

    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "zip file contains unsafe unzipping patterns, dstFile canonicalPath="

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-void
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/io/File;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/downloader/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/common/downloader/v;->b:Ljava/io/File;

    invoke-static {p0, v0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p1}, Lcom/perfectcorp/common/downloader/UnzipHelper;->d(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static d(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 11

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createNewFile() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UnzipHelper"

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v7, v0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->a(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v7, p1, v3

    aput-object v6, p1, v2

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t rename src=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\" to dst=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v10, v7

    move-object v7, v5

    move-object v5, v10

    goto :goto_1

    :catchall_3
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    move-object v6, v7

    :goto_1
    :try_start_5
    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception p1

    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v7, v0, v3

    aput-object v6, v0, v2

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    throw p1
.end method
