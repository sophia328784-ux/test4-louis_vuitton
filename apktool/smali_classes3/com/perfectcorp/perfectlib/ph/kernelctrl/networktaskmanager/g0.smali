.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;ZI)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->c:Z

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object v0, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/io/File;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->c:Z

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-virtual {v0, p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    :goto_1
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;->c:Z

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->r:Ljava/io/File;

    const-string p1, "zipFile can\'t be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/common/guava/FluentFuture;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i:Ljava/net/URI;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->e(Ljava/lang/String;Ljava/net/URI;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Create zip file failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;

    invoke-direct {v1, p0, p1}, Lcom/perfectcorp/common/network/DownloadTask$Builder;-><init>(Ljava/net/URI;Ljava/io/File;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string p1, "priority can\'t be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result p0

    iput p0, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->c:I

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->g:Lcom/perfectcorp/common/network/DownloadTask$Key;

    const-string p1, "key can\'t be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->e:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->h:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object p0, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->f:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    new-instance p0, Lcom/perfectcorp/common/network/DownloadTask;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/perfectcorp/common/network/DownloadTask;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;B)V

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->w:Lcom/perfectcorp/common/network/DownloadTask;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->w:Lcom/perfectcorp/common/network/DownloadTask;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/y;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/y;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/DownloadTask;->addProgressCallback(Lcom/perfectcorp/common/network/ProgressCallback;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->w:Lcom/perfectcorp/common/network/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/NetworkTaskManager;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/common/guava/FluentFuture;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
