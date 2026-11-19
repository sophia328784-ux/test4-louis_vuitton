.class Lcom/perfectcorp/common/utility/CacheStrategies$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/g;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

.field public final synthetic c:Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    iput-object p1, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1;->c:Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;

    return-void
.end method


# virtual methods
.method public final e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;-><init>(Lcom/perfectcorp/common/utility/CacheStrategies$1;Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V

    new-instance v2, Lcom/perfectcorp/common/utility/CacheStrategies$1$2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/common/utility/CacheStrategies$1$2;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1;

    iput-object p1, v2, Lcom/perfectcorp/common/utility/CacheStrategies$1$2;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
