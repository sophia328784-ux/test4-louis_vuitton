.class public final synthetic Lny0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V
    .locals 0

    iput p3, p0, Lny0;->b:I

    iput-object p1, p0, Lny0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Lny0;->d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lny0;->b:I

    const-string v1, ""

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    iget-object v4, p0, Lny0;->d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    iget-object p0, p0, Lny0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Start download component="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-interface {v4, v1, v0, p0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    new-instance v0, Lry0;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Lry0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Lsy0;

    invoke-direct {v0, v4, v1}, Lsy0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[syncServerByProtocol] Start download component="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-interface {v4, v1, v0, p0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    new-instance v0, Lry0;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Lry0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Lsy0;

    invoke-direct {v0, v4, v1}, Lsy0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object p0

    new-instance v0, Lty0;

    invoke-direct {v0, v4, v1}, Lty0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[getListBySyncServerProtocol] Start download component="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-interface {v4, v1, v0, p0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    new-instance v0, Lry0;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lry0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Lsy0;

    invoke-direct {v0, v4, v1}, Lsy0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    invoke-interface {v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object p0

    new-instance v0, Lty0;

    invoke-direct {v0, v4, v1}, Lty0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
