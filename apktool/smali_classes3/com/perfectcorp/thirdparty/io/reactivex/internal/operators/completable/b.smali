.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;
    }
.end annotation


# static fields
.field public static final f:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

.field public static final g:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    sput-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->g:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 6

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :goto_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->g:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->e:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    return-void

    :cond_1
    array-length v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, v3

    :cond_2
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->k(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;)V

    :cond_3
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->b:Lcom/perfectcorp/thirdparty/io/reactivex/b;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/b;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    goto :goto_0
.end method

.method public final k(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final onComplete()V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->g:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->e:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;->g:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/a;

    invoke-interface {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
