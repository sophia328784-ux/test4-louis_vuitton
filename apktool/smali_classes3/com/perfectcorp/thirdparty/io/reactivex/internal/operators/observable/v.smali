.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 4

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v;->b:[Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->e:Z

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->c:[Ljava/lang/Object;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-boolean v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->f:Z

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The element at index "

    const-string v0, " is null"

    invoke-static {v1, p1, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->f:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/e;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    :cond_3
    :goto_1
    return-void
.end method
