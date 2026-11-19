.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    check-cast p1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->u:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->v:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;

    invoke-direct {v2, v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;Landroid/util/Pair;)V

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    aget-object p0, p1, p0

    check-cast p0, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string p1, "Future had been cancelled."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;->d:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->m:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lr81;

    const/16 v3, 0xd

    invoke-direct {p1, v3}, Lr81;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;

    invoke-direct {p0, v2, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    const/4 v2, 0x0

    invoke-direct {p1, v3, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
