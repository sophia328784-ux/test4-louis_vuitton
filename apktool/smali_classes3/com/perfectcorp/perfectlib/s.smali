.class public final synthetic Lcom/perfectcorp/perfectlib/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/s;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/perfectcorp/perfectlib/s;->b:I

    const/4 v1, 0x3

    const-string v2, "CacheCleaner"

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/s;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->f()V

    goto :goto_0

    :cond_0
    const-string p0, "clearAll() is running"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/SurveySyncingException;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/exceptions/SurveySyncingException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[deleteByType] type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", size="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v1, v2}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v4}, Lcom/perfectcorp/perfectlib/CacheCleaner;->a(Ljava/util/Collection;Z)J

    const-string p0, "[deleteByType] end"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    check-cast p0, Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "path IS NOT NULL AND path !"

    const-string v6, ""

    const-string v7, "path"

    invoke-virtual {v0, v4, v7, v5, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/HashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at;->b(Ljava/util/Collection;Ljava/util/Iterator;)Z

    :goto_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/perfectcorp/perfectlib/u;

    invoke-direct {v5, p0, v4}, Lcom/perfectcorp/perfectlib/u;-><init>(Ljava/util/concurrent/Future;Ljava/util/HashSet;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[deleteNotReferredImages] Delete file path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
