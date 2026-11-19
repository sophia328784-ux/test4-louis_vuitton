.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;",
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
        "feedback",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;"
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
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1$1"
    f = "ThematicPlpComposable.kt"
    l = {
        0x7a,
        0x87
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

.field public final synthetic f:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->g:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->h:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->j:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->k:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->l:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->k:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->l:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->h:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->j:Lkotlin/jvm/functions/Function0;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->c:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    iget v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->b:I

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->g:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->n7()V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->k:Landroidx/compose/runtime/MutableState;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v1, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->h:Landroidx/compose/material3/SnackbarHostState;

    if-eqz p1, :cond_4

    invoke-static {v4, v6, v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->n5(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;I)V

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Error;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;->a:Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {p1, v2, v0}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->d:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->c:I

    invoke-virtual {v7, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto :goto_1

    :cond_4
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;

    if-eqz p1, :cond_a

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$Message;->a:Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->g:Lcom/vuitton/android/presentation/notification/NotificationAction;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/AddedToWishlistAction;

    if-eqz v0, :cond_7

    sget-object v3, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->i:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v8, v3}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->l:Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    if-eqz v9, :cond_5

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    if-eqz v9, :cond_5

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v9, v6

    :goto_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_6

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :cond_6
    invoke-direct {v3, v9, v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V

    :cond_7
    sget-object v3, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {p1, v2, v3}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->d:Ljava/lang/Object;

    iput v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->b:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->c:I

    invoke-virtual {v7, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_1
    return-object v1

    :cond_8
    :goto_2
    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object v1, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne p1, v1, :cond_9

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->p()V

    goto :goto_3

    :cond_a
    instance-of p0, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;

    if-eqz p0, :cond_c

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;->a:Ljava/util/List;

    invoke-interface {v4, p0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->X8(Ljava/util/List;)V

    :cond_b
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v6
.end method
