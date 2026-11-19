.class Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;
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

.field final synthetic val$recordIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iput-object p2, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->val$recordIds:Ljava/util/List;

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

    .line 114
    invoke-virtual {p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->call()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public call()Lkotlin/Unit;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "DELETE FROM events WHERE id IN ("

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->val$recordIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->a()V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->b()V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->l()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->T0(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->val$recordIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->a(IJ)V

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v1, v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->S()I

    iget-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object v0, v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->w()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->h()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;->this$0:Lcom/dynatrace/agent/storage/db/EventDao_Impl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->h()V

    throw v0
.end method
