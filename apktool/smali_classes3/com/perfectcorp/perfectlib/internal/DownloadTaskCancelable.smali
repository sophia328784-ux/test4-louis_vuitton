.class public final Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/Cancelable;


# static fields
.field public static final e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final c:Ljava/util/HashSet;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const/4 v1, 0x1

    const-string v2, "NOP"

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c:Ljava/util/HashSet;

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addDisposables] add "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disposables"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "DownloadTaskCancelable"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final varargs b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    :goto_0
    if-nez p0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v0, "Cancelable had been canceled."

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final isCanceled()Z
    .locals 4

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/common/network/DownloadHandle;

    invoke-interface {v2}, Lcom/perfectcorp/common/network/DownloadHandle;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_4
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadTaskCancelable name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
