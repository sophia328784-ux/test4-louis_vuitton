.class final Lcom/perfectcorp/common/logger/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public synthetic a:J

.field public synthetic b:J

.field public synthetic c:Lcom/perfectcorp/common/logger/a;


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 4

    iget-wide v0, p0, Lcom/perfectcorp/common/logger/i;->a:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-wide p0, p0, Lcom/perfectcorp/common/logger/i;->b:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
