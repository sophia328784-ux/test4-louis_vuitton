.class public final Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;
.super Lcom/vuitton/android/presentation/screen/pdp/Hilt_PdpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatHostActivity;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/chat/ChatHostActivity;",
        "<init>",
        "()V",
        "Companion",
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;",
        "viewState",
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
.field public static final D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;


# instance fields
.field public final A:Landroidx/activity/result/ActivityResultLauncher;

.field public final B:Landroidx/activity/result/ActivityResultLauncher;

.field public C:Lkotlin/jvm/functions/Function0;

.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public final q:Landroidx/lifecycle/ViewModelLazy;

.field public final r:Landroidx/lifecycle/ViewModelLazy;

.field public s:Lcom/vuitton/foundation/logger/Logger;

.field public t:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public v:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public x:Lxl0;

.field public final y:Landroidx/activity/result/ActivityResultLauncher;

.field public final z:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/pdp/Hilt_PdpActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lzl0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->y:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lzl0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lzl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->z:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lzl0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lzl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->A:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lzl0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lzl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->B:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_8

    const-string v0, "CUSTOMIZATION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->HOTSTAMPING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    const/16 v3, 0x21

    const-string v4, "CUSTOMIZATION_ID"

    const/4 v5, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->PERFUME_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    move-object v0, v5

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    :goto_1
    const-string v1, "SKU"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V

    return-void

    :cond_3
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-nez v0, :cond_5

    move-object p1, v5

    :cond_5
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    :goto_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v0, v5

    :goto_4
    if-eqz v0, :cond_7

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v5, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v5, :cond_8

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->A8(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    return-object p0
.end method

.method public final J(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->T2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToBeautyVtoPage;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;->TRY_ON:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->d5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$1;

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$2;

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$onCreate$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {v0, v0}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance v1, Lwl0;

    invoke-direct {v1, p0, v0}, Lwl0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x7248e8d6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;->a(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method
