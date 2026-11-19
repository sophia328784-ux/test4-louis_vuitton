.class Lcom/perfectcorp/common/utility/CacheStrategies$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

.field public final synthetic b:Lcom/perfectcorp/common/utility/CacheStrategies$1;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/CacheStrategies$1;Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1;

    iput-object p2, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestAlwaysNetwork, onErrorResumeNext, network success. handler:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1;

    iget-object v1, v1, Lcom/perfectcorp/common/utility/CacheStrategies$1;->c:Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "CacheStrategies"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;-><init>(Lcom/perfectcorp/common/utility/CacheStrategies$1$1;Ljava/lang/Object;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$1;->a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    new-instance v1, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$2;->a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
