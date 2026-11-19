.class Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

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

    .line 61
    invoke-virtual {p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->call()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public call()Lkotlin/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->a()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->S()I

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->w()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v2, v2, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->c(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v2, v2, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->c(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method
