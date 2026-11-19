.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;
    }
.end annotation


# instance fields
.field public final g:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->b(JLjava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr p2, v0

    new-instance p4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$a;

    invoke-direct {p4, p1, p0, p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$a;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;J)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->b(JLjava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final b(JLjava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->j:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-direct {v0, p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->j:Z

    iget-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    if-eqz p2, :cond_3

    iget-boolean p3, p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->e:Z

    if-nez p3, :cond_1

    iget-object p2, p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->b:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_4
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c$a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->j:Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$c;->j:Z

    return p0
.end method
