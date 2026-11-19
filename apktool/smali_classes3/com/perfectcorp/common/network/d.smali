.class final Lcom/perfectcorp/common/network/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;",
        "Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;",
        ">;"
    }
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    check-cast p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$c;

    new-instance p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$a;

    iget-object p1, p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$c;->c:Lcom/perfectcorp/common/network/BaseDownloadHandle$b;

    iget-object v0, p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object p1, p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->c:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V

    return-object p0
.end method
