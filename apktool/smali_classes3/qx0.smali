.class public final synthetic Lqx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lqx0;->b:I

    iput-object p1, p0, Lqx0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lqx0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lqx0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lqx0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lqx0;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object v3, p0, Lqx0;->f:Ljava/lang/Object;

    iget-object v4, p0, Lqx0;->e:Ljava/lang/Object;

    iget-object v5, p0, Lqx0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lqx0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/LookHandler;

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast v4, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v3, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/camera/panel/a;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    sget-object p0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v1, "priority can\'t be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p0

    new-instance v0, Lma0;

    invoke-direct {v0, v3, v2}, Lma0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;I)V

    const/4 v1, 0x0

    check-cast p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v3, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result v0

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance p0, Lpx0;

    const/4 v0, 0x7

    invoke-direct {p0, v3, v0}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lvw0;

    invoke-direct {v0, v5, v1}, Lvw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lvw0;

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2}, Lvw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->mergeWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v3, Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result v0

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance p0, Lpx0;

    invoke-direct {p0, v3, v1}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-interface {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lvw0;

    invoke-direct {v0, v5, v2}, Lvw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lvw0;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Lvw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->mergeWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
