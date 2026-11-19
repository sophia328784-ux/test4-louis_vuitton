.class public final synthetic Ldh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;I)V
    .locals 0

    iput p2, p0, Ldh0;->b:I

    iput-object p1, p0, Ldh0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldh0;->b:I

    iget-object p0, p0, Ldh0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsScreen;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$AuthenticationScreen;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$AuthenticationScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationScreen;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GeolocationScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartScreen;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationScreen;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
