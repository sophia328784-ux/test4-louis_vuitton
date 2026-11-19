.class final Lcom/perfectcorp/perfectlib/CacheStrategyContentUpdater;
.super Ljava/lang/Object;


# direct methods
.method public static updateCacheFirstThenUpdateContent(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/v;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v0, Lmd;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lmd;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1
.end method
