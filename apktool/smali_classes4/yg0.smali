.class public final synthetic Lyg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

.field public final synthetic d:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V
    .locals 0

    iput p3, p0, Lyg0;->b:I

    iput-object p1, p0, Lyg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    iput-object p2, p0, Lyg0;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lyg0;->b:I

    iget-object v1, p0, Lyg0;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object p0, p0, Lyg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$SignUpClickEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$SignUpClickEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToRegisterPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$LogInClickEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$LogInClickEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToLoginPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
