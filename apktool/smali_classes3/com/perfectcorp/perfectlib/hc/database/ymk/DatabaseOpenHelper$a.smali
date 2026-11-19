.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static q()V
    .locals 9

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const-string v1, "youcammakeup.sqlite"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->n(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "importBuiltinDatabaseFile Target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "database.ymk.DatabaseOpenHelper"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const-string v8, "makeup/youcammakeup.sqlite"

    invoke-static {v7, v8}, Lcom/perfectcorp/common/android/Apk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v7, v8}, Lcom/perfectcorp/common/utility/FileUtils;->b(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    const-string v0, "5.12.0"

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v7, v0, v4

    aput-object v8, v0, v1

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    const-string v0, "copy default database successfully!"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v6

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v6

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v6, v2, v4

    aput-object v8, v2, v1

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->a([Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 0

    const-string p0, "BuiltIn"

    return-object p0
.end method

.method public final j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->b:Z

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->q()V

    const-string p0, ""

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;->q()V

    return-void
.end method

.method public final m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "BUILT_IN_CONTENT_VERSION_STRING"

    invoke-virtual {v1, v2, v0}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5.12.0"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$a;->q()V

    :cond_1
    invoke-super {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->o()V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$c;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$c;-><init>()V

    throw p0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Built-in DB is out-of-date, oldVersion: "

    const-string v0, ", newVersion: "

    invoke-static {p2, p3, p1, v0}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
