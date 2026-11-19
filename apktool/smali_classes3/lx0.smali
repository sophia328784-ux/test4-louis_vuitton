.class public final synthetic Llx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

.field public final synthetic g:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llx0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Llx0;->c:Ljava/util/List;

    iput-object p3, p0, Llx0;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p4, p0, Llx0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Llx0;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iput-object p6, p0, Llx0;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iput-object p7, p0, Llx0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v1, p0, Llx0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v0, p0, Llx0;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lgy0;

    const/4 v3, 0x0

    iget-object v8, p0, Llx0;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct {v2, v1, v8, v3}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v6

    new-instance v0, Lm7;

    const/4 v5, 0x4

    iget-object v2, p0, Llx0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Llx0;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iget-object v4, p0, Llx0;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-direct/range {v0 .. v5}, Lm7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v0

    move-object v7, v4

    new-instance v4, Lqx0;

    const/4 v9, 0x1

    iget-object v5, p0, Llx0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lqx0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "next is null"

    invoke-static {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    return-object v1
.end method
