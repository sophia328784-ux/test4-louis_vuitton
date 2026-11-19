.class final Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$TutorialDeleter;
.super Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TutorialDeleter"
.end annotation


# virtual methods
.method public final b()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    iget-wide v2, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->h:J

    iget-wide v0, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->h:J

    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, " SET isDownloaded=0 WHERE guid"

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/tutorial/TutorialDataDao;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[setDeleted] failed. guids="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TutorialInfoDao"

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
