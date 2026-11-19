.class public Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

.field public b:Lna0;


# virtual methods
.method public final a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->a:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2, p3}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a(Ljava/util/Collection;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/lang/Object;)V

    new-instance p1, Lyw0;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Lyw0;-><init>(I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p3, p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->b:Lna0;

    invoke-virtual {p3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->a:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    .line 41
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "image"

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
    .locals 0

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->b:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    return-object p0
.end method
