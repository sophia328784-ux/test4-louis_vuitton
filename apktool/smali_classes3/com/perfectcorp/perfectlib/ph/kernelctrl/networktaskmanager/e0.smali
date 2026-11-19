.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic b:Lcom/perfectcorp/common/guava/FluentFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/common/guava/FluentFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;->b:Lcom/perfectcorp/common/guava/FluentFuture;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 4

    check-cast p1, Ljava/io/File;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v3, v2, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->a:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e0;->b:Lcom/perfectcorp/common/guava/FluentFuture;

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/downloader/UnzipHelper;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/io/File;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/f;

    invoke-direct {v0, v2, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/f;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Ljava/io/File;)V

    sget-object p1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    return-object p0
.end method
