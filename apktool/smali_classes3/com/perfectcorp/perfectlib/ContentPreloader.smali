.class final Lcom/perfectcorp/perfectlib/ContentPreloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ContentPreloader$LookVersions;,
        Lcom/perfectcorp/perfectlib/ContentPreloader$SkuSetIds;,
        Lcom/perfectcorp/perfectlib/ContentPreloader$SkuVersions;,
        Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

.field public final i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final j:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/Path;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->c:Ljava/lang/String;

    const-string v2, "preload/"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->SD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    if-ne p4, v2, :cond_0

    const-string p4, "SD"

    goto :goto_0

    :cond_0
    const-string p4, "HD"

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "MAPPING/"

    const-string v3, "LOOK/"

    const-string v4, "SKU_SET/"

    const-string v5, "SKU/"

    const-string v6, "/"

    const-string v7, "FunSticker/"

    const-string v8, "Built-in"

    const/4 v9, 0x3

    const-string v10, "ContentPreloader"

    if-eqz v1, :cond_1

    const-string p1, "preload test folder exist! use this folder to preload content"

    invoke-static {v9, v10, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->b:Ljava/lang/String;

    invoke-static {v0, v7, p4, v6}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->g:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/Path;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "use assets folder to preload content"

    invoke-static {v9, v10, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/Path;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->b:Ljava/lang/String;

    invoke-static {p1, v7, p4, v6}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->c:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-void

    :cond_2
    const-string p0, "External path isn\'t supported."

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;ZZ)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->content_zip:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ContentPreloader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    invoke-static {p1, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->a(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/perfectcorp/perfectlib/ContentPreloader;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Z)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;->c()Z

    move-result p2

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;->b()V

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const-string p0, "Content ZIP file unzip failed. SKU guid="

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {p1, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string p0, "No content ZIP. SKU guid="

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {p1, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception p0

    if-eqz p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "content zip is not in asset folder. SKU guid="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentPreloader"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    throw p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[preloadIdSystemContent] copy component id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "ContentPreloader"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->c(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->d(Ljava/io/InputStream;Ljava/io/File;)V

    :goto_0
    const-string v3, "[preloadIdSystemContent] unzip from "

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "[preloadIdSystemContent] to "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "[preloadIdSystemContent] parse and insert component id="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    move-result-object p2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lr6;

    const/16 v2, 0x15

    invoke-direct {v1, p2, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->j:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/perfectcorp/common/utility/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p2

    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    const-string p2, "Copy asset files failed, file="

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "ContentPreloader"

    invoke-static {p2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e(Ljava/util/HashMap;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " makeupVer is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", it\'s out of version, current is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[putValidMetadata] "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ContentPreloader"

    invoke-static {p3, p2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/perfectcorp/perfectlib/exceptions/LookNotSupportedException;

    invoke-direct {p2, p1}, Lcom/perfectcorp/perfectlib/exceptions/LookNotSupportedException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    invoke-virtual {p0, v0, p2}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->a:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "reloading "

    const/4 v1, 0x3

    const-string v2, "ContentPreloader"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ContentPreloader;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final preload()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 4

    new-instance v0, La8;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/x;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/x;-><init>(Lcom/perfectcorp/perfectlib/ContentPreloader;I)V

    new-instance p0, Ld8;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ld8;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/s;-><init>(Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Z)V

    return-object v2
.end method
