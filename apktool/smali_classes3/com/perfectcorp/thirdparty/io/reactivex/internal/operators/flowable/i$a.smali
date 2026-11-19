.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/c;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/c<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

.field public d:Z

.field public e:Ljava/lang/Object;


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/org/reactivestreams/c;->e()V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence contains more than one element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->d:Z

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/org/reactivestreams/c;->e()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i$a;->c:Lcom/perfectcorp/thirdparty/org/reactivestreams/c;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/g;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
