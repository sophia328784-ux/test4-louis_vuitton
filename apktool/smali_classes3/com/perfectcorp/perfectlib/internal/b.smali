.class public abstract Lcom/perfectcorp/perfectlib/internal/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/Globals;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pf_dump_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/internal/a;->dumpDatabases:Z

    if-eqz v1, :cond_1

    const-string v1, "databases"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/internal/a;->dumpFiles:Z

    if-eqz v1, :cond_2

    const-string v1, "files"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/internal/a;->dumpPreferences:Z

    if-eqz v1, :cond_3

    const-string v1, "shared_prefs"

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Lcom/perfectcorp/common/utility/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    return-void
.end method
