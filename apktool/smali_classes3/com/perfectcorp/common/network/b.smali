.class final Lcom/perfectcorp/common/network/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

.field public synthetic b:Lcom/perfectcorp/common/network/BaseDownloadHandle;


# virtual methods
.method public final a(D)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/common/network/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    new-instance v1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;

    iget-object p0, p0, Lcom/perfectcorp/common/network/b;->b:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iget-object v2, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {v1, v2, p1, p2, p0}, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;DLjava/io/File;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
