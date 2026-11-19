.class public final synthetic Lcom/perfectcorp/perfectlib/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p5, p0, Lcom/perfectcorp/perfectlib/u0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/u0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/u0;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/u0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/u0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/u0;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/u0;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/u0;->e:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget v3, p0, Lcom/perfectcorp/perfectlib/u0;->d:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/u0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p1, v2, p0, v1, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {p1, v2, p0, v1, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
