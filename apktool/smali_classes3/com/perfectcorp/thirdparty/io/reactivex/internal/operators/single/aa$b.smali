.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public final d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

.field public final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;ILcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-array p1, p2, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;

    iput p3, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;->c:I

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    array-length v2, v1

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v2, :cond_1

    aget-object v0, v1, p1

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    invoke-interface {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dispose()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$b;->d:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/aa$c;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
