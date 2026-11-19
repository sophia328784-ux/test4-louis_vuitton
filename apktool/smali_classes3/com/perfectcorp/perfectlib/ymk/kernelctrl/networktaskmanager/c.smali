.class public final synthetic Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/g;


# instance fields
.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:I

.field public final synthetic i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;ZLcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->b:Ljava/util/Collection;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->c:Z

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p7, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->h:I

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public final e(Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;)V
    .locals 13

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "SDKInitHandler"

    const-string v2, "[initParallelly] got emitter"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->b:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[initParallelly] start init request. domain="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    iget-boolean v5, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->c:Z

    invoke-direct {v4, v3, v5}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[InitRequest][init] start. domain="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->a:Ljava/lang/String;

    invoke-static {v3, v5, v0, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "domain must not be null"

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v7, Lu71;

    iget-boolean v8, v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->b:Z

    invoke-direct {v7, v5, v8}, Lu71;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v7}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v7, Ly71;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ly71;-><init>(I)V

    invoke-direct {v3, v6, v7}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    new-instance v6, Landroid/util/Pair;

    const-string v7, "Cache-Control"

    const-string v8, "max-age=0, must-revalidate"

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/perfectcorp/common/network/RequestTask$Builder;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v7, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    const-string v6, "[InitRequest][init] create single. domain="

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    invoke-direct {v6, v4, v3, v7}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/d;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;Lcom/perfectcorp/common/network/RequestTask$Builder;Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v3, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v6, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v3

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/e;

    invoke-direct {v6, v4}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/e;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;)V

    new-instance v7, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v7, v3, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/f;

    invoke-direct {v3, v4}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/f;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v4, v7, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    const-string v3, "[InitRequest][init] end. domain="

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lna0;

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v6, p1, v5}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v7, Luw0;

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->f:Ljava/util/List;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v10, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->h:I

    move-object v11, p1

    invoke-direct/range {v7 .. v12}, Luw0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v3, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v4, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    const-string v3, "[initParallelly] add init request disposable"

    invoke-static {v0, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    move-object p1, v11

    goto/16 :goto_0

    :cond_0
    const-string p0, "[initParallelly] exit loop"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
