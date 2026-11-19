.class public Lcom/otaliastudios/cameraview/CameraView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;
    }
.end annotation


# static fields
.field public static final E:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public A:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

.field public B:Z

.field public C:Z

.field public D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/util/HashMap;

.field public f:Lcom/otaliastudios/cameraview/controls/Preview;

.field public g:Lcom/otaliastudios/cameraview/controls/Engine;

.field public h:Lcom/otaliastudios/cameraview/filter/Filter;

.field public i:I

.field public j:I

.field public k:Landroid/os/Handler;

.field public l:Ljava/util/concurrent/ThreadPoolExecutor;

.field public m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field public n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

.field public o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

.field public p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field public q:Lcom/otaliastudios/cameraview/size/Size;

.field public r:Landroid/media/MediaActionSound;

.field public s:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

.field public final t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final u:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public v:Landroidx/lifecycle/Lifecycle;

.field public w:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

.field public x:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

.field public y:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

.field public z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraView"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->e:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/CameraView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/controls/Audio;)Z
    .locals 6

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne p1, v0, :cond_3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v3, "Permission error: when audio is enabled (Audio.ON) the RECORD_AUDIO permission should be added to the app manifest file."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    const/4 v4, 0x1

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v4

    :goto_3
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    move p1, v4

    goto :goto_5

    :cond_7
    move p1, v2

    :goto_5
    if-nez v5, :cond_8

    if-nez p1, :cond_8

    return v4

    :cond_8
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    :goto_6
    instance-of v4, p0, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_a

    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_9

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    :cond_9
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_b

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v0, :cond_d

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 p1, 0x10

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_d
    return v2
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 6

    const-string v0, "instantiating. engine:"

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    const-string v2, "doInstantiateEngine:"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-boolean v5, p0, Lcom/otaliastudios/cameraview/CameraView;->B:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/otaliastudios/cameraview/controls/Engine;->CAMERA2:Lcom/otaliastudios/cameraview/controls/Engine;

    if-ne v0, v5, :cond_0

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-direct {v0, v4}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Engine;->CAMERA1:Lcom/otaliastudios/cameraview/controls/Engine;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-direct {v0, v4}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;-><init>(Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;)V

    :goto_0
    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "instantiated. engine:"

    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    iput-object p0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->V:Lcom/otaliastudios/cameraview/overlay/Overlay;

    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    iput-boolean v2, v0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/otaliastudios/cameraview/R$styleable;->a:[I

    move-object/from16 v5, p2

    invoke-virtual {v3, v5, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v4, Lcom/otaliastudios/cameraview/controls/ControlParser;

    invoke-direct {v4, v1, v3}, Lcom/otaliastudios/cameraview/controls/ControlParser;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 v5, 0x25

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v7, 0x2c

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/otaliastudios/cameraview/CameraView;->B:Z

    const/16 v8, 0x29

    invoke-virtual {v3, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/otaliastudios/cameraview/CameraView;->d:Z

    iget v8, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->a:I

    invoke-static {v8}, Lcom/otaliastudios/cameraview/controls/Preview;->a(I)Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object v8

    iput-object v8, v0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    iget v8, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->k:I

    invoke-static {v8}, Lcom/otaliastudios/cameraview/controls/Engine;->a(I)Lcom/otaliastudios/cameraview/controls/Engine;

    move-result-object v8

    iput-object v8, v0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    const/16 v8, 0x16

    sget v9, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->g:I

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    const/16 v9, 0x30

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    float-to-long v11, v9

    const/16 v9, 0x2f

    invoke-virtual {v3, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    const/16 v13, 0x2d

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    const/16 v15, 0x27

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v15, 0x28

    invoke-virtual {v3, v15, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    const/4 v2, 0x4

    const/16 v6, 0xbb8

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    move v6, v9

    move/from16 v17, v10

    int-to-long v9, v2

    const/16 v2, 0x1a

    move/from16 v18, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v6, 0x24

    move/from16 v19, v15

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-wide/from16 v20, v9

    const/16 v9, 0x2b

    invoke-virtual {v3, v9, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    const/16 v10, 0x2a

    invoke-virtual {v3, v10, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    move/from16 v16, v10

    const/16 v10, 0xe

    invoke-virtual {v3, v10, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    move/from16 v22, v10

    const/16 v10, 0xd

    invoke-virtual {v3, v10, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    move/from16 v23, v10

    const/16 v10, 0xc

    invoke-virtual {v3, v10, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v15, 0xf

    move/from16 v25, v10

    const/4 v10, 0x2

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v15, 0xb

    move/from16 v26, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/4 v15, 0x5

    move/from16 p2, v10

    const/4 v10, 0x0

    invoke-virtual {v3, v15, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    new-instance v15, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;

    invoke-direct {v15, v3}, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;-><init>(Landroid/content/res/TypedArray;)V

    move/from16 v24, v9

    new-instance v9, Lcom/otaliastudios/cameraview/gesture/GestureParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/gesture/GestureParser;-><init>(Landroid/content/res/TypedArray;)V

    move-object/from16 v27, v9

    new-instance v9, Lcom/otaliastudios/cameraview/markers/MarkerParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/markers/MarkerParser;-><init>(Landroid/content/res/TypedArray;)V

    move-object/from16 v28, v9

    new-instance v9, Lcom/otaliastudios/cameraview/filter/FilterParser;

    invoke-direct {v9, v3}, Lcom/otaliastudios/cameraview/filter/FilterParser;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v0}, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;-><init>(Lcom/otaliastudios/cameraview/CameraView;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    new-instance v3, Landroid/os/Handler;

    move-object/from16 v29, v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->k:Landroid/os/Handler;

    new-instance v3, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->w:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    new-instance v3, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->x:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    new-instance v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iget-object v9, v0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v3, v9}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->y:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    new-instance v3, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    new-instance v3, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    new-instance v3, Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    invoke-direct {v3, v1}, Lcom/otaliastudios/cameraview/markers/MarkerLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->A:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->A:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->b()V

    invoke-virtual {v0, v5}, Lcom/otaliastudios/cameraview/CameraView;->setPlaySounds(Z)V

    invoke-virtual {v0, v7}, Lcom/otaliastudios/cameraview/CameraView;->setUseDeviceOrientation(Z)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->d:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Grid;->a(I)Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V

    invoke-virtual {v0, v8}, Lcom/otaliastudios/cameraview/CameraView;->setGridColor(I)V

    invoke-virtual {v0, v10}, Lcom/otaliastudios/cameraview/CameraView;->setDrawHardwareOverlays(Z)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->b:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Facing;->a(I)Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->c:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Flash;->a(I)Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->f:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Mode;->a(I)Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->e:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->a(I)Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->g:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Hdr;->a(I)Lcom/otaliastudios/cameraview/controls/Hdr;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->h:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/Audio;->a(I)Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    invoke-virtual {v0, v14}, Lcom/otaliastudios/cameraview/CameraView;->setAudioBitRate(I)V

    iget v3, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->j:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->a(I)Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    iget-object v3, v15, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->a:Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPictureMetering(Z)V

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSnapshotMetering(Z)V

    iget v2, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->l:I

    invoke-static {v2}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->a(I)Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    iget-object v2, v15, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->b:Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    iget v2, v4, Lcom/otaliastudios/cameraview/controls/ControlParser;->i:I

    invoke-static {v2}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->a(I)Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    invoke-virtual {v0, v11, v12}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxSize(J)V

    move/from16 v6, v18

    invoke-virtual {v0, v6}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    invoke-virtual {v0, v13}, Lcom/otaliastudios/cameraview/CameraView;->setVideoBitRate(I)V

    move-wide/from16 v2, v20

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusResetDelay(J)V

    move/from16 v2, v19

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRateExact(Z)V

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRate(F)V

    move/from16 v2, v24

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxWidth(I)V

    move/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxHeight(I)V

    move/from16 v2, v22

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxWidth(I)V

    move/from16 v2, v23

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxHeight(I)V

    move/from16 v2, v25

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingFormat(I)V

    move/from16 v2, v26

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingPoolSize(I)V

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingExecutors(I)V

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    move-object/from16 v3, v27

    iget v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureParser;->a:I

    invoke-static {v4}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->a(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureParser;->b:I

    invoke-static {v4}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->a(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureParser;->c:I

    invoke-static {v4}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->a(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureParser;->d:I

    invoke-static {v4}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->a(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget v3, v3, Lcom/otaliastudios/cameraview/gesture/GestureParser;->e:I

    invoke-static {v3}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->a(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    move-object/from16 v2, v28

    iget-object v2, v2, Lcom/otaliastudios/cameraview/markers/MarkerParser;->a:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusMarker(Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;)V

    move-object/from16 v2, v29

    iget-object v2, v2, Lcom/otaliastudios/cameraview/filter/FilterParser;->a:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraView;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    new-instance v2, Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/CameraView;->m:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {v2, v1, v3}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;-><init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V

    iput-object v2, v0, Lcom/otaliastudios/cameraview/CameraView;->o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    return-void
.end method

.method public close()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->h:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->h:Z

    iget-object v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->d:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->b:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    iput v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->e:I

    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->P(Z)Lcom/google/android/gms/tasks/Task;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->n()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->g:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->E(Z)V

    :cond_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0, v3, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->p(IZ)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->m()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V
    .locals 4

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/gesture/Gesture;->a(Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/otaliastudios/cameraview/CameraView$7;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_5

    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->y:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p1, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->x:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, p2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    iput-boolean v0, p1, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->w:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, p2

    :goto_4
    iput-boolean v0, p1, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    :goto_5
    iput p2, p0, Lcom/otaliastudios/cameraview/CameraView;->j:I

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    iget v1, p0, Lcom/otaliastudios/cameraview/CameraView;->j:I

    sget-object v3, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    if-ne v0, v3, :cond_8

    move v0, p2

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    add-int/2addr v1, v0

    iput v1, p0, Lcom/otaliastudios/cameraview/CameraView;->j:I

    goto :goto_6

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->e(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)V

    return-void
.end method

.method public final f(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V
    .locals 7

    iget-object v0, p1, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    iget-object v2, p1, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->c:[Landroid/graphics/PointF;

    sget-object v3, Lcom/otaliastudios/cameraview/CameraView$7;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    instance-of p2, p2, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->c()F

    move-result p2

    invoke-virtual {p1, p2, v6, v5}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a(FFF)F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->i()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    instance-of p2, p2, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getFilter()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->e()F

    move-result p2

    invoke-virtual {p1, p2, v6, v5}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a(FFF)F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->j()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    iget v1, p2, Lcom/otaliastudios/cameraview/CameraOptions;->m:F

    iget p2, p2, Lcom/otaliastudios/cameraview/CameraOptions;->n:F

    invoke-virtual {p1, v0, v1, p2}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a(FFF)F

    move-result p1

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v3

    aput p2, v0, v4

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1, v0, v2, v4}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->B(F[F[Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_3
    iget-object p2, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p2, p2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    invoke-virtual {p1, p2, v6, v5}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a(FFF)F

    move-result p1

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1, v2, v4}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->L(F[Landroid/graphics/PointF;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_4
    new-instance p1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p1, p2, v1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    aget-object p2, v2, v3

    invoke-static {p1, p2}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->a(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    aget-object p2, v2, v3

    invoke-virtual {p0, v0, p1, p2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->N(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Landroid/graphics/PointF;)V

    return-void

    :pswitch_5
    new-instance p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    return-void

    :pswitch_6
    new-instance p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/otaliastudios/cameraview/R$styleable;->b:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->J:Lcom/otaliastudios/cameraview/controls/Audio;

    return-object p0
.end method

.method public getAudioBitRate()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->N:I

    return p0
.end method

.method public getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->r:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    return-object p0
.end method

.method public getAutoFocusResetDelay()J
    .locals 2

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->O:J

    return-wide v0
.end method

.method public getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    return-object p0
.end method

.method public getDrawHardwareOverlays()Z
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->getHardwareCanvasEnabled()Z

    move-result p0

    return p0
.end method

.method public getEngine()Lcom/otaliastudios/cameraview/controls/Engine;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    return-object p0
.end method

.method public getExposureCorrection()F
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->w:F

    return p0
.end method

.method public getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p0
.end method

.method public getFilter()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->h:Lcom/otaliastudios/cameraview/filter/Filter;

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;->c()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Filters are only supported by the GL_SURFACE preview. Current:"

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-static {p0, v0}, Lmd;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlash()Lcom/otaliastudios/cameraview/controls/Flash;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    return-object p0
.end method

.method public getFrameProcessingExecutors()I
    .locals 0

    iget p0, p0, Lcom/otaliastudios/cameraview/CameraView;->i:I

    return p0
.end method

.method public getFrameProcessingFormat()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->m:I

    return p0
.end method

.method public getFrameProcessingMaxHeight()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->S:I

    return p0
.end method

.method public getFrameProcessingMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->R:I

    return p0
.end method

.method public getFrameProcessingPoolSize()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T:I

    return p0
.end method

.method public getGrid()Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->getGridMode()Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object p0

    return-object p0
.end method

.method public getGridColor()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->getGridColor()I

    move-result p0

    return p0
.end method

.method public getHdr()Lcom/otaliastudios/cameraview/controls/Hdr;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    return-object p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    return-object p0
.end method

.method public getMode()Lcom/otaliastudios/cameraview/controls/Mode;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    return-object p0
.end method

.method public getPictureFormat()Lcom/otaliastudios/cameraview/controls/PictureFormat;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->t:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    return-object p0
.end method

.method public getPictureMetering()Z
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->y:Z

    return p0
.end method

.method public getPictureSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->V(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSnapshotMetering()Z
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->z:Z

    return p0
.end method

.method public getPlaySounds()Z
    .locals 0

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/CameraView;->b:Z

    return p0
.end method

.method public getPreview()Lcom/otaliastudios/cameraview/controls/Preview;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    return-object p0
.end method

.method public getPreviewFrameRate()F
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    return p0
.end method

.method public getPreviewFrameRateExact()Z
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->B:Z

    return p0
.end method

.method public getSnapshotMaxHeight()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Q:I

    return p0
.end method

.method public getSnapshotMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->P:I

    return p0
.end method

.method public getSnapshotSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Y(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/otaliastudios/cameraview/internal/CropHelper;->a(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUseDeviceOrientation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/CameraView;->c:Z

    return p0
.end method

.method public getVideoBitRate()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->M:I

    return p0
.end method

.method public getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    return-object p0
.end method

.method public getVideoMaxDuration()I
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->L:I

    return p0
.end method

.method public getVideoMaxSize()J
    .locals 2

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->K:J

    return-wide v0
.end method

.method public getVideoSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->j:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v3, Lcom/otaliastudios/cameraview/controls/Mode;->PICTURE:Lcom/otaliastudios/cameraview/controls/Mode;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {p0, v2, v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->b(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->a()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWhiteBalance()Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object p0
.end method

.method public getZoom()F
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_5

    const-string v0, "instantiating. preview:"

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    const-string v2, "doInstantiateEngine:"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/otaliastudios/cameraview/CameraView$7;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-direct {v0, v4, p0}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Preview;->GL_SURFACE:Lcom/otaliastudios/cameraview/controls/Preview;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    new-instance v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-direct {v0, v4, p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;

    invoke-direct {v0, v4, p0}, Lcom/otaliastudios/cameraview/preview/SurfaceCameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :goto_1
    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "instantiated. preview:"

    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->r(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    :cond_4
    iput-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->r(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->h:Lcom/otaliastudios/cameraview/filter/Filter;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    iput-object v3, p0, Lcom/otaliastudios/cameraview/CameraView;->h:Lcom/otaliastudios/cameraview/filter/Filter;

    :cond_5
    :goto_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->q:Lcom/otaliastudios/cameraview/size/Size;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget p0, p0, Lcom/otaliastudios/cameraview/CameraView;->j:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v3}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->q:Lcom/otaliastudios/cameraview/size/Size;

    sget-object v3, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v4, "onMeasure:"

    if-nez v1, :cond_1

    const-string v1, "surface is not ready. Calling default behavior."

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget-object v8, v0, Lcom/otaliastudios/cameraview/CameraView;->q:Lcom/otaliastudios/cameraview/size/Size;

    iget v9, v8, Lcom/otaliastudios/cameraview/size/Size;->b:I

    int-to-float v9, v9

    iget v8, v8, Lcom/otaliastudios/cameraview/size/Size;->c:I

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget-object v11, v0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v11}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->s()Z

    move-result v11

    const/high16 v12, -0x80000000

    if-nez v11, :cond_3

    if-ne v1, v2, :cond_2

    move v1, v12

    :cond_2
    if-ne v5, v2, :cond_5

    move v5, v12

    goto :goto_0

    :cond_3
    const/4 v11, -0x1

    if-ne v1, v12, :cond_4

    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v13, v11, :cond_4

    move v1, v2

    :cond_4
    if-ne v5, v12, :cond_5

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v11, :cond_5

    move v5, v2

    :cond_5
    :goto_0
    const-string v10, "requested dimensions are ("

    const-string v11, "["

    invoke-static {v6, v10, v11}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "AT_MOST"

    const-string v14, "UNSPECIFIED"

    const-string v15, "EXACTLY"

    const/16 v16, 0x0

    if-eq v1, v12, :cond_8

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    move-object/from16 v2, v16

    goto :goto_1

    :cond_6
    move-object v2, v15

    goto :goto_1

    :cond_7
    move-object v2, v14

    goto :goto_1

    :cond_8
    move-object v2, v13

    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]x"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v5, v12, :cond_b

    if-eqz v5, :cond_a

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v5, v2, :cond_9

    move-object/from16 v13, v16

    goto :goto_2

    :cond_9
    move-object v13, v15

    goto :goto_2

    :cond_a
    move-object v13, v14

    :cond_b
    :goto_2
    const-string v2, "])"

    invoke-static {v13, v2, v10}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "previewSize is"

    filled-new-array {v4, v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_c

    if-ne v5, v2, :cond_c

    const-string v1, "This means CROP_CENTER."

    invoke-static {v6, v7, v11, v13, v14}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "both are MATCH_PARENT or fixed value. We adapt."

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_c
    if-nez v1, :cond_d

    if-nez v5, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "both are completely free."

    const-string v5, "We respect that and extend to the whole preview size."

    filled-new-array {v4, v2, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    float-to-int v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    float-to-int v3, v8

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_d
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    if-eqz v1, :cond_13

    if-nez v5, :cond_e

    goto :goto_6

    :cond_e
    if-eq v1, v2, :cond_11

    if-ne v5, v2, :cond_f

    goto :goto_4

    :cond_f
    int-to-float v1, v7

    int-to-float v2, v6

    div-float v5, v1, v2

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_10

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_3

    :cond_10
    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_3
    const-string v1, "We fit the preview aspect ratio."

    invoke-static {v6, v7, v11, v13, v14}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "both dimension were AT_MOST."

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_11
    :goto_4
    if-ne v1, v12, :cond_12

    int-to-float v1, v7

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_5

    :cond_12
    int-to-float v1, v6

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_5
    const-string v1, "We have TRIED to fit the aspect ratio, but it\'s not guaranteed."

    invoke-static {v6, v7, v11, v13, v14}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "one dimension was EXACTLY, another AT_MOST."

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_13
    :goto_6
    if-nez v1, :cond_14

    int-to-float v1, v7

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_7

    :cond_14
    int-to-float v1, v6

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    :goto_7
    const-string v1, "one dimension was free, we adapted it to fit the ratio."

    invoke-static {v6, v7, v11, v13, v14}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView;->w:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    iget-boolean v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    if-nez v4, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->c:[Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v2, v3, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->f:Z

    :cond_3
    iget-object v5, v3, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->e:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v3, v3, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->f:Z

    if-eqz v3, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    aget-object v3, v4, v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_4

    aget-object v3, v4, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    aget-object v3, v4, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    move v3, v1

    :goto_0
    const-string v4, "onTouchEvent"

    sget-object v5, Lcom/otaliastudios/cameraview/CameraView;->E:Lcom/otaliastudios/cameraview/CameraLogger;

    if-eqz v3, :cond_5

    const-string p1, "pinch!"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->w:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->f(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    return v1

    :cond_5
    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView;->y:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    iget-boolean v6, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    if-nez v6, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_7

    iput-boolean v2, v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->f:Z

    :cond_7
    iget-object v6, v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->e:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v6, v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->f:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->h:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v7, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->b:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Notifying a gesture of type"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :cond_8
    iget-boolean v3, v3, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->f:Z

    :goto_1
    if-eqz v3, :cond_9

    const-string p1, "scroll!"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->y:Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->f(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    return v1

    :cond_9
    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraView;->x:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    iget-boolean v6, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->a:Z

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    iget-object v6, v3, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->c:[Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_b

    iput-boolean v2, v3, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->f:Z

    :cond_b
    iget-object v7, v3, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->e:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v3, v3, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->f:Z

    if-eqz v3, :cond_c

    aget-object v3, v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v3, Landroid/graphics/PointF;->x:F

    aget-object v2, v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v2, Landroid/graphics/PointF;->y:F

    move v2, v1

    :cond_c
    :goto_2
    if-eqz v2, :cond_d

    const-string p1, "tap!"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v1, p1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->x:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/cameraview/CameraView;->f(Lcom/otaliastudios/cameraview/gesture/GestureFinder;Lcom/otaliastudios/cameraview/CameraOptions;)V

    :cond_d
    :goto_3
    return v1

    :cond_e
    const-string p0, "Options should not be null here."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v2
.end method

.method public open()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->o()V

    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->a(Lcom/otaliastudios/cameraview/controls/Audio;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->h:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->h:Z

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->a()I

    move-result v1

    iput v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    iget-object v1, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->b:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->d:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->o:Lcom/otaliastudios/cameraview/internal/OrientationHelper;

    iget v1, v1, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->e(I)V

    iput v1, v0, Lcom/otaliastudios/cameraview/engine/offset/Angles;->c:I

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->d()V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->M()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/otaliastudios/cameraview/CameraView;->C:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public set(Lcom/otaliastudios/cameraview/controls/Control;)V
    .locals 1

    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Audio;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Facing;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Flash;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    return-void

    :cond_2
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Grid;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V

    return-void

    :cond_3
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Hdr;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    return-void

    :cond_4
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Mode;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    return-void

    :cond_5
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    return-void

    :cond_6
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    return-void

    :cond_7
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    return-void

    :cond_8
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Preview;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setPreview(Lcom/otaliastudios/cameraview/controls/Preview;)V

    return-void

    :cond_9
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/Engine;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/otaliastudios/cameraview/controls/Engine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setEngine(Lcom/otaliastudios/cameraview/controls/Engine;)V

    return-void

    :cond_a
    instance-of v0, p1, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    :cond_b
    return-void
.end method

.method public setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V
    .locals 3

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getAudio()Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->a(Lcom/otaliastudios/cameraview/controls/Audio;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->d0(Lcom/otaliastudios/cameraview/controls/Audio;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->d0(Lcom/otaliastudios/cameraview/controls/Audio;)V

    return-void
.end method

.method public setAudioBitRate(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->N:I

    return-void
.end method

.method public setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->r:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    return-void
.end method

.method public setAutoFocusMarker(Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;)V
    .locals 3

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->s:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->A:Lcom/otaliastudios/cameraview/markers/MarkerLayout;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/markers/MarkerLayout;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/markers/Marker;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoFocusResetDelay(J)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-wide p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->O:J

    return-void
.end method

.method public setDrawHardwareOverlays(Z)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->D:Lcom/otaliastudios/cameraview/overlay/OverlayLayout;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/overlay/OverlayLayout;->setHardwareCanvasEnabled(Z)V

    return-void
.end method

.method public setEngine(Lcom/otaliastudios/cameraview/controls/Engine;)V
    .locals 4

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->g:Lcom/otaliastudios/cameraview/controls/Engine;

    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->b()V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->r(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    :cond_0
    iput-object v0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->r(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V

    :cond_1
    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->p:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->s:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->J:Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudio(Lcom/otaliastudios/cameraview/controls/Audio;)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->N:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudioBitRate(I)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->r:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setAudioCodec(Lcom/otaliastudios/cameraview/controls/AudioCodec;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->F:Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->t:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->G:Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V

    iget-wide v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->K:J

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxSize(J)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->L:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoMaxDuration(I)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->M:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setVideoBitRate(I)V

    iget-wide v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->O:J

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setAutoFocusResetDelay(J)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->A:F

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRate(F)V

    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->B:Z

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewFrameRateExact(Z)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->P:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxWidth(I)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Q:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setSnapshotMaxHeight(I)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->R:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxWidth(I)V

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->S:I

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingMaxHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingFormat(I)V

    iget p1, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T:I

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/CameraView;->setFrameProcessingPoolSize(I)V

    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->E(Z)V

    :cond_2
    return-void
.end method

.method public setExperimental(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->B:Z

    return-void
.end method

.method public setExposureCorrection(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraView;->getCameraOptions()Lcom/otaliastudios/cameraview/CameraOptions;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/otaliastudios/cameraview/CameraOptions;->m:F

    iget v0, v0, Lcom/otaliastudios/cameraview/CameraOptions;->n:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->B(F[F[Landroid/graphics/PointF;Z)V

    :cond_2
    return-void
.end method

.method public setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->e0(Lcom/otaliastudios/cameraview/controls/Facing;)V

    return-void
.end method

.method public setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->h:Lcom/otaliastudios/cameraview/filter/Filter;

    return-void

    :cond_0
    instance-of v1, p1, Lcom/otaliastudios/cameraview/filter/NoFilter;

    instance-of v2, v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Filters are only supported by the GL_SURFACE preview. Current preview:"

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-static {p0, p1}, Lmd;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    check-cast v0, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;->b(Lcom/otaliastudios/cameraview/filter/Filter;)V

    :cond_3
    return-void
.end method

.method public setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->C(Lcom/otaliastudios/cameraview/controls/Flash;)V

    return-void
.end method

.method public setFrameProcessingExecutors(I)V
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/otaliastudios/cameraview/CameraView;->i:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/otaliastudios/cameraview/CameraView$6;

    invoke-direct {v8}, Lcom/otaliastudios/cameraview/CameraView$6;-><init>()V

    const-wide/16 v4, 0x4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, p1

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    :cond_0
    move v2, p1

    const-string p0, "Need at least 1 executor, got "

    invoke-static {v2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public setFrameProcessingFormat(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->D(I)V

    return-void
.end method

.method public setFrameProcessingMaxHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->S:I

    return-void
.end method

.method public setFrameProcessingMaxWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->R:I

    return-void
.end method

.method public setFrameProcessingPoolSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T:I

    return-void
.end method

.method public setGrid(Lcom/otaliastudios/cameraview/controls/Grid;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->setGridMode(Lcom/otaliastudios/cameraview/controls/Grid;)V

    return-void
.end method

.method public setGridColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->z:Lcom/otaliastudios/cameraview/internal/GridLinesLayout;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/internal/GridLinesLayout;->setGridColor(I)V

    return-void
.end method

.method public setHdr(Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->F(Lcom/otaliastudios/cameraview/controls/Hdr;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->v:Landroidx/lifecycle/Lifecycle;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->v:Landroidx/lifecycle/Lifecycle;

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/CameraView;->v:Landroidx/lifecycle/Lifecycle;

    :cond_2
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->v:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->G(Landroid/location/Location;)V

    return-void
.end method

.method public setMode(Lcom/otaliastudios/cameraview/controls/Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->f0(Lcom/otaliastudios/cameraview/controls/Mode;)V

    return-void
.end method

.method public setPictureFormat(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->H(Lcom/otaliastudios/cameraview/controls/PictureFormat;)V

    return-void
.end method

.method public setPictureMetering(Z)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->y:Z

    return-void
.end method

.method public setPictureSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->F:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method public setPictureSnapshotMetering(Z)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->z:Z

    return-void
.end method

.method public setPlaySounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->b:Z

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->I(Z)V

    return-void
.end method

.method public setPreview(Lcom/otaliastudios/cameraview/controls/Preview;)V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->f:Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->m()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView;->n:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    :cond_1
    return-void
.end method

.method public setPreviewFrameRate(F)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->J(F)V

    return-void
.end method

.method public setPreviewFrameRateExact(Z)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->B:Z

    return-void
.end method

.method public setPreviewStreamSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->E:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method public setRequestPermissions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->d:Z

    return-void
.end method

.method public setSnapshotMaxHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->Q:I

    return-void
.end method

.method public setSnapshotMaxWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->P:I

    return-void
.end method

.method public setUseDeviceOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/CameraView;->c:Z

    return-void
.end method

.method public setVideoBitRate(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->M:I

    return-void
.end method

.method public setVideoCodec(Lcom/otaliastudios/cameraview/controls/VideoCodec;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->L:I

    return-void
.end method

.method public setVideoMaxSize(J)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-wide p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->K:J

    return-void
.end method

.method public setVideoSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->G:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method public setWhiteBalance(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->K(Lcom/otaliastudios/cameraview/controls/WhiteBalance;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->p:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->L(F[Landroid/graphics/PointF;Z)V

    return-void
.end method
