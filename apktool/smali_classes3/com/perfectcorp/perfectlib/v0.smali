.class public final synthetic Lcom/perfectcorp/perfectlib/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic e:I

.field public final synthetic f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V
    .locals 0

    iput p7, p0, Lcom/perfectcorp/perfectlib/v0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/v0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput p3, p0, Lcom/perfectcorp/perfectlib/v0;->e:I

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/v0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/v0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p6, p0, Lcom/perfectcorp/perfectlib/v0;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/perfectcorp/perfectlib/v0;->b:I

    iget v1, p0, Lcom/perfectcorp/perfectlib/v0;->e:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/v0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/v0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast p1, Lcom/perfectcorp/perfectlib/VtoSetting;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/v0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/v0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-boolean v9, p0, Lcom/perfectcorp/perfectlib/v0;->h:Z

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0

    :pswitch_0
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/v0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/v0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-boolean v9, p0, Lcom/perfectcorp/perfectlib/v0;->h:Z

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
