.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$b;


# instance fields
.field public final a:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final b:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

.field public final e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v2

    new-instance v3, Lt7;

    const/16 v4, 0x15

    invoke-direct {v3, v1, v4}, Lt7;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v4, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v2, Lh8;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lh8;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v2

    new-instance v3, Lh8;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4}, Lh8;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/j;

    invoke-direct {v2, p0, v0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/j;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$a;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/j;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/j;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    return-void

    :cond_0
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p0
.end method
