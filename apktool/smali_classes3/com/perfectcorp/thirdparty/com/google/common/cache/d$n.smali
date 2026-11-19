.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;
.super Ljava/util/concurrent/locks/ReentrantLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

.field public volatile c:I

.field public d:J

.field public e:I

.field public f:I

.field public volatile g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final h:J

.field public final i:Ljava/lang/ref/ReferenceQueue;

.field public final j:Ljava/lang/ref/ReferenceQueue;

.field public final k:Ljava/util/AbstractQueue;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Ljava/util/AbstractQueue;

.field public final n:Ljava/util/AbstractQueue;

.field public final o:Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;IJLcom/perfectcorp/thirdparty/com/google/common/cache/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iput-wide p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h:J

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f:I

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->k:Lcom/perfectcorp/thirdparty/com/google/common/cache/ag;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$b;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$b;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    cmp-long p3, v0, p3

    if-nez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f:I

    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    sget-object p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    const/4 p4, 0x0

    if-eq p2, p3, :cond_2

    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_1

    :cond_2
    move-object p2, p4

    :goto_1
    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i:Ljava/lang/ref/ReferenceQueue;

    iget-object p2, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    if-eq p2, p3, :cond_3

    new-instance p4, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_3
    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->v:Ljava/util/Queue;

    :goto_2
    check-cast p2, Ljava/util/AbstractQueue;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->k:Ljava/util/AbstractQueue;

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->v:Ljava/util/Queue;

    move-object p3, p2

    check-cast p3, Ljava/util/AbstractQueue;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;-><init>()V

    :cond_5
    check-cast p2, Ljava/util/AbstractQueue;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 3

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    invoke-virtual {v2, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V

    return-object p1
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 1

    invoke-interface {p5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v0

    invoke-virtual {p0, p3, p4, v0, p6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-interface {p5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->s()V

    return-object p3

    :cond_0
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->s()V

    return-object p3

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->e()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p2, p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->r(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V

    return-object p3

    :cond_0
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader$a;

    const-string p1, "CacheLoader returned null for key "

    const-string p3, "."

    invoke-static {p1, p2, p3}, Lo60;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Recursive load of: %s"

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-static {}, La61;->h()V

    return-object v1
.end method

.method public final e(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/d$j;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-static {p4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    :try_start_1
    iget-object v0, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/p;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/p;->b()J

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->k(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/d$j;Ljava/lang/Object;)V

    return-object p4

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CacheLoader returned null for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    move-exception v0

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_4

    iget-object p4, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/p;

    invoke-virtual {p4}, Lcom/perfectcorp/thirdparty/com/google/common/base/p;->b()J

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    iget-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v5

    if-ne v5, p2, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v5, v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v5, p1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p1

    if-ne p1, p3, :cond_2

    iget-object p1, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {v3, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p1

    :cond_4
    :goto_4
    throw v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;ZI)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->x()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v8

    if-ne v8, p4, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v8, v8, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v8, p1, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p4

    invoke-interface {p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result p3

    sget-object p4, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    invoke-virtual {p0, v5, p2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5, p2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 p1, p1, 0x1

    :goto_2
    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-virtual {p0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v6

    :cond_2
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p0, v5, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->t(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v2

    :cond_3
    :try_start_2
    iget p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result p3

    sget-object p4, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    invoke-virtual {p0, v5, p2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    invoke-virtual {p0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v5

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p3, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    invoke-virtual {p3, p0, p1, p4, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->c(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iget p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v6

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->v()V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->w()V

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    return-void
.end method

.method public final i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->w()V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v0

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->e:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, La61;->h()V

    return-void

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result p1

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->e:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, v0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, La61;->h()V

    return-void

    :cond_5
    invoke-static {}, La61;->h()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V
    .locals 4

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p3

    iget-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p4, p4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    invoke-virtual {p4, p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p4

    invoke-interface {p1, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->w()V

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d:J

    iget-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p4, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/d$j;Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->x()V

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v8

    if-ne v8, p2, :cond_5

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v8, v8, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v8, p1, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p2

    invoke-interface {p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq p3, p2, :cond_2

    if-nez v3, :cond_1

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    if-eq p2, v4, :cond_1

    goto :goto_2

    :cond_1
    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-void

    :cond_2
    :goto_2
    :try_start_1
    iget p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    iget-object p2, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez v3, :cond_3

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    :goto_3
    iget-object p3, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    invoke-interface {p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result p3

    invoke-virtual {p0, p1, v3, p3, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    add-int/lit8 v2, v2, -0x1

    :cond_4
    invoke-virtual {p0, v6, p4, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-virtual {p0, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-void

    :cond_5
    :try_start_2
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v6

    goto :goto_1

    :cond_6
    iget p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p3, p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p0, p1, p2, v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->c(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-void

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p1
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V
    .locals 4

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d:J

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->l:Ljava/util/AbstractQueue;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->v:Ljava/util/Queue;

    if-eq p3, v0, :cond_0

    new-instance p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/af;

    invoke-direct {p3, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->l:Ljava/util/AbstractQueue;

    invoke-interface {p0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)Z
    .locals 10

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_1

    if-ne v5, p1, :cond_0

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v8

    move-object v3, p0

    move-object v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p0

    iget p1, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, p2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p1, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    return v2

    :cond_0
    move-object v3, p0

    move-object v9, p3

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-interface {p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->q(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    return-object v1
.end method

.method public final o(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    sub-int/2addr v5, v3

    and-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v7, v6

    :goto_0
    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v10, v10, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v10, p1, v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v10

    invoke-interface {v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->c()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    invoke-interface {v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, v9, v11, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v7, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->t(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v11

    :cond_2
    :try_start_1
    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v7

    goto :goto_0

    :cond_3
    move-object v10, v8

    :goto_1
    if-eqz v3, :cond_5

    new-instance v8, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;

    invoke-direct {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;-><init>()V

    if-nez v7, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0, p1, p2, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->c(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    if-eqz v3, :cond_6

    monitor-enter v7

    :try_start_2
    invoke-virtual {v8, p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->b(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v8, p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/d$j;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v7

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    invoke-virtual {p0, v7, p1, v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p1
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->l:Ljava/util/AbstractQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/af;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 4

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v2

    invoke-interface {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v2

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V
    .locals 0

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->k:Ljava/util/AbstractQueue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    return-void
.end method

.method public final t(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V
    .locals 0

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(ILjava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->s()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v2, p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final v()V
    .locals 13

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v8, v7

    :goto_1
    if-eqz v8, :cond_0

    if-ne v8, v1, :cond_1

    iget v1, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v11

    sget-object v12, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual/range {v6 .. v12}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v1

    iget v7, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v7, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    :goto_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    if-eq v0, v1, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v9, v0

    check-cast v9, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v5

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    iget-object v1, v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v11, v4, v6

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v7, v4

    move-object v4, v5

    move-object v5, v6

    :goto_5
    if-eqz v6, :cond_5

    move v8, v7

    :try_start_3
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v10

    if-ne v10, v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v10, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v10, v10, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v10, v0, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v0

    if-ne v0, v9, :cond_3

    iget v0, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual/range {v4 .. v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    iget v5, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v5, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_6
    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_7
    move-object p0, v0

    goto :goto_9

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_4
    :try_start_4
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v8

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    :goto_8
    add-int/lit8 v3, v3, 0x1

    if-eq v3, v2, :cond_8

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v5

    goto :goto_7

    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    :cond_7
    throw p0

    :cond_8
    return-void
.end method

.method public final w()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->k:Ljava/util/AbstractQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 11

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    shl-int/lit8 v3, v1, 0x1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v7, :cond_1

    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v10

    and-int/2addr v10, v3

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    :cond_2
    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v7

    and-int/2addr v7, v3

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-virtual {p0, v6, v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->q(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iput-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    return-void
.end method
