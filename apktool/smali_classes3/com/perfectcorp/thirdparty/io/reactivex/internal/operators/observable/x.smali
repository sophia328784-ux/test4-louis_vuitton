.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;->b:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/util/Iterator;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->e:Z

    if-nez p0, :cond_2

    :cond_1
    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->d:Z

    if-nez p0, :cond_2

    :try_start_2
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The iterator returned a null value"

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->d:Z

    if-nez p0, :cond_2

    :try_start_3
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p0, :cond_1

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->d:Z

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void

    :catchall_0
    move-exception p0

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_2
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
