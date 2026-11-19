.class public final synthetic Lcom/perfectcorp/perfectlib/b0;
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

    iput p5, p0, Lcom/perfectcorp/perfectlib/b0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/b0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/b0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/b0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/b0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lcom/perfectcorp/perfectlib/b0;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/b0;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/b0;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/b0;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/b0;->f:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lcom/perfectcorp/common/network/ProgressCallback;

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->FOUNDATION:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object v8

    new-instance v9, Lxy0;

    invoke-direct {v9, v4, v1}, Lxy0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    sget-object v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v11, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    move-object v12, v11

    move-object v13, v11

    move-object v14, v11

    invoke-virtual/range {v8 .. v14}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v2, Lcom/perfectcorp/perfectlib/j4;

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/j4;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;Ljava/util/List;Lcom/perfectcorp/common/network/ProgressCallback;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ls40;

    const/4 v0, 0x4

    invoke-direct {p0, v7, v0}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v6, v1, p0, v4}, Lcom/perfectcorp/perfectlib/SkuHandler;->c(Ljava/util/List;ZLcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lxy0;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Lxy0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/i;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    move-object v1, p0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/b0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/b0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/b0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/b0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[preloadFunStickerContent] copy component id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "ContentPreloader"

    invoke-static {v5, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->downloadURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->c(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->d(Ljava/io/InputStream;Ljava/io/File;)V

    :goto_1
    const-string p0, "[preloadFunStickerContent] validate version id="

    invoke-static {v5, p0, v2, v6}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->a(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "[preloadFunStickerContent] insert component id="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v6, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v3, Lyp;

    invoke-direct {v3, v1, p0, v2}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/FunStickerNotSupportedException;

    const-string v1, "SDK supports version 5 but template \""

    const-string v3, "\" is version "

    invoke-static {v1, v2, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->m()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/FunStickerNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
