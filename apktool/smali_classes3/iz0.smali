.class public final synthetic Liz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Liz0;->c:Ljava/util/List;

    iput-object p3, p0, Liz0;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iput-object p4, p0, Liz0;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iput-object p5, p0, Liz0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Liz0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Liz0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v1, p0, Liz0;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v2, Ly81;

    const/16 v3, 0x10

    iget-object v6, p0, Liz0;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    iget-object v7, p0, Liz0;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    invoke-direct {v2, v0, v6, v7, v3}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v0

    new-instance v4, Lqx0;

    const/4 v9, 0x0

    iget-object v5, p0, Liz0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Liz0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

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
