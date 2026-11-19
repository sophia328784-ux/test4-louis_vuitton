.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;
.super Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/Hilt_BeautyVtoActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0010\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\u00088\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\r\u001a\u00020\u000c8\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "",
        "sdkReady",
        "makeupCamReady",
        "Lcom/perfectcorp/perfectlib/CameraView;",
        "sharedCameraView",
        "",
        "cameraZoomFactor",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;",
        "stackingType",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;


# instance fields
.field public A:Lbe;

.field public final B:Landroidx/activity/result/ActivityResultLauncher;

.field public final C:Landroidx/activity/result/ActivityResultLauncher;

.field public p:Lcom/vuitton/foundation/logger/Logger;

.field public final q:Landroidx/lifecycle/ViewModelLazy;

.field public final r:Landroidx/lifecycle/ViewModelLazy;

.field public s:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public t:Lcom/perfectcorp/perfectlib/VtoApplier;

.field public u:Lcom/perfectcorp/perfectlib/ShadeFinder;

.field public v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/Hilt_BeautyVtoActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v4, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->w:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->x:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->y:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->z:Z

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lde;

    invoke-direct {v2, p0, v0}, Lde;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->B:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lde;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lde;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->C:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final H(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1402f4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final I(Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/SkuInfo;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyProduct$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p3, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$applyProduct$2;-><init>(Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final J(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->s5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearEffect$2$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearEffect$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, v1}, Lcom/perfectcorp/perfectlib/VtoApplier;->clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_0
    return-void
.end method

.method public final K(Lkotlin/jvm/functions/Function0;)V
    .locals 5

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v1, Lw9;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lw9;-><init>(I)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lcom/perfectcorp/perfectlib/PerfectEffect;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v0, v4}, Lcom/perfectcorp/perfectlib/VtoApplier;->clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->MASCARA:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v1, Lw9;

    invoke-direct {v1, v2}, Lw9;-><init>(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lcom/perfectcorp/perfectlib/PerfectEffect;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v0, v3}, Lcom/perfectcorp/perfectlib/VtoApplier;->clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYELINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearPerfectEffect$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lcom/perfectcorp/perfectlib/PerfectEffect;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier;->clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_2
    return-void
.end method

.method public final L()Lcom/vuitton/foundation/logger/Logger;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->p:Lcom/vuitton/foundation/logger/Logger;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final M()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance p1, Lc;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lc;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x238638f8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->onDestroyed()V

    :cond_1
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onDestroyed()V

    :cond_2
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onPaused()V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onPaused()V

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onResumed()V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onResumed()V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onStarted()V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onStarted()V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->onStopped()V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->u:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->onStopped()V

    :cond_1
    return-void
.end method
