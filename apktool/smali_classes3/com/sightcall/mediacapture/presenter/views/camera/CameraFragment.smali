.class public final Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u001a\u00102\u001a\u0002032\u0006\u00104\u001a\u00020+2\u0008\u00100\u001a\u0004\u0018\u000101H\u0017J\u0012\u00105\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u000107H\u0002J\u0008\u00108\u001a\u000203H\u0016J\u0008\u00109\u001a\u000203H\u0016J\u0010\u0010:\u001a\u0002032\u0006\u0010;\u001a\u00020<H\u0002J\u0008\u0010=\u001a\u000203H\u0002J\u0010\u0010>\u001a\u0002032\u0006\u0010;\u001a\u00020?H\u0003J\u0010\u0010@\u001a\u0002032\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010A\u001a\u0002032\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010B\u001a\u000203H\u0016J\u0010\u0010C\u001a\u0002032\u0006\u0010;\u001a\u00020DH\u0002J\u0012\u0010E\u001a\u0004\u0018\u00010F2\u0006\u0010G\u001a\u00020HH\u0002J\u0018\u0010I\u001a\n K*\u0004\u0018\u00010J0J2\u0006\u0010G\u001a\u00020HH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0014\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "getViewModel",
        "()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;",
        "cameraPreview",
        "Landroidx/camera/view/PreviewView;",
        "getCameraPreview",
        "()Landroidx/camera/view/PreviewView;",
        "mainActionButton",
        "Lcom/google/android/material/button/MaterialButton;",
        "getMainActionButton",
        "()Lcom/google/android/material/button/MaterialButton;",
        "backButton",
        "getBackButton",
        "switchActionButton",
        "getSwitchActionButton",
        "flashlightButton",
        "getFlashlightButton",
        "circularProgressIndicator",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicator;",
        "getCircularProgressIndicator",
        "()Lcom/google/android/material/progressindicator/CircularProgressIndicator;",
        "timer",
        "Lcom/google/android/material/chip/Chip;",
        "getTimer",
        "()Lcom/google/android/material/chip/Chip;",
        "camera",
        "Landroidx/camera/core/Camera;",
        "zoomStateObserver",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/camera/core/ZoomState;",
        "mainAction",
        "Lcom/sightcall/mediacapture/presenter/CameraAction;",
        "sideAction",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "onFrameCapture",
        "collimator",
        "LSCCollimator;",
        "onResume",
        "onPause",
        "onStateChange",
        "state",
        "Lcom/sightcall/mediacapture/presenter/CameraState;",
        "onPendingState",
        "onReadyState",
        "Lcom/sightcall/mediacapture/presenter/CameraState$Ready;",
        "enableCameraZoom",
        "showHideFlashlightButton",
        "onStop",
        "onActionsStateChange",
        "Lcom/sightcall/mediacapture/presenter/CameraActionsState;",
        "getActionDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "id",
        "",
        "getColorState",
        "Landroid/content/res/ColorStateList;",
        "kotlin.jvm.PlatformType",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

.field private camera:Landroidx/camera/core/Camera;

.field private mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

.field private sideAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private zoomStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lw1;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lw1;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$3;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v4, p0, v0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$special$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic J(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->enableCameraZoom$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method public static synthetic K(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$5(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$4(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->instrumented$3$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onActionsStateChange(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Lcom/sightcall/mediacapture/presenter/CameraActionsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onActionsStateChange(Lcom/sightcall/mediacapture/presenter/CameraActionsState;)V

    return-void
.end method

.method public static final synthetic access$onFrameCapture(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;LSCCollimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onFrameCapture(LSCCollimator;)V

    return-void
.end method

.method public static final synthetic access$onStateChange(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Lcom/sightcall/mediacapture/presenter/CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onStateChange(Lcom/sightcall/mediacapture/presenter/CameraState;)V

    return-void
.end method

.method private final enableCameraZoom(Landroidx/camera/core/Camera;)V
    .locals 1

    new-instance v0, Lwi;

    invoke-direct {v0, p0, p1, p1}, Lwi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->zoomStateObserver:Landroidx/lifecycle/Observer;

    invoke-interface {p1}, Landroidx/camera/core/Camera;->b()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->w()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->zoomStateObserver:Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    const-string p0, "zoomStateObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final enableCameraZoom$lambda$0$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroidx/camera/core/Camera;Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;

    invoke-direct {v2, p1, p3}, Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;-><init>(Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCameraPreview()Landroidx/camera/view/PreviewView;

    move-result-object p1

    new-instance p3, Ld5;

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Ld5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-interface {p2}, Landroidx/camera/core/Camera;->b()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->w()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->zoomStateObserver:Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void

    :cond_0
    const-string p0, "zoomStateObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final enableCameraZoom$lambda$0$0$0(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method private final getActionDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final getBackButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->back:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getCameraPreview()Landroidx/camera/view/PreviewView;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->cameraPreview:Landroidx/camera/view/PreviewView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getCircularProgressIndicator()Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->circularProgressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getColorState(I)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private final getFlashlightButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->flashlight:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getMainActionButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getSwitchActionButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->switchCamera:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getTimer()Lcom/google/android/material/chip/Chip;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->timer:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    return-object p0
.end method

.method private static synthetic instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$1(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$2$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$2(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$3$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$3(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private final onActionsStateChange(Lcom/sightcall/mediacapture/presenter/CameraActionsState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->getMainAction()Lcom/sightcall/mediacapture/presenter/CameraAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->getSideAction()Lcom/sightcall/mediacapture/presenter/CameraAction;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->sideAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getMainActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->getMainAction()Lcom/sightcall/mediacapture/presenter/CameraAction;

    move-result-object v2

    sget-object v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    sget v2, Lcom/sightcall/mediacapture/R$drawable;->ic_video_camera:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getActionDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/sightcall/mediacapture/R$color;->button_background_default:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getColorState(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getSwitchActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getBackButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCircularProgressIndicator()Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isMaxDuration()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    sget v2, Lcom/sightcall/mediacapture/R$drawable;->ic_photo_camera:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getActionDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/sightcall/mediacapture/R$color;->button_background_default:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getColorState(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getSwitchActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getBackButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCircularProgressIndicator()Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isMaxDuration()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    sget v2, Lcom/sightcall/mediacapture/R$drawable;->ic_stop_recording:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getActionDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/sightcall/mediacapture/R$color;->button_background_recording:I

    invoke-direct {p0, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getColorState(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getSwitchActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getBackButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCircularProgressIndicator()Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isMaxDuration()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getTimer()Lcom/google/android/material/chip/Chip;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isRecoding()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onFrameCapture(LSCCollimator;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->collimatorView:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;->setCollimator(LSCCollimator;)V

    :cond_0
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->collimatorView:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private final onPendingState()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCameraPreview()Landroidx/camera/view/PreviewView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onReadyState(Lcom/sightcall/mediacapture/presenter/CameraState$Ready;)V
    .locals 3

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCameraPreview()Landroidx/camera/view/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getPreview()Landroidx/camera/core/Preview;

    move-result-object v0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCameraPreview()Landroidx/camera/view/PreviewView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->F(Landroidx/camera/core/Preview$SurfaceProvider;)V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    iget-object v0, v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->d()V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->enableCameraZoom(Landroidx/camera/core/Camera;)V

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->showHideFlashlightButton(Landroidx/camera/core/Camera;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->camera:Landroidx/camera/core/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->onStartCameraError()V

    return-void
.end method

.method private final onStateChange(Lcom/sightcall/mediacapture/presenter/CameraState;)V
    .locals 1

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraState$Pending;->INSTANCE:Lcom/sightcall/mediacapture/presenter/CameraState$Pending;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onPendingState()V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onReadyState(Lcom/sightcall/mediacapture/presenter/CameraState$Ready;)V

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    const-string v0, "mainAction"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    sget-object v2, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->collimatorView:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->updateCollimatorView(II)V

    :cond_3
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p1

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->onCameraMainActionPressed(Lcom/sightcall/mediacapture/presenter/CameraAction;Landroid/content/Context;)V

    return-void

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method private static final onViewCreated$lambda$1(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->onBackPressed()V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->b()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->switchCamera(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->toggleFlashlight()V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getTimer()Lcom/google/android/material/chip/Chip;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$5(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getCircularProgressIndicator()Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$6(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/Camera;->a()Landroidx/camera/core/CameraControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->d(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getFlashlightButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object p0

    sget p1, Lcom/sightcall/graphik/R$drawable;->flashlight_on:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getFlashlightButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object p0

    sget p1, Lcom/sightcall/graphik/R$drawable;->flashlight_off:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic p(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->instrumented$2$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->instrumented$1$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->onViewCreated$lambda$6(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->enableCameraZoom$lambda$0$0$0(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final showHideFlashlightButton(Landroidx/camera/core/Camera;)V
    .locals 2

    invoke-interface {p1}, Landroidx/camera/core/Camera;->b()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->i()Z

    move-result v0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getFlashlightButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getFlashlightButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {p1}, Landroidx/camera/core/Camera;->b()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->i()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->resetFlashlight()V

    :cond_1
    return-void
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/extensions/FragmentExtensionsKt;->getViewModelOwner(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->binding:Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getMainActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    new-instance v1, Lxi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lxi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getBackButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    new-instance v1, Lxi;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lxi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getSwitchActionButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    new-instance v1, Lxi;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lxi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getFlashlightButton()Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    new-instance v1, Lxi;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5}, Lxi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v5, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$5;

    invoke-direct {v5, p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$5;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v6, v5}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCameraActionsState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v5, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$6;

    invoke-direct {v5, p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$6;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v6, v5}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getTimer()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v5, Lyi;

    invoke-direct {v5, p0, v2}, Lyi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v5}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCollimatorState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$8;

    invoke-direct {v2, p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$onViewCreated$8;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v5, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getProgressValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lyi;

    invoke-direct {v2, p0, v3}, Lyi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isFlashlightOn()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lyi;

    invoke-direct {v2, p0, v4}, Lyi;-><init>(Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;I)V

    new-instance v3, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->getViewModel()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->startCamera()V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
