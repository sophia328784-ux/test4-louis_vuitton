.class final synthetic Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$8$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->c(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/batch/android/BatchPushPayload;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->b(Landroid/content/Intent;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
