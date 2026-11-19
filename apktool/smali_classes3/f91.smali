.class public final synthetic Lf91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf91;->f:I

    iput-object p2, p0, Lf91;->d:Ljava/lang/String;

    iput-object p3, p0, Lf91;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p4, p0, Lf91;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;I)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lf91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf91;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Lf91;->d:Ljava/lang/String;

    iput-object p3, p0, Lf91;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput p4, p0, Lf91;->f:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lf91;->b:I

    const/4 v1, 0x3

    const-string v2, "[#"

    const-string v3, "IdSystemDataHelper"

    iget v4, p0, Lf91;->f:I

    iget-object v5, p0, Lf91;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v6, p0, Lf91;->d:Ljava/lang/String;

    iget-object p0, p0, Lf91;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {v6, p1, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p1

    new-instance v0, Let;

    const/4 v5, 0x5

    invoke-direct {v0, p1, v5}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] #getDownloadImageObservable(); DownloadHandle#startDownload()"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    check-cast p1, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p1, p0, p0}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] component#getDownloadMaybe()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6, v5, p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
