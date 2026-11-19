.class public final synthetic Lcom/perfectcorp/perfectlib/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;Ljava/util/List;Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/j4;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/j4;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/j4;->d:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/j4;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/j4;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/j4;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-object p0

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/j4;->d:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/j4;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/perfectcorp/perfectlib/ProductMappingUtility$SkuToProductMapper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/j4;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ls40;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Ls40;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/j4;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->c(Ljava/util/List;ZLcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lxy0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lxy0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/i;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object p0
.end method
