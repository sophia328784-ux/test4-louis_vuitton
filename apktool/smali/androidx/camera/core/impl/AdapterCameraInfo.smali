.class public Landroidx/camera/core/impl/AdapterCameraInfo;
.super Landroidx/camera/core/impl/ForwardingCameraInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/AdapterCameraInfo$CameraOperation;
    }
.end annotation


# instance fields
.field public final b:Landroidx/camera/core/impl/CameraInfoInternal;

.field public final c:Landroidx/camera/core/impl/SessionProcessor;

.field public final d:Landroidx/camera/core/impl/CameraConfig;

.field public e:Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->e:Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->b:Landroidx/camera/core/impl/CameraInfoInternal;

    iput-object p2, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->d:Landroidx/camera/core/impl/CameraConfig;

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->x()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->c:Landroidx/camera/core/impl/SessionProcessor;

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->O()V

    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->Z()V

    return-void
.end method

.method public static z(FFF)F
    .locals 3

    cmpl-float v0, p2, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p0, p1

    if-nez v0, :cond_2

    return v1

    :cond_2
    div-float p0, v2, p0

    div-float p2, v2, p2

    div-float/2addr v2, p1

    sub-float/2addr p0, v2

    sub-float/2addr p2, v2

    div-float/2addr p0, p2

    return p0
.end method


# virtual methods
.method public final getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->b:Landroidx/camera/core/impl/CameraInfoInternal;

    return-object p0
.end method

.method public final i()Z
    .locals 2

    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->c:Landroidx/camera/core/impl/SessionProcessor;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->a(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->b:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->i()Z

    move-result p0

    return p0
.end method

.method public final n()Z
    .locals 5

    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->c:Landroidx/camera/core/impl/SessionProcessor;

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics$Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    array-length p0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_3

    aget v3, v0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    iget-object p0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->a:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->n()Z

    move-result p0

    return p0
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 6

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->c:Landroidx/camera/core/impl/SessionProcessor;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->a(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroidx/camera/core/internal/ImmutableZoomState;->e(FFFF)Landroidx/camera/core/ZoomState;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->b:Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->w()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ZoomState;

    invoke-static {}, Landroidx/camera/core/impl/SessionProcessor;->g()Landroid/util/Range;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v2}, Landroidx/camera/core/ZoomState;->c()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v2}, Landroidx/camera/core/ZoomState;->a()F

    move-result v2

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->e:Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->w()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Ls3;

    invoke-direct {v2, v3, v0}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ls3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;-><init>(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->e(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->e:Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    :cond_2
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->e:Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    return-object p0

    :cond_3
    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->w()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
