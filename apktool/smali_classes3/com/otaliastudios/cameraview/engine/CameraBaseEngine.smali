.class public abstract Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;
.super Lcom/otaliastudios/cameraview/engine/CameraEngine;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:Z

.field public C:Lcom/otaliastudios/cameraview/frame/FrameManager;

.field public final D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

.field public E:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field public F:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field public G:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field public H:Lcom/otaliastudios/cameraview/controls/Facing;

.field public I:Lcom/otaliastudios/cameraview/controls/Mode;

.field public J:Lcom/otaliastudios/cameraview/controls/Audio;

.field public K:J

.field public L:I

.field public M:I

.field public N:I

.field public O:J

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public V:Lcom/otaliastudios/cameraview/overlay/Overlay;

.field public g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

.field public h:Lcom/otaliastudios/cameraview/CameraOptions;

.field public i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

.field public j:Lcom/otaliastudios/cameraview/size/Size;

.field public k:Lcom/otaliastudios/cameraview/size/Size;

.field public l:Lcom/otaliastudios/cameraview/size/Size;

.field public m:I

.field public n:Z

.field public o:Lcom/otaliastudios/cameraview/controls/Flash;

.field public p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public q:Lcom/otaliastudios/cameraview/controls/VideoCodec;

.field public r:Lcom/otaliastudios/cameraview/controls/AudioCodec;

.field public s:Lcom/otaliastudios/cameraview/controls/Hdr;

.field public t:Lcom/otaliastudios/cameraview/controls/PictureFormat;

.field public u:Landroid/location/Location;

.field public v:F

.field public w:F

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    new-instance p1, Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-direct {p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final S(Lcom/otaliastudios/cameraview/controls/Mode;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 11

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v2, v0, v1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->F:Lcom/otaliastudios/cameraview/size/SizeSelector;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->e:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->G:Lcom/otaliastudios/cameraview/size/SizeSelector;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->f:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->c()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->h([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/otaliastudios/cameraview/size/SizeSelector;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "mode:"

    const-string v4, "computeCaptureSize:"

    const-string v5, "result:"

    const-string v7, "flip:"

    move-object v10, p1

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {p1, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v6

    :cond_2
    const-string p0, "SizeSelectors must not return Sizes other than those in the input list."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final T()Lcom/otaliastudios/cameraview/size/Size;
    .locals 14

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->W()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    iget-object v3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v3, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->X(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    iget v5, v4, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v4, v4, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-static {v5, v4}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v4

    if-eqz v1, :cond_2

    iget v5, v4, Lcom/otaliastudios/cameraview/size/AspectRatio;->c:I

    iget v4, v4, Lcom/otaliastudios/cameraview/size/AspectRatio;->b:I

    invoke-static {v5, v4}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v4

    :cond_2
    const-string v5, "targetRatio:"

    const-string v6, "targetMinSize:"

    const-string v7, "computePreviewStreamSize:"

    filled-new-array {v7, v5, v4, v6, v0}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->b(Lcom/otaliastudios/cameraview/size/AspectRatio;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v4

    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->c()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v5

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    aput-object v5, v10, v8

    invoke-static {v10}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->a([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v4

    iget v5, v0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-static {v5}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->f(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v5

    iget v0, v0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->g(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->i()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v10

    const/4 v12, 0x3

    new-array v13, v12, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v5, v13, v11

    aput-object v0, v13, v8

    aput-object v10, v13, v9

    invoke-static {v13}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->a([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    new-array v5, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v4, v5, v11

    aput-object v0, v5, v8

    invoke-static {v5}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->a([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v5

    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->c()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v10

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object v5, v13, v11

    aput-object v0, v13, v8

    aput-object v4, v13, v9

    aput-object v10, v13, v12

    invoke-static {v13}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->h([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->E:Lcom/otaliastudios/cameraview/size/SizeSelector;

    if-eqz p0, :cond_3

    new-array v4, v9, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object p0, v4, v11

    aput-object v0, v4, v8

    invoke-static {v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->h([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    :cond_3
    invoke-interface {v0, v2}, Lcom/otaliastudios/cameraview/size/SizeSelector;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    :cond_4
    const-string v0, "flip:"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "result:"

    filled-new-array {v7, v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-object p0

    :cond_5
    const-string p0, "SizeSelectors must not return Sizes other than those in the input list."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v3

    :cond_6
    const-string p0, "targetMinSize should not be null here."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3
.end method

.method public final U()Lcom/otaliastudios/cameraview/frame/FrameManager;
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->C:Lcom/otaliastudios/cameraview/frame/FrameManager;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Z(I)Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->C:Lcom/otaliastudios/cameraview/frame/FrameManager;

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->C:Lcom/otaliastudios/cameraview/frame/FrameManager;

    return-object p0
.end method

.method public final V(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v2, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract W()Ljava/util/ArrayList;
.end method

.method public final X(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p0

    iget p1, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    if-eqz p0, :cond_1

    new-instance p0, Lcom/otaliastudios/cameraview/size/Size;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/otaliastudios/cameraview/size/Size;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object p0
.end method

.method public final Y(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, v0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    iget v0, v0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v2, p1, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Q:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->P:I

    :goto_0
    if-eqz p1, :cond_2

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->P:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Q:I

    :goto_1
    const p1, 0x7fffffff

    if-gtz v2, :cond_3

    move v2, p1

    :cond_3
    if-gtz p0, :cond_4

    move p0, p1

    :cond_4
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result p1

    invoke-static {v2, p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->c()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_5

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v0, p1, p0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v0

    :cond_5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v0
.end method

.method public abstract Z(I)Lcom/otaliastudios/cameraview/frame/FrameManager;
.end method

.method public abstract a0()V
.end method

.method public abstract b0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
.end method

.method public abstract c0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V
.end method

.method public final d0(Lcom/otaliastudios/cameraview/controls/Audio;)V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->J:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->J:Lcom/otaliastudios/cameraview/controls/Audio;

    :cond_0
    return-void
.end method

.method public final e0(Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;Lcom/otaliastudios/cameraview/controls/Facing;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string p1, "facing"

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final f0(Lcom/otaliastudios/cameraview/controls/Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v1, "mode"

    invoke-virtual {p0, v1, p1, v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 3

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->y:Z

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string p1, "take picture"

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public h(Lcom/otaliastudios/cameraview/PictureResult$Stub;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->e(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    return-void

    :cond_0
    const-string p1, "onPictureResult"

    const-string v0, "result is null: something went wrong."

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v1, v0, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/otaliastudios/cameraview/CameraException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->i(Lcom/otaliastudios/cameraview/CameraException;)V

    return-void
.end method

.method public final h0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 3

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->z:Z

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string p1, "take picture snapshot"

    invoke-virtual {p0, p1, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    invoke-interface {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->f(Z)V

    return-void
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->X(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    const-string v1, "onSurfaceChanged:"

    const-string v2, "Size is"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;-><init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v2, "surface changed"

    invoke-virtual {p0, v2, v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1, p1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
