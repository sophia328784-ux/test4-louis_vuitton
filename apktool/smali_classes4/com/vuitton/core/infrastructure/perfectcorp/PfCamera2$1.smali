.class Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;->a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    sget-object p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;->a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m()V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    sget-object p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;->a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;->a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;->a:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->h:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
