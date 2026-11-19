.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

.field public final i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->h:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$a;->a(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
