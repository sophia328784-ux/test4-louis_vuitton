.class Lcom/perfectcorp/common/utility/CacheStrategies$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

.field public synthetic b:Lcom/perfectcorp/common/utility/CacheStrategies$1;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestAlwaysNetwork, onErrorResumeNext, network error, handler:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$2;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1;

    iget-object v1, v1, Lcom/perfectcorp/common/utility/CacheStrategies$1;->c:Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "CacheStrategies"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$2;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
