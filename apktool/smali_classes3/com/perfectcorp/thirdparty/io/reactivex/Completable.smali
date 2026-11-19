.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d([Lcom/perfectcorp/thirdparty/io/reactivex/b;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/l;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/l;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;-><init>([Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 9

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTerminate is null"

    invoke-static {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAfterTerminate is null"

    invoke-static {p5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDispose is null"

    invoke-static {p6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v1
.end method

.method public abstract c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
.end method

.method public final e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 7

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v2, v1

    move-object v5, v4

    move-object v6, v4

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 7

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v2, v1

    move-object v4, v3

    move-object v5, v3

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 7

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 7

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v2, v1

    move-object v5, v3

    move-object v6, v3

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;
    .locals 2

    const-string v0, "completionValue is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    return-object v0
.end method
