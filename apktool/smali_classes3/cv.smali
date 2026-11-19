.class public final synthetic Lcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcv;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcv;->d:Ljava/lang/Object;

    iput p3, p0, Lcv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcv;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, p0, Lcv;->d:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    invoke-direct {v2}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;-><init>()V

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a:Ljava/net/URI;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v3, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const-string v3, "priority can\'t be null"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result v1

    iput v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p1

    new-instance v1, Let;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcv;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] #getDownloadImageObservable(); DownloadHandle#startDownload()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "DownloadImageHelper"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    check-cast p1, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p1, p0, p0}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcv;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcv;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget p0, p0, Lcv;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    const/4 p0, 0x0

    return-object p0
.end method
