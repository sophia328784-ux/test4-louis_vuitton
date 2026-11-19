.class public final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;
.super Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
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
.field public static final v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;


# instance fields
.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public final q:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final r:Landroidx/activity/result/ActivityResultLauncher;

.field public s:Ld;

.field public final t:Landroidx/activity/result/ActivityResultLauncher;

.field public u:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/Hilt_AICompanionActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v5, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->q:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v3, Lb;

    invoke-direct {v3, p0, v1}, Lb;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;I)V

    invoke-virtual {p0, v0, v3}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->r:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lb;

    invoke-direct {v1, p0, v2}, Lb;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->t:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance v0, Lc;

    invoke-direct {v0, p0, p1}, Lc;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x41df20f

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->q:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method
