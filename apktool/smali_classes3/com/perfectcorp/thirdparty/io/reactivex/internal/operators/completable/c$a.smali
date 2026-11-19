.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

.field public final c:[Lcom/perfectcorp/thirdparty/io/reactivex/b;

.field public d:I

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/a;[Lcom/perfectcorp/thirdparty/io/reactivex/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->c:[Lcom/perfectcorp/thirdparty/io/reactivex/b;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->d:I

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->c:[Lcom/perfectcorp/thirdparty/io/reactivex/b;

    array-length v3, v2

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    return-void

    :cond_3
    aget-object v1, v2, v1

    invoke-interface {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/c$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void
.end method
