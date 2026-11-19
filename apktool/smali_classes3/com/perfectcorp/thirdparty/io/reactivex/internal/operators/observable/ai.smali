.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/Observable;JLcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;J",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    iput-wide p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;-><init>()V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    iget-wide p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;->d:J

    iput-wide p0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->f:J

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai$a;->a()V

    return-void
.end method
