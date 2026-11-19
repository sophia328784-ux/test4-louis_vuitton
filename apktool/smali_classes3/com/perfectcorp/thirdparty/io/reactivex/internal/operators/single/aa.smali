.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>([Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t$a;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-direct {v2, p1, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;ILcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-interface {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    aget-object p0, v0, v3

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "One of the sources is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->a(ILjava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object p1, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
