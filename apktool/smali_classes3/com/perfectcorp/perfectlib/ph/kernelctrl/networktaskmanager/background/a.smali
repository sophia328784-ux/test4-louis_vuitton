.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->b:I

    const/4 v1, 0x3

    const-string v2, "BackgroundDownloader"

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[createDownloadSingle] start. guid="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/URI;

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->e(Ljava/lang/String;Ljava/net/URI;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/common/network/DownloadTask$Builder;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/common/network/DownloadTask$Builder;-><init>(Ljava/net/URI;Ljava/io/File;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result v0

    iput v0, v2, Lcom/perfectcorp/common/network/DownloadTask$Builder;->c:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->b:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v1, "priority can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/common/network/DownloadTask$Builder;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    const-string v1, "key can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/perfectcorp/common/network/DownloadTask$Builder;->e:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v0, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v0, v2, Lcom/perfectcorp/common/network/DownloadTask$Builder;->f:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    new-instance v0, Lcom/perfectcorp/common/network/DownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/common/network/DownloadTask;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;B)V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/h;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/h;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/common/network/DownloadTask;->addProgressCallback(Lcom/perfectcorp/common/network/ProgressCallback;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v2, Lf31;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/network/NetworkTaskManager;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v3, Ljava/lang/String;

    const-string v0, "[queryMetadata] start. guid="

    invoke-static {v1, v0, v3, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/a$c;->c:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "2.0"

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$r;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
