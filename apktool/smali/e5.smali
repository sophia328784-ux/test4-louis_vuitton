.class public final synthetic Le5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget p0, p0, Le5;->b:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/batch/android/v0/l;->w()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/appsflyer/internal/AFi1aSDK;->c()V

    return-void

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v2, Lfx0;

    invoke-direct {v2, p0, v1}, Lfx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SkuAndShadeIdMappingDatabase"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "SkuAndShadeIdMapping"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_2
    invoke-static {}, Lcom/perfectcorp/perfectlib/internal/a;->a()V

    return-void

    :pswitch_3
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/perfectcorp/uma/b;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    const-string v0, "CLFlurryAgentHelper"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_4
    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    return-void

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->b:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->m()V

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v0, "cacheKey"

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    return-void

    :pswitch_6
    invoke-static {}, Lcom/github/druk/dnssd/DNSSDEmbedded;->nativeExit()V

    :pswitch_7
    return-void

    :pswitch_8
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->T1:Landroidx/collection/MutableObjectList;

    monitor-enter p0

    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v3, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/collection/ObjectList;->b:I

    const/4 v5, 0x0

    const/16 v6, 0x1e

    if-ge v2, v6, :cond_3

    :goto_3
    if-ge v5, v4, :cond_4

    :try_start_4
    aget-object v0, v3, v5

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result v2

    sget-object v6, Landroidx/compose/ui/platform/AndroidComposeView;->P1:Landroidx/compose/ui/platform/AndroidComposeView$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->a()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    move-result v6

    if-eq v2, v6, :cond_2

    new-instance v2, Ln5;

    invoke-direct {v2, v0, v1}, Ln5;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_5
    if-ge v5, v4, :cond_4

    aget-object v1, v3, v5

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    new-instance v2, Ln5;

    invoke-direct {v2, v1, v0}, Ln5;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0

    throw v0

    :pswitch_9
    sget p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
