.class public final Landroidx/room/RoomConnectionManager;
.super Landroidx/room/BaseRoomConnectionManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;,
        Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/room/RoomConnectionManager;",
        "Landroidx/room/BaseRoomConnectionManager;",
        "Landroidx/room/DatabaseConfiguration;",
        "config",
        "Landroidx/room/RoomOpenDelegate;",
        "openDelegate",
        "<init>",
        "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V",
        "Lkotlin/Function1;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "supportOpenHelperFactory",
        "(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)V",
        "SupportOpenHelperCallback",
        "NoOpOpenDelegate",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final c:Landroidx/room/DatabaseConfiguration;

.field public final d:Landroidx/room/RoomOpenDelegate;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/room/coroutines/ConnectionPool;

.field public g:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->u:Landroidx/sqlite/SQLiteDriver;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    sget-object v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->f:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    new-instance p1, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    iget p2, p2, Landroidx/room/RoomOpenDelegate;->a:I

    invoke-direct {p1, p0, p2}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    iput-object p1, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p1

    new-instance p2, Landroidx/room/driver/SupportSQLiteConnectionPool;

    new-instance v0, Landroidx/room/driver/SupportSQLiteDriver;

    invoke-interface {v2, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    invoke-direct {p2, v0}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    goto :goto_3

    :cond_1
    const-string p0, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v4

    :cond_2
    instance-of p1, v0, Landroidx/sqlite/driver/AndroidSQLiteDriver;

    const-string p2, ":memory:"

    if-eqz p1, :cond_4

    new-instance p1, Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;

    new-instance v2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {v2, p0, v0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    if-nez v3, :cond_3

    move-object v3, p2

    :cond_3
    invoke-direct {p1, v2, v3}, Landroidx/room/coroutines/AndroidSQLiteDriverConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p1, p0, v0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v0, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_2

    :cond_5
    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    invoke-direct {p1, p0, v0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, p2, v0

    const/4 v2, 0x2

    if-eq v0, v5, :cond_7

    if-ne v0, v2, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const-string p0, "Can\'t get max number of reader for journal mode \'"

    invoke-static {v1, p0}, Lct0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_7
    move v0, v5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p2, p2, v6

    if-eq p2, v5, :cond_9

    if-ne p2, v2, :cond_8

    goto :goto_1

    :cond_8
    const-string p0, "Can\'t get max number of writers for journal mode \'"

    invoke-static {v1, p0}, Lct0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_1
    new-instance p2, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {p2, p1, v3, v0, v5}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V

    move-object p1, p2

    :goto_2
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    :goto_3
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v1, p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->k()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, v5}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_b
    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/DatabaseConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/room/DatabaseConfiguration;",
            "+",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    invoke-direct {v0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    .line 194
    iput-object v1, v0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 195
    new-instance v2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    invoke-direct {v2}, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;-><init>()V

    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 196
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    if-nez v2, :cond_0

    .line 197
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 198
    :goto_0
    iput-object v3, v0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 199
    new-instance v3, Lxo0;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v4}, Lxo0;-><init>(Ljava/lang/Object;I)V

    if-nez v2, :cond_1

    .line 200
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 201
    :cond_1
    check-cast v2, Ljava/util/Collection;

    .line 202
    new-instance v4, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;

    invoke-direct {v4, v3}, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;-><init>(Lxo0;)V

    .line 203
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    .line 204
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    .line 205
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    .line 206
    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 207
    iget-object v5, v1, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 208
    iget-boolean v7, v1, Landroidx/room/DatabaseConfiguration;->f:Z

    .line 209
    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->h:Ljava/util/concurrent/Executor;

    .line 210
    iget-object v10, v1, Landroidx/room/DatabaseConfiguration;->i:Ljava/util/concurrent/Executor;

    .line 211
    iget-object v11, v1, Landroidx/room/DatabaseConfiguration;->j:Landroid/content/Intent;

    .line 212
    iget-boolean v12, v1, Landroidx/room/DatabaseConfiguration;->k:Z

    .line 213
    iget-boolean v13, v1, Landroidx/room/DatabaseConfiguration;->l:Z

    .line 214
    iget-object v14, v1, Landroidx/room/DatabaseConfiguration;->m:Ljava/util/Set;

    .line 215
    iget-object v15, v1, Landroidx/room/DatabaseConfiguration;->n:Ljava/lang/String;

    move-object/from16 v16, v2

    .line 216
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->o:Ljava/io/File;

    move-object/from16 v17, v2

    .line 217
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->p:Ljava/util/concurrent/Callable;

    move-object/from16 v18, v2

    .line 218
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->q:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    move-object/from16 v19, v2

    .line 219
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->r:Ljava/util/List;

    move-object/from16 v20, v2

    .line 220
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->s:Ljava/util/List;

    move-object/from16 v21, v2

    .line 221
    iget-boolean v2, v1, Landroidx/room/DatabaseConfiguration;->t:Z

    move/from16 v22, v2

    .line 222
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->u:Landroidx/sqlite/SQLiteDriver;

    .line 223
    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->v:Lkotlin/coroutines/CoroutineContext;

    .line 224
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v1

    .line 225
    new-instance v1, Landroidx/room/DatabaseConfiguration;

    move/from16 v24, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v24

    invoke-direct/range {v1 .. v23}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 226
    new-instance v2, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 227
    new-instance v3, Landroidx/room/driver/SupportSQLiteDriver;

    move-object/from16 v4, p2

    .line 228
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 229
    invoke-direct {v3, v1}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 230
    invoke-direct {v2, v3}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    .line 231
    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    .line 232
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v8, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 233
    :goto_1
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->k()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    return-object p0
.end method

.method public final d()Landroidx/room/DatabaseConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    return-object p0
.end method

.method public final e()Landroidx/room/RoomOpenDelegate;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ":memory:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    iget-object p0, p0, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final k()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    instance-of v0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->b:Landroidx/room/driver/SupportSQLiteDriver;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0

    :cond_1
    return-object v1
.end method
