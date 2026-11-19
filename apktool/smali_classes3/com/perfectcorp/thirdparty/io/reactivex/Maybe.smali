.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty()Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/b;

    return-object v0
.end method

.method public static just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/f;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/f;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
.end method

.method public final blockingGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final doOnError(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    const-string v1, "onError is null"

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v3, v2

    move-object v6, v5

    move-object v7, v5

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v0
.end method

.method public final flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    return-object v0
.end method

.method public final subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->a(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "subscribeActual failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final toSingle()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/j;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;Ljava/lang/Object;)V

    return-object v0
.end method
