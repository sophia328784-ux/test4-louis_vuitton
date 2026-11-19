.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TT;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj$a;->run()V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;->a:Ljava/lang/Object;

    return-object p0
.end method
