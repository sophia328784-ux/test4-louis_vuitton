.class final Lcom/perfectcorp/common/downloader/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/downloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/perfectcorp/common/downloader/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/perfectcorp/common/downloader/f;


# direct methods
.method private constructor <init>(Lcom/perfectcorp/common/downloader/f;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/common/downloader/f$c;->a:Ljava/util/concurrent/Future;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/common/downloader/f;Ljava/util/concurrent/Future;B)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/downloader/f$c;-><init>(Lcom/perfectcorp/common/downloader/f;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private a()Lcom/perfectcorp/common/downloader/f$d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "] call"

    const-string v1, "[FinalReportCallable#"

    const-string v2, "MultiPartTaskManager"

    iget-object v3, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget-object v3, v3, Lcom/perfectcorp/common/downloader/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/perfectcorp/common/downloader/f$c;->a:Ljava/util/concurrent/Future;

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget-object v4, v3, Lcom/perfectcorp/common/downloader/f;->c:Ljava/net/URI;

    iget-object v3, v3, Lcom/perfectcorp/common/downloader/f;->d:Ljava/io/File;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget-object v5, v5, Lcom/perfectcorp/common/downloader/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/common/downloader/c;

    new-instance v7, Lcom/perfectcorp/common/downloader/f$b;

    invoke-direct {v7, v6}, Lcom/perfectcorp/common/downloader/f$b;-><init>(Lcom/perfectcorp/common/downloader/c;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    new-instance v5, Lcom/perfectcorp/common/downloader/f$d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v5

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget v1, v1, Lcom/perfectcorp/common/downloader/f;->a:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw v3

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget v1, v1, Lcom/perfectcorp/common/downloader/f;->a:I

    invoke-static {v1, v0, v4}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f$c;->b:Lcom/perfectcorp/common/downloader/f;

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/common/downloader/f$c;->a()Lcom/perfectcorp/common/downloader/f$d;

    move-result-object p0

    return-object p0
.end method
