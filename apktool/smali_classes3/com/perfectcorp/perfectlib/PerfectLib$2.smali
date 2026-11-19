.class Lcom/perfectcorp/perfectlib/PerfectLib$2;
.super Lcom/perfectcorp/common/guava/DefaultFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/guava/DefaultFutureCallback<",
        "Ljava/util/Set<",
        "Lcom/perfectcorp/perfectlib/Functionality;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$2;->a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/DefaultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onFailure] preloadError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$2;->a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InitialCallbackWrapper"

    invoke-static {v2, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;

    invoke-interface {p0, p1, v1}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onInitialized] preloadError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$2;->a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "InitialCallbackWrapper"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;

    invoke-interface {p0, p1, v1}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;->onInitialized(Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method
