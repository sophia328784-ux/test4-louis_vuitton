.class public final Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;
.super Lcom/dynatrace/agent/storage/db/OneAgentDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public volatile n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dynatrace/agent/storage/db/OneAgentDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "events"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final g(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl$1;

    invoke-direct {v1, p0}, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl$1;-><init>(Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;)V

    const-string p0, "a59cc22b06e263270614a1e34c446daa"

    const-string v2, "2a34908ba2ef68cc767f6f241e4e9b62"

    invoke-direct {v0, p1, v1, p0, v2}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    sget-object v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->f:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    iput-object p0, v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    iput-object v0, v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final n()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final p()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/dynatrace/agent/storage/db/EventDao;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final y()Lcom/dynatrace/agent/storage/db/EventDao;
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;->n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;->n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;->n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;->n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/OneAgentDatabase_Impl;->n:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
