.class final Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<destruct>",
        "Lkotlin/Pair;",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
        ""
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
    c = "com.vuitton.android.presentation.screen.splash.SplashScreenActivity$onCreate$4"
    f = "SplashScreenActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    sget v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->q:I

    sget-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FORCE_UPDATE_TYPE"

    const-class v2, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$onCreate$4;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;->q:Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;->APP_VERSION:Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->NO_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;->q:Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;->OS_VERSION:Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->NO_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->S()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const p1, 0x7f14071b

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f1404b0

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1410e0

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, v2, v0}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1;

    invoke-direct {p1, v4}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2;

    invoke-direct {p1, v4}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$2;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->P:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;

    new-instance v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$showRetryPopup$3;

    const-string v8, "finish()V"

    const/4 v9, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    const-class v6, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;

    const-string v7, "finish"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v4, v5

    iput-object v3, p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->Q:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->NO_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;->q:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;

    invoke-direct {p0, v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->NO_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_4
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;

    if-eqz p0, :cond_6

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->b(Landroid/content/Intent;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->NO_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_6
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;

    if-eqz p0, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {v4, v1, p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_7
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->b(Landroid/content/Intent;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->FADE_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto/16 :goto_2

    :cond_8
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->B()Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;->K5()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    invoke-direct {p0, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ONBOARDING_START_SCREEN_ROUTE"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;->a:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_9
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->b(Landroid/content/Intent;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;->FADE_ANIMATION:Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;

    invoke-virtual {v4, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->E(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity$OverrideActivityTransition;)V

    goto :goto_2

    :cond_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    invoke-direct {p0, v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x10008000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/presentation/LVApplication;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/LVApplication;->h()V

    goto :goto_2

    :cond_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_2

    :cond_e
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_f
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
