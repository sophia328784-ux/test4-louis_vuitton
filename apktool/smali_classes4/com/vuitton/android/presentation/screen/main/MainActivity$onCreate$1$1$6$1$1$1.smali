.class final Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "sideEffect",
        "Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$6$1$1$1"
    f = "MainActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/main/MainActivity;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->d:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->d:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    iget-object p1, p1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->j()Landroidx/navigation/NavGraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    sget-object p1, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, p0, v2}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateTo;->b:Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    goto/16 :goto_2

    :cond_2
    instance-of p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$RequestNotificationPermission;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->d:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    if-eqz p1, :cond_3

    iget-object p0, v3, Lcom/vuitton/android/presentation/screen/main/MainActivity;->K:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    instance-of p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->e:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->g:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_4

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowAlreadySignedBottomSheet;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$6$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$AlreadySignedBottomSheet;->a:Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$AlreadySignedBottomSheet;

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    goto/16 :goto_2

    :cond_4
    instance-of p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$ShowSightCallBottomSheet;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    goto/16 :goto_2

    :cond_5
    instance-of p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;

    if-eqz p0, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->Companion:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab$Companion;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_FEED_TAB"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->S1(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0, p0, v2}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToDeepLink;->b:Lkotlin/Pair;

    if-eqz p0, :cond_6

    iget-object p1, p0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_6
    move-object p1, v2

    :goto_0
    if-eqz p0, :cond_7

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object p0, v2

    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v2, p1

    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object p1

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TRACK_SHORTCUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1, v3, v2, p0, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->l9(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_9
    instance-of p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;

    if-eqz p0, :cond_b

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;->a:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {v0, p0, v2}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object p0

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/main/models/MainActivitySideEffect$Navigation$NavigateToAppLink;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->wc(Ljava/lang/String;)V

    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v2

    :catch_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
