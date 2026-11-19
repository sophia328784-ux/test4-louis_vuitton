.class public abstract Lcom/perfectcorp/common/network/BaseDownloadHandle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/DownloadHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/BaseDownloadHandle$d;,
        Lcom/perfectcorp/common/network/BaseDownloadHandle$b;,
        Lcom/perfectcorp/common/network/BaseDownloadHandle$c;,
        Lcom/perfectcorp/common/network/BaseDownloadHandle$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final b:Ljava/io/File;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->e()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object p2, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {v0, p1, p2}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/common/network/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/common/network/a;->c:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iput-object v0, v1, Lcom/perfectcorp/common/network/a;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iput-object p0, v1, Lcom/perfectcorp/common/network/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v2, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public cancel()Z
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;->f()Lcom/perfectcorp/thirdparty/io/reactivex/subjects/ReplaySubject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;->d()Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/common/network/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/common/network/b;->a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    iput-object p0, v1, Lcom/perfectcorp/common/network/b;->b:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iget-object v2, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/perfectcorp/common/network/c;

    iget-object v2, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v1, v0, p0, v2}, Lcom/perfectcorp/common/network/c;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;Lcom/perfectcorp/common/network/BaseDownloadHandle;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, v1, v3}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadHandle;->c()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    :cond_1
    new-instance p2, Lcom/perfectcorp/common/network/f;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/common/network/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/common/network/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->b()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result p0

    return p0
.end method
