.class public final synthetic Lhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lhw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw;->f:Ljava/lang/Object;

    iput-object p2, p0, Lhw;->d:Ljava/lang/Object;

    iput p3, p0, Lhw;->c:I

    iput-object p4, p0, Lhw;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 15
    iput p5, p0, Lhw;->b:I

    iput-object p1, p0, Lhw;->f:Ljava/lang/Object;

    iput p2, p0, Lhw;->c:I

    iput-object p3, p0, Lhw;->d:Ljava/lang/Object;

    iput-object p4, p0, Lhw;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lhw;->b:I

    iget-object v1, p0, Lhw;->e:Ljava/lang/Object;

    iget v2, p0, Lhw;->c:I

    iget-object v3, p0, Lhw;->d:Ljava/lang/Object;

    iget-object p0, p0, Lhw;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    check-cast v3, Lcom/google/android/datatransport/runtime/TransportContext;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->f:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    :try_start_0
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lln0;

    const/16 v6, 0x15

    invoke-direct {v5, v4, v6}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v5}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->c(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v4, Lcv;

    invoke-direct {v4, p0, v3, v2}, Lcv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v4}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->c(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v3, v2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    throw p0

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/Throwable;

    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->H:Landroid/util/Range;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncodeException;

    invoke-direct {v0, v2, v3, v1}, Landroidx/camera/video/internal/encoder/EncodeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->d(Landroidx/camera/video/internal/encoder/EncodeException;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/Throwable;

    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->H:Landroid/util/Range;

    invoke-virtual {p0, v2, v3, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
