.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/Observable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TR;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->d:I

    iput p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/z;->d(Lcom/perfectcorp/thirdparty/io/reactivex/e;)Lcom/perfectcorp/thirdparty/io/reactivex/f;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :goto_1
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;

    iget v3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->e:I

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;->d:I

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
