.class Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;
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

.field final synthetic val$eventRecord:Lcom/dynatrace/agent/storage/db/EventRecord;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Lcom/dynatrace/agent/storage/db/EventRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iput-object p2, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->val$eventRecord:Lcom/dynatrace/agent/storage/db/EventRecord;

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

    .line 87
    invoke-virtual {p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->call()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public call()Lkotlin/Unit;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->b:Landroidx/room/EntityInsertionAdapter;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->val$eventRecord:Lcom/dynatrace/agent/storage/db/EventRecord;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->a()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v3, v1, Lcom/dynatrace/agent/storage/db/EventRecord;->a:J

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->a(IJ)V

    iget-object v3, v1, Lcom/dynatrace/agent/storage/db/EventRecord;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->O0(ILjava/lang/String;)V

    iget-wide v3, v1, Lcom/dynatrace/agent/storage/db/EventRecord;->c:J

    const/4 v5, 0x3

    invoke-interface {v2, v5, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->a(IJ)V

    iget-boolean v3, v1, Lcom/dynatrace/agent/storage/db/EventRecord;->d:Z

    const/4 v4, 0x4

    int-to-long v5, v3

    invoke-interface {v2, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->a(IJ)V

    iget v1, v1, Lcom/dynatrace/agent/storage/db/EventRecord;->e:I

    int-to-long v3, v1

    const/4 v1, 0x5

    invoke-interface {v2, v1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->a(IJ)V

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->G0()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/room/SharedSQLiteStatement;->c(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->h()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0, v2}, Landroidx/room/SharedSQLiteStatement;->c(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->h()V

    throw v0
.end method
