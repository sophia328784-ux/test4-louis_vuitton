.class final Lcom/perfectcorp/common/network/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Lcom/perfectcorp/common/network/BaseDownloadHandle$b;",
        "Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;

    new-instance p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$c;

    invoke-direct {p0, p1}, Lcom/perfectcorp/common/network/BaseDownloadHandle$c;-><init>(Lcom/perfectcorp/common/network/BaseDownloadHandle$b;)V

    return-object p0
.end method
