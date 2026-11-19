.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab$a;
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
.field public final b:Ljava/lang/Iterable;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TT;>;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    aget-object v0, v0, v2

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t$a;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_4
    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-direct {v1, p1, v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;ILcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-interface {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    aget-object p0, v0, v2

    iget-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    aget-object p1, p1, v2

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :goto_3
    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
