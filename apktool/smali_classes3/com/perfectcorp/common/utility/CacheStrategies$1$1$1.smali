.class Lcom/perfectcorp/common/utility/CacheStrategies$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public synthetic a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$1;->a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
