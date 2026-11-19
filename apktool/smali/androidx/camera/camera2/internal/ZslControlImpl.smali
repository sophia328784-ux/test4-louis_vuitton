.class final Landroidx/camera/camera2/internal/ZslControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/internal/ZslControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/camera/core/internal/utils/ZslRingBuffer;

.field public d:Z

.field public e:Z

.field public final f:Z

.field public final g:Z

.field public h:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field public i:Landroidx/camera/core/impl/ImmediateSurface;

.field public j:Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/Executor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->d:Z

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->e:Z

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->f:Z

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->g:Z

    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->a:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    iput-object p2, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->b:Ljava/util/concurrent/Executor;

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move p1, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->f:Z

    const-class p1, Landroidx/camera/camera2/internal/compat/quirk/ZslDisablerQuirk;

    sget-object v1, Landroidx/camera/camera2/internal/compat/quirk/DeviceQuirks;->a:Landroidx/camera/core/impl/Quirks;

    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/Quirks;->b(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    if-eqz p1, :cond_2

    move v0, p2

    :cond_2
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->g:Z

    new-instance p1, Landroidx/camera/core/internal/utils/ZslRingBuffer;

    new-instance p2, La61;

    const/16 v0, 0xb

    invoke-direct {p2, v0}, La61;-><init>(I)V

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2}, Landroidx/camera/core/internal/utils/ZslRingBuffer;-><init>(ILandroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->c:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->h:Landroidx/camera/core/SafeCloseImageReaderProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->c()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->h:Landroidx/camera/core/SafeCloseImageReaderProxy;

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->j:Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->j:Landroidx/camera/camera2/internal/ZslControlImpl$ImageWriterHolder;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->c:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->i:Landroidx/camera/core/impl/ImmediateSurface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->a()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->i:Landroidx/camera/core/impl/ImmediateSurface;

    :cond_3
    return-void
.end method
