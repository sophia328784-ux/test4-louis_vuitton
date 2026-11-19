.class public final Lcom/perfectcorp/common/io/a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/io/a$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public d:Ljava/io/FileOutputStream;

.field public e:Z

.field public f:Lcom/perfectcorp/common/io/a$a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/common/io/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".part"

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/common/io/a;->b:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is a directory."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/common/io/a;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/perfectcorp/common/io/a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    iget-boolean v2, p0, Lcom/perfectcorp/common/io/a;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/common/io/a;->f:Lcom/perfectcorp/common/io/a$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/perfectcorp/common/io/a$a;->a(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/perfectcorp/common/io/a;->f:Lcom/perfectcorp/common/io/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    :try_start_1
    invoke-interface {p0, v0}, Lcom/perfectcorp/common/io/a$a;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not rename "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    throw p0

    :cond_4
    return-void
.end method

.method public final finalize()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/perfectcorp/common/io/a;->e:Z

    invoke-virtual {p0}, Lcom/perfectcorp/common/io/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final flush()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/common/io/a;->h()V

    iget-object p0, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final h()V
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/common/io/a;->e:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "No method can be called except close() after setTransactionSuccessful() being invoked."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final write(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/common/io/a;->h()V

    iget-object p0, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/perfectcorp/common/io/a;->h()V

    iget-object p0, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/perfectcorp/common/io/a;->h()V

    iget-object p0, p0, Lcom/perfectcorp/common/io/a;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
