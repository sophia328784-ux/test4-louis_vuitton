.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a$a;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method
