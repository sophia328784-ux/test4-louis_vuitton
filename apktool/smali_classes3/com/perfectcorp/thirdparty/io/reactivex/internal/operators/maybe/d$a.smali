.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/d;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/d<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/d;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->c(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/d;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/maybe/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/d;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
