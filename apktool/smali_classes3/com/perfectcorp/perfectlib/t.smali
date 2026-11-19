.class public final synthetic Lcom/perfectcorp/perfectlib/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget p0, p0, Lcom/perfectcorp/perfectlib/t;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lpw0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lpw0;-><init>(Ljava/util/HashSet;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/TagHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    return-void

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    return-void

    :pswitch_2
    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract$IdSystemInfo;->a:Ljava/util/List;

    const-string v1, "Id"

    const-string v2, "ReferencedIds"

    const-string v3, "Size"

    const-string v4, "LastModified"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "IdSystemInfo"

    const-string v3, "Size = ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    :try_start_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_5
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->a(Landroid/database/Cursor;)Lcom/perfectcorp/perfectlib/ph/template/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->d(Ljava/io/File;)J

    move-result-wide v7

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->b:Ljava/util/List;

    iget-wide v9, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    invoke-direct/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;JJ)V

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->d(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    goto :goto_2

    :cond_6
    return-void

    :goto_3
    :try_start_2
    const-string v1, "IdSystemInfoDao"

    const-string v2, "[getByZeroSize] failed."

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
