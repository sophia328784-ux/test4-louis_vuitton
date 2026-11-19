.class Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/CacheStrategies$1$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    iput-object p2, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    iget-object v0, v0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->b:Lcom/perfectcorp/common/utility/CacheStrategies$1;

    iget-object v0, v0, Lcom/perfectcorp/common/utility/CacheStrategies$1;->c:Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$3;->a:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
