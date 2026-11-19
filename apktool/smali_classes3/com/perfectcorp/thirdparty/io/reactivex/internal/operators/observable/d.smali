.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->c:I

    iput p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->d:I

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->e:Ljava/util/concurrent/Callable;

    iget v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->d:I

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;->c:I

    if-ne v2, p0, :cond_1

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput p0, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;->c:I

    iput-object v1, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;->d:Ljava/util/concurrent/Callable;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    iput p0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;->c:I

    iput v2, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;->d:I

    iput-object v1, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;->e:Ljava/util/concurrent/Callable;

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d$b;->g:Ljava/util/ArrayDeque;

    invoke-interface {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
