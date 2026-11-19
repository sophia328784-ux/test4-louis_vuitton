.class public final Landroidx/room/BaseRoomConnectionManager$DriverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/BaseRoomConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DriverWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/room/BaseRoomConnectionManager$DriverWrapper;",
        "Landroidx/sqlite/SQLiteDriver;",
        "actual",
        "<init>",
        "(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V",
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


# instance fields
.field public final a:Landroidx/sqlite/SQLiteDriver;

.field public final synthetic b:Landroidx/room/BaseRoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteDriver;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->b:Landroidx/room/BaseRoomConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a:Landroidx/sqlite/SQLiteDriver;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->b:Landroidx/room/BaseRoomConnectionManager;

    invoke-virtual {v0, p1}, Landroidx/room/BaseRoomConnectionManager;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/room/concurrent/ExclusiveLock;

    iget-boolean v2, v0, Landroidx/room/BaseRoomConnectionManager;->a:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/room/BaseRoomConnectionManager;->b:Z

    if-nez v2, :cond_0

    const-string v2, ":memory:"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {v1, p1, v2}, Landroidx/room/concurrent/ExclusiveLock;-><init>(Ljava/lang/String;Z)V

    new-instance v2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;

    invoke-direct {v2, p1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroidx/room/concurrent/ExclusiveLock;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v6, 0x0

    iget-object v1, v1, Landroidx/room/concurrent/ExclusiveLock;->b:Landroidx/room/concurrent/FileLock;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroidx/room/concurrent/FileLock;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    :goto_1
    :try_start_1
    iget-boolean v7, v0, Landroidx/room/BaseRoomConnectionManager;->b:Z

    if-nez v7, :cond_6

    iget-object p0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a:Landroidx/sqlite/SQLiteDriver;

    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    iget-boolean p1, v0, Landroidx/room/BaseRoomConnectionManager;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p1, :cond_2

    :try_start_2
    iput-boolean v4, v0, Landroidx/room/BaseRoomConnectionManager;->b:Z

    invoke-static {v0, p0}, Landroidx/room/BaseRoomConnectionManager;->a(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-boolean v3, v0, Landroidx/room/BaseRoomConnectionManager;->b:Z

    goto :goto_3

    :catchall_1
    move-exception p0

    iput-boolean v3, v0, Landroidx/room/BaseRoomConnectionManager;->b:Z

    throw p0

    :cond_2
    invoke-virtual {v0}, Landroidx/room/BaseRoomConnectionManager;->d()Landroidx/room/DatabaseConfiguration;

    move-result-object p1

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v3, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne p1, v3, :cond_3

    const-string p1, "PRAGMA synchronous = NORMAL"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "PRAGMA synchronous = FULL"

    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :goto_2
    invoke-static {p0}, Landroidx/room/BaseRoomConnectionManager;->b(Landroidx/sqlite/SQLiteConnection;)V

    invoke-virtual {v0}, Landroidx/room/BaseRoomConnectionManager;->e()Landroidx/room/RoomOpenDelegate;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/room/RoomOpenDelegate;->d(Landroidx/sqlite/SQLiteConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    if-eqz v1, :cond_5

    :try_start_4
    iget-object p1, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    goto :goto_5

    :catchall_2
    move-exception p0

    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_4
    move v3, v4

    goto :goto_7

    :cond_5
    :goto_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_6
    :try_start_7
    const-string p0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v1, :cond_8

    :try_start_8
    iget-object p1, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    goto :goto_6

    :catchall_4
    move-exception p0

    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    throw p0

    :cond_8
    :goto_6
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p0

    goto :goto_4

    :goto_7
    if-eqz v3, :cond_9

    :try_start_b
    throw p0

    :catchall_6
    move-exception p0

    goto :goto_8

    :cond_9
    invoke-virtual {v2, p0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_8
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
