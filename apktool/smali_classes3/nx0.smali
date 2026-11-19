.class public final synthetic Lnx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:D

.field public final synthetic e:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;DLcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lnx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-wide p3, p0, Lnx0;->d:D

    iput-object p5, p0, Lnx0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/util/List;

    iget-object p1, p0, Lnx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "[syncServerByProtocol] Start download the images that haven\'t downloaded"

    const/4 v0, 0x3

    const-string v1, "SkuHandler"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-virtual {p1, v2, v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->q(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/List;

    move-result-object p1

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[syncServerByProtocol] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " images need to be downloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lyw0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lyw0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lzx0;

    iget-object v3, p0, Lnx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-wide v6, p0, Lnx0;->d:D

    iget-object v8, p0, Lnx0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct/range {v2 .. v8}, Lzx0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;DLcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lpv0;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lpv0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
