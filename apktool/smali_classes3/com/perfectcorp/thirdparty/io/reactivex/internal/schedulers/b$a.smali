.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

.field public final h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

.field public final j:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

.field public volatile k:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;)V
    .locals 2

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->j:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 6

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->k:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->j:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 6

    .line 21
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->k:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->j:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->h:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/DisposableContainer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/k;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->k:Z

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->i:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/d;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$a;->k:Z

    return p0
.end method
