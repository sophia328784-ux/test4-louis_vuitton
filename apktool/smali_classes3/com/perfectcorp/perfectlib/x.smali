.class public final synthetic Lcom/perfectcorp/perfectlib/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
.implements Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ContentPreloader;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/x;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/x;->c:Lcom/perfectcorp/perfectlib/ContentPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/x;->c:Lcom/perfectcorp/perfectlib/ContentPreloader;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/perfectcorp/perfectlib/ContentPreloader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lcom/perfectcorp/perfectlib/x;->b:I

    const-string v1, "ContentPreloader"

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/x;->c:Lcom/perfectcorp/perfectlib/ContentPreloader;

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[preloadSku] preload the new SKU, id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/z;

    invoke-direct {p0, v4, p1, v6}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {p0, v4, p1, v6}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_1
    move-object v10, p1

    check-cast v10, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->guid:Ljava/lang/String;

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v11, p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/perfectcorp/perfectlib/b0;

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/x;->c:Lcom/perfectcorp/perfectlib/ContentPreloader;

    invoke-direct/range {v7 .. v12}, Lcom/perfectcorp/perfectlib/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/c0;

    invoke-direct {p1, v8, v11, v9, v6}, Lcom/perfectcorp/perfectlib/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/z;

    invoke-direct {p0, v4, p1, v2}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {p0, v4, p1, v2}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    iget-object p0, v4, Lcom/perfectcorp/perfectlib/ContentPreloader;->g:Ljava/lang/String;

    const-string v0, "Mapping file isn\'t existed or isn\'t a file. path="

    iget-boolean v4, v4, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    const-string v7, ".json"

    if-eqz v4, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {p1, v7}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Feature type \""

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" isn\'t existed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Mapping file isn\'t a file. path="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lxp;

    invoke-direct {p0, v0, v6}, Lxp;-><init>(Ljava/io/File;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0, p1, v7}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;->a:Ljava/util/logging/Logger;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "IOException thrown while closing Closeable."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    new-instance v0, Lg8;

    invoke-direct {v0, p0, v5}, Lg8;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    :goto_2
    new-instance v0, Lo7;

    invoke-direct {v0, p0, p1, v2}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lt7;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->onErrorResumeNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_3

    :catchall_0
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;->a:Ljava/util/logging/Logger;

    :goto_3
    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;->a:Ljava/util/logging/Logger;

    throw p0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    new-instance p0, Lcom/perfectcorp/perfectlib/w;

    invoke-direct {p0, v4, v3}, Lcom/perfectcorp/perfectlib/w;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lbm;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lbm;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lwp;

    invoke-direct {p1, v2}, Lwp;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lwp;

    invoke-direct {p1, v3}, Lwp;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/x;

    const/4 v0, 0x4

    invoke-direct {p1, v4, v0}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/x;

    const/4 v1, 0x5

    invoke-direct {p1, v4, v1}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p0, Lwp;

    invoke-direct {p0, v0}, Lwp;-><init>(I)V

    new-instance v7, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v7, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln7;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Ln7;-><init>(I)V

    invoke-virtual {v7, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v7, Lcom/perfectcorp/perfectlib/w;

    invoke-direct {v7, v4, v2}, Lcom/perfectcorp/perfectlib/w;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    sget-object v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v8, v6}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/x;

    const/4 v9, 0x6

    invoke-direct {v8, v4, v9}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {v8, v4, p1}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v7, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p1, Lwp;

    invoke-direct {p1, v1}, Lwp;-><init>(I)V

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v8, v7, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Ln7;

    const/16 v7, 0x9

    invoke-direct {p1, v7}, Ln7;-><init>(I)V

    invoke-virtual {v8, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v8, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/w;

    invoke-direct {p0, v4, v0}, Lcom/perfectcorp/perfectlib/w;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {p1, v4, v7}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Ld8;

    invoke-direct {p1, v5}, Ld8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p0, Lbm;

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbm;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln7;

    invoke-direct {p0, v1}, Ln7;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p1, v8, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/w;

    invoke-direct {p0, v4, v6}, Lcom/perfectcorp/perfectlib/w;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lbm;

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lbm;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln7;

    invoke-direct {p0, v9}, Ln7;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/w;

    invoke-direct {p0, v4, v5}, Lcom/perfectcorp/perfectlib/w;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {p0, v4, v6}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v1, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {p0, v4, v5}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Ld8;

    invoke-direct {p1, v2}, Ld8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p0, Lbm;

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lbm;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v1, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln7;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Ln7;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->values()[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lwp;

    invoke-direct {v0, v6}, Lwp;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lwp;

    invoke-direct {v0, v5}, Lwp;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/x;

    invoke-direct {v0, v4, v3}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a:Ld8;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    new-instance p0, Lcom/perfectcorp/perfectlib/z;

    invoke-direct {p0, v4, p1, v5}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lb8;

    invoke-direct {p0, p1, v5}, Lb8;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {p0, v4, p1, v5}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {p1, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_6
    check-cast p1, Ljava/util/Map;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    const-string v10, "Look"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "NailLook"

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->c:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/n;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const-string v7, "[preloadLook] pass already in database reference_element, id="

    :goto_5
    invoke-static {v3, v7, v9, v1}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v5

    :cond_6
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "[isReferenceElementIdIntegrity] lack of element id="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v6

    goto :goto_6

    :cond_7
    if-nez v10, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preload failed, lack of reference_element, id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    new-instance v10, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v10, v7}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_8
    iget-wide v10, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/LookHandler;->e(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_9

    invoke-static {v9, v5}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    const-string v7, "[preloadLook] pass already in database look, id="

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[preloadLook] preload referenceElementList.size()="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lookList.size()="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/x;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "ContentPreloader"

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/x;->c:Lcom/perfectcorp/perfectlib/ContentPreloader;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->guid:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[preloadFunStickerContent] pass already in database component, id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/m;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/texture/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/u;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[preloadIdSystemContent] pass already in database component, id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
