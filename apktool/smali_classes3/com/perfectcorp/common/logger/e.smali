.class final Lcom/perfectcorp/common/logger/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/common/logger/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/logger/a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/logger/e;->a:Lcom/perfectcorp/common/logger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/common/logger/e;->a:Lcom/perfectcorp/common/logger/a;

    iget-object v0, p0, Lcom/perfectcorp/common/logger/a;->e:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/perfectcorp/common/logger/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/common/logger/i;->c:Lcom/perfectcorp/common/logger/a;

    iput-wide v0, v2, Lcom/perfectcorp/common/logger/i;->a:J

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, v2, Lcom/perfectcorp/common/logger/i;->b:J

    iget-object p0, p0, Lcom/perfectcorp/common/logger/a;->e:Ljava/io/File;

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
