.class public abstract Lcom/perfectcorp/common/utility/CacheStrategies;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/utility/CacheStrategies$1;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/common/utility/CacheStrategies$1;-><init>(Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    return-object p0
.end method
