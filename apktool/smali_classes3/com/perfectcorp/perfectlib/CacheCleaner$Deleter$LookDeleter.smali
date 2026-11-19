.class final Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$LookDeleter;
.super Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LookDeleter"
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

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->f()V

    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p1, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p1, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object p1, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
