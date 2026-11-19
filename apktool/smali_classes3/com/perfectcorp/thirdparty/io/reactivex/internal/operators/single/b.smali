.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/g;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/g;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b$a;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/g;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/g;->e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
