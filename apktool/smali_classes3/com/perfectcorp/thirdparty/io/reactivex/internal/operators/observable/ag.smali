.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag$a;
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
.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag$a;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/e;

    invoke-interface {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void
.end method
