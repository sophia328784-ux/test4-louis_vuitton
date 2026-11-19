.class Lcom/perfectcorp/common/utility/CacheStrategies$1$1$2;
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
.field public synthetic a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1$2;->a:Lcom/perfectcorp/common/utility/CacheStrategies$1$1;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/CacheStrategies$1$1;->a:Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
