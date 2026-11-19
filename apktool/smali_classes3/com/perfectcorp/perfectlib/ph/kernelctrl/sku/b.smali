.class Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 3

    const-string v0, "begin query sku metadata"

    const/4 v1, 0x3

    const-string v2, "SkuManager"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->b:Ljava/util/Collection;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/i;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/i;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->retry(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/j;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, La61;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, La61;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->onErrorReturn(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lx1;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lx1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, La61;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, La61;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "you must setup one of status/guidList(not empty) to builder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->c:I

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$q;-><init>(Ljava/util/Collection;I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance p0, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v1, Lzw;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {p1, v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v1, Ly71;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ly71;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    return-object p0
.end method
