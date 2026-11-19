.class abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
            "+",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Z

.field private synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
            "+",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;-><init>(I)V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    iput-boolean p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    return-object p0
.end method

.method private a(ILjava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v2, "Tried to set value from future which is not done"

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    :goto_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(ZILjava/lang/Object;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c:Z

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    return-void

    :goto_3
    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(Ljava/lang/Throwable;)V

    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 7

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a()V

    move v1, v0

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->c()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->f:Ljava/util/logging/Logger;

    move-object v4, p1

    :goto_0
    if-eqz v4, :cond_3

    .line 111
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    move v6, v1

    move v1, v0

    move v0, v6

    .line 112
    :goto_2
    instance-of v3, p1, Ljava/lang/Error;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    xor-int/2addr v1, v2

    and-int/2addr p0, v1

    and-int/2addr p0, v0

    or-int/2addr p0, v3

    if-eqz p0, :cond_5

    if-eqz v3, :cond_4

    const-string p0, "Input Future failed with Error"

    goto :goto_3

    :cond_4
    const-string p0, "Got more than one input Future failure. Logging failures after the first"

    .line 113
    :goto_3
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->f:Ljava/util/logging/Logger;

    .line 114
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public static synthetic b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;

    invoke-direct {v4, p0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;ILcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;

    invoke-interface {v2, v4, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;

    invoke-interface {v1, p0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;->d()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->f()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c:Z

    iget-boolean v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b:Z

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(ILjava/util/concurrent/Future;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->d()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 115
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract a(ZILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->e()V

    return-void
.end method
