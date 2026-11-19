.class public abstract Lcom/perfectcorp/common/zip/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/perfectcorp/common/zip/c;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Z)Lcom/perfectcorp/common/zip/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Lcom/perfectcorp/common/io/a;

    invoke-direct {p1, p2}, Lcom/perfectcorp/common/io/a;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v0, p0, Lcom/perfectcorp/common/zip/c;->c:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/perfectcorp/common/zip/b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p2, Lcom/perfectcorp/common/zip/b;->a:J

    iput-object p2, p1, Lcom/perfectcorp/common/io/a;->f:Lcom/perfectcorp/common/io/a$a;

    goto :goto_1

    :catchall_0
    move-exception p2

    :goto_0
    move-object v1, p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Lcom/perfectcorp/common/io/IO;->c(Ljava/io/InputStream;Lcom/perfectcorp/common/io/a;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/perfectcorp/common/io/a;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-virtual {p1}, Lcom/perfectcorp/common/io/a;->close()V

    return-void

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v1

    :goto_2
    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/common/io/a;->close()V

    :cond_1
    throw p2
.end method
