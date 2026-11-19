.class public final Lcom/vuitton/android/presentation/screen/search/SearchActivity;
.super Lcom/vuitton/android/presentation/screen/search/Hilt_SearchActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\t\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0008\u001a\u00020\u00078\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/SearchActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        "pspViewState",
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
.field public static final y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public final r:I

.field public s:Z

.field public final t:Landroidx/lifecycle/ViewModelLazy;

.field public final u:Landroidx/lifecycle/ViewModelLazy;

.field public final v:Landroidx/lifecycle/ViewModelLazy;

.field public w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final x:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/search/Hilt_SearchActivity;-><init>()V

    new-instance v0, Lmu0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lmu0;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->q:Lkotlin/Lazy;

    const/16 v0, 0x32

    iput v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->r:I

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$3;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v4, v5, v0, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v6, v7, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v4, v5, v0, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->u:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v5, v7, p0}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v2, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->v:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lmu0;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    new-instance v2, Lnu0;

    invoke-direct {v2, p0, v1}, Lnu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-static {p0, v0, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->x:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_QAF_SOURCE"

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const p1, 0x7f01001f

    const v0, 0x7f010020

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->r:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->s:Z

    :cond_0
    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    invoke-static {v1, v1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance p1, Lll0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x21c2ab05

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->a(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method
