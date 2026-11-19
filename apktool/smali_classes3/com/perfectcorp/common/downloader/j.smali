.class final Lcom/perfectcorp/common/downloader/j;
.super Lcom/perfectcorp/common/downloader/c;


# instance fields
.field private synthetic a:Lcom/perfectcorp/common/downloader/f;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/f;Lcom/perfectcorp/common/downloader/p$f;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/j;->a:Lcom/perfectcorp/common/downloader/f;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/common/downloader/c;-><init>(Lcom/perfectcorp/common/downloader/p$f;I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addDownloadTasksWithoutKnownSize#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/downloader/j;->a:Lcom/perfectcorp/common/downloader/f;

    iget v1, v1, Lcom/perfectcorp/common/downloader/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] notifyPartStart::addDownloadTasksWithoutKnownSize() #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MultiPartTaskManager"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/j;->a:Lcom/perfectcorp/common/downloader/f;

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/f;->g:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
