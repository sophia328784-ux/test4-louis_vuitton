.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;
.super Lcom/vuitton/android/presentation/screen/immersivearticle/Hilt_ImmersiveArticleActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;",
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
.field public static final H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;


# instance fields
.field public final A:Lkotlin/Lazy;

.field public B:Ljava/util/List;

.field public C:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

.field public final D:Landroidx/activity/result/ActivityResultLauncher;

.field public final E:Landroidx/activity/result/ActivityResultLauncher;

.field public final F:Landroidx/activity/result/ActivityResultLauncher;

.field public final G:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;

.field public p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public q:Lkotlin/jvm/functions/Function0;

.field public final r:Landroidx/activity/result/ActivityResultLauncher;

.field public final s:Landroidx/lifecycle/ViewModelLazy;

.field public final t:Landroidx/lifecycle/ViewModelLazy;

.field public final u:Landroidx/lifecycle/ViewModelLazy;

.field public final v:Lkotlin/Lazy;

.field public final w:Lkotlin/Lazy;

.field public final x:Lkotlin/Lazy;

.field public final y:Lkotlin/Lazy;

.field public final z:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const v0, 0x7f0d0023

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/Hilt_ImmersiveArticleActivity;-><init>(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/c;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    new-instance v2, Lv;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lv;-><init>(I)V

    invoke-static {p0, v2, v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->r:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$3;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v4, v5, v0, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v6, v7, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v4, v5, v0, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v5, v7, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->u:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lu20;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->v:Lkotlin/Lazy;

    new-instance v0, Lu20;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->w:Lkotlin/Lazy;

    new-instance v0, Lu20;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->x:Lkotlin/Lazy;

    new-instance v0, Lu20;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->y:Lkotlin/Lazy;

    new-instance v0, Lu20;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->z:Lkotlin/Lazy;

    new-instance v0, Lu20;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2}, Lu20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->A:Lkotlin/Lazy;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->B:Ljava/util/List;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v2, Lt20;

    invoke-direct {v2, p0, v1}, Lt20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->D:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lt20;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lt20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->E:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lt20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lt20;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->F:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->G:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "CUSTOMIZATION_ID"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    :goto_0
    const-string v1, "SKU"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->c(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static final N(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXPLORE_IS_DEEP_IN_HIERARCHY"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    instance-of v2, p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->F:Landroidx/activity/result/ActivityResultLauncher;

    :cond_0
    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$RepairCreate;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->E:Landroidx/activity/result/ActivityResultLauncher;

    goto :goto_0

    :goto_1
    const/16 v6, 0x8

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    return-void

    :cond_2
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public static final P(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->d:Z

    const/4 v2, 0x3

    const-string v3, ""

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1;

    invoke-direct {v6, v1, v4, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$deleteProductFromWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p0, p0, v6, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object p0

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v3

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->c:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;

    invoke-direct {v6, v1, v4, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p0, p0, v6, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object p0

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v3

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->c:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final I(Ljava/util/List;)V
    .locals 8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LV-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/app/DownloadManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v5, "Louis Vuitton Wallpapers"

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string v5, "Downloading"

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->B:Ljava/util/List;

    return-void
.end method

.method public final J(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$fadeToBlack$1;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$fadeToBlack$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final K()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->v:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->w:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    return-object p0
.end method

.method public final M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    return-object p0
.end method

.method public final O(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;)V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;->Jb(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;)V

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;->q:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, p1, v3, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;->a:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->L()Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    instance-of v0, p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    if-eqz v0, :cond_5

    new-instance v0, Ldt;

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, p1, v1}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->J(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_5
    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->N(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    return-void

    :cond_6
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnProductModuleClick;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnProductModuleClick;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnProductModuleClick;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    move-object v2, p0

    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;

    if-eqz p0, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p1, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->r:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/activity/EdgeToEdge;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Landroidx/activity/SystemBarStyle;I)V

    new-instance p1, Lc;

    const/16 v1, 0x1d

    invoke-direct {p1, p0, v1}, Lc;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x1385bd38

    invoke-direct {v1, v2, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;->L3()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->G:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$PlayerUiChange;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModel;->Jb(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->G:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;

    invoke-static {p0, v2, v0, v1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
