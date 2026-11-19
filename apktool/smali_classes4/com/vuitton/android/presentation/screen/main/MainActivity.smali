.class public final Lcom/vuitton/android/presentation/screen/main/MainActivity;
.super Lcom/vuitton/android/presentation/screen/main/Hilt_MainActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatHostActivity;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0010\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\t\u001a\u00020\u00088\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u000b\u001a\u00020\n8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\r\u001a\u0004\u0018\u00010\u000c8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/main/MainActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/chat/ChatHostActivity;",
        "<init>",
        "()V",
        "Companion",
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;",
        "deepLinkViewState",
        "Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;",
        "bottomSheetType",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;",
        "alreadySignedInEffect",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
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
.field public static final L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;


# instance fields
.field public A:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public B:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

.field public C:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

.field public D:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

.field public F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public G:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public final H:Landroidx/activity/result/ActivityResultLauncher;

.field public final I:Landroidx/activity/result/ActivityResultLauncher;

.field public final J:Landroidx/activity/result/ActivityResultLauncher;

.field public final K:Landroidx/activity/result/ActivityResultLauncher;

.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public final q:Landroidx/lifecycle/ViewModelLazy;

.field public final r:Landroidx/lifecycle/ViewModelLazy;

.field public final s:Landroidx/lifecycle/ViewModelLazy;

.field public final t:Landroidx/lifecycle/ViewModelLazy;

.field public u:Ljava/lang/String;

.field public v:Lcom/vuitton/android/core/events/LVEventSender;

.field public w:Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;

.field public x:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public y:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

.field public z:Lcom/vuitton/android/presentation/link/LinkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/main/Hilt_MainActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$4;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$6;

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$7;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$8;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$9;

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$10;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$10;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$11;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$11;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$12;

    invoke-direct {v5, v6, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$13;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$13;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$14;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$14;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$15;

    invoke-direct {v4, v6, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity$special$$inlined$viewModels$default$15;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Llb0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Llb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance v1, Lv;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lv;-><init>(I)V

    invoke-static {p0, v1, v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->H:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lmb0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance v1, Llb0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Llb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-static {p0, v0, v1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lmb0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lmb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance v1, Lba0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lba0;-><init>(I)V

    invoke-static {p0, v0, v1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lv40;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lv40;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->K:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static H(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->NATIVE_STORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->STORELOCATOR:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXPLORE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->AUDIOGUIDE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CATALOG:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->STORE_MODE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_LV:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ACTIVATE_ACCOUNT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->LOGIN:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REGISTER:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->GDPR:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_ORDERS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_CATEGORY:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EXCLUSIVE_DETAIL:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CONNECTED:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->PAIRING_V2:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->CERTIFICATES:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_CREATE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_SECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_VIDEOCALL:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->MY_APPOINTMENTS:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ADVISOR_CURATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->POST_VISIT:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->SERVICES:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object p0

    :cond_6
    :goto_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object p0

    :cond_7
    :goto_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    return-object p0
.end method

.method public static K(Landroid/content/Intent;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    return-object p0
.end method

.method public final J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    return-object p0
.end method

.method public final L(Landroid/content/Intent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v0, v4}, Lcom/vuitton/android/presentation/push/UtmNotificationTracker;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "deep_link_value"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->u:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object v1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v0, v2, v4, v6}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->l9(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/MainActivity$handleAppsFlyerDeeplinkOnce$1;

    invoke-direct {v2, v0, v5, v4}, Lcom/vuitton/android/presentation/screen/main/MainActivity$handleAppsFlyerDeeplinkOnce$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v4, v4, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const-string v5, "KEY_RMS_CODE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_1

    :cond_4
    move-object v9, v4

    :goto_1
    const/16 v5, 0x21

    if-eqz v1, :cond_7

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "KEY_STORE_MODE_LAUNCH_MODE"

    if-lt v7, v5, :cond_5

    const-class v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v7

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    if-nez v8, :cond_6

    move-object v7, v4

    :cond_6
    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    :goto_2
    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    move-object v11, v7

    goto :goto_3

    :cond_7
    move-object v11, v4

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v4

    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v1, :cond_9

    const-string v10, "EXTRA_REDIRECT_TO_REPAIR_CREATE"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-ne v10, v8, :cond_9

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->Zb()V

    return-void

    :cond_9
    sget-object v10, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->ORDER_CONFIRMATION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_a
    move-object v12, v4

    :goto_5
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->z:Lcom/vuitton/android/presentation/link/LinkHandler;

    if-eqz v2, :cond_b

    sget v3, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v2, v1, v0, v4}, Lcom/vuitton/android/presentation/link/LinkHandler;->c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    return-void

    :cond_b
    const-string v0, "linkHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_c
    :goto_6
    return-void

    :cond_d
    if-eqz v9, :cond_e

    sget-object v10, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;->NEW_FROM_QRCODE_SCAN:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    if-ne v11, v10, :cond_e

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    new-instance v7, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v8, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;->STORE_MODE:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;

    const/16 v20, 0xff4

    const/16 v21, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;-><init>(Lcom/vuitton/android/presentation/screen/main/navigation/CatalogDeepLinkType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v7}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    return-void

    :cond_e
    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->B:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    const-string v10, "linkClassifier"

    if-eqz v9, :cond_28

    invoke-virtual {v9, v7}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->K(Landroid/content/Intent;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_f
    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->B:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    if-eqz v9, :cond_27

    invoke-virtual {v9, v7}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->C:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    if-eqz v6, :cond_11

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_7

    :cond_10
    const-string v0, "environmentProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_11
    const-string v0, "passAppLinkConverter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_12
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->H(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_13
    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->K(Landroid/content/Intent;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_14
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1f

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "lvpass"

    if-eqz v9, :cond_1a

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "videocall"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto/16 :goto_d

    :cond_15
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "([a-zA-Z]{2,4}-[a-zA-Z1-9]{2})"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_16

    invoke-virtual {v9, v6}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_8

    :cond_16
    move-object v6, v4

    :goto_8
    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_9

    :cond_17
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_a

    :cond_18
    move-object v3, v4

    :goto_a
    if-eqz v3, :cond_19

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_19
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_1a
    const-string v6, "locale"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    invoke-static {v9}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v8

    if-ne v9, v8, :cond_1e

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_b

    :cond_1b
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1c
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v3, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_c

    :cond_1d
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1e
    :goto_d
    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_1f
    move-object v7, v4

    :goto_e
    if-eqz v7, :cond_20

    iget-object v3, v7, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    goto :goto_f

    :cond_20
    move-object v3, v4

    :goto_f
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->A4()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/main/models/MainActivityViewState;->f:Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/main/models/MainActivityFeatureFlags;->a:Z

    if-eqz v6, :cond_21

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    goto :goto_12

    :cond_21
    if-eqz v3, :cond_22

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->S2()V

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->H(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    move-result-object v0

    goto :goto_12

    :cond_22
    if-eqz v1, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "KEY_SELECTED_NAV_ITEM"

    if-lt v0, v5, :cond_23

    const-class v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_11

    :cond_23
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    if-nez v1, :cond_24

    goto :goto_10

    :cond_24
    move-object v4, v0

    :goto_10
    move-object v0, v4

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    :goto_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    if-nez v0, :cond_26

    :cond_25
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->FEED:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    :cond_26
    :goto_12
    invoke-interface {v2, v0, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_27
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_28
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->x:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

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
    .locals 5

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Landroidx/activity/EdgeToEdge;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Landroidx/activity/SystemBarStyle;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SHOULD_HANDLE_LV_NAVBAR"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_QAF_SOURCE"

    sget-object v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v1, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->x:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToCartRefreshEvents$1;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToCartRefreshEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p1, p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToRefreshAuthFromCheckoutEvents$1;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToRefreshAuthFromCheckoutEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p1, p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToAppsFlyerDeeplink$1;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenToAppsFlyerDeeplink$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p1, p1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/ArUtils;->b(Lcom/vuitton/android/presentation/screen/main/MainActivity;)V

    new-instance p1, Lkb0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lkb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, -0x21004d57

    invoke-direct {p0, v0, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;->a(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->i(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    new-instance v0, Lkb0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance v1, Lkb0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lkb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L(Landroid/content/Intent;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->k(ZLcom/vuitton/android/presentation/screen/main/MainActivity;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->N8(Ljava/lang/Integer;)V

    return-void
.end method
