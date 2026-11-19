.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o$a;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method
