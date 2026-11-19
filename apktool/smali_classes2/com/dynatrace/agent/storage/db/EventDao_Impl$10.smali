.class Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/dynatrace/agent/storage/db/EventMetadata;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iput-object p2, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dynatrace/agent/storage/db/EventMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-static {v0, v1}, Landroidx/room/util/DBUtil;->e(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v3

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v3, Lcom/dynatrace/agent/storage/db/EventMetadata;

    invoke-direct/range {v3 .. v9}, Lcom/dynatrace/agent/storage/db/EventMetadata;-><init>(JJZI)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method
