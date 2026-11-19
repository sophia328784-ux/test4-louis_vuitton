.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/Single;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;
    .locals 1

    const-string v0, "exception is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->e(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 2

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;

    invoke-direct {p0, v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;-><init>([Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
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

.method public abstract b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/d;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 0

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;->a(Lcom/perfectcorp/thirdparty/io/reactivex/Single;)Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    move-result-object p0

    const-string p1, "source is null"

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    return-object p0
.end method

.method public final f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;
    .locals 1

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public final i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    return-object v0
.end method

.method public final j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    return-object v0
.end method

.method public final k()Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-object v0
.end method

.method public final l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/z;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/z;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object v0
.end method
