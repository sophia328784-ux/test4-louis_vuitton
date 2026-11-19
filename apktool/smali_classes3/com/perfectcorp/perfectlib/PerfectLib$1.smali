.class Lcom/perfectcorp/perfectlib/PerfectLib$1;
.super Lcom/perfectcorp/common/guava/DefaultFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/guava/DefaultFutureCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final synthetic b:Lcom/perfectcorp/perfectlib/Configuration;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->b:Lcom/perfectcorp/perfectlib/Configuration;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->c:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/DefaultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PerfectLib"

    const-string v1, "Init task waits for release task but release task failed. This should not happen!!"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->b:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectLib$1;->c:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v1, Ln7;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v2, Ln7;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v2, Ltg0;

    const/16 v4, 0x1c

    invoke-direct {v2, v4}, Ltg0;-><init>(I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v4, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lgn0;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lgn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Lfn0;

    invoke-direct {v2, v0, v3}, Lfn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/v;

    const/4 v4, 0x3

    invoke-direct {v1, v0, v4}, Lcom/perfectcorp/perfectlib/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Lfn0;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lfn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v5, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/l3;

    invoke-direct {v1, v0, p0, v4}, Lcom/perfectcorp/perfectlib/l3;-><init>(Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lgn0;

    invoke-direct {p0, v0, v4}, Lgn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v1, Lfn0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lfn0;-><init>(Lcom/perfectcorp/perfectlib/Configuration;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v1, v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Ld8;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Ld8;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v1, Ltg0;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lna0;

    invoke-direct {v1, v0, p1, v3}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Ljn0;

    invoke-direct {v0, p1, v4}, Ljn0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
