.class public final Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;
.super Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;,
        Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

.field public static final f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

.field public c:Ljava/util/concurrent/atomic/AtomicReference;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    sput-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->e:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    return-void
.end method

.method public static f()Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;
    .locals 4

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v2, "maxSize"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    iput v3, v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->b:I

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iput-object v2, v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;-><init>()V

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->e:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 4

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/e;Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-boolean p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    if-nez p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v2, v1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->e(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->a(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V
    .locals 6

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->e:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    if-ne v0, v1, :cond_0

    goto :goto_4

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

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

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v2, -0x1

    new-array v1, v1, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_5

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final onComplete()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->b(Ljava/io/Serializable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    :cond_1
    array-length p0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->a(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/f;->c(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->b(Ljava/io/Serializable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f:[Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    :cond_1
    array-length p0, v1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->a(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->b:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    invoke-direct {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;-><init>(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iput-object v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->e:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iget v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    iget v1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->b:I

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->c:I

    iget-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->d:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$a;

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$d;->a(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->d:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
