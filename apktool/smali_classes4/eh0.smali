.class public final synthetic Leh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p4, p0, Leh0;->b:I

    iput-object p1, p0, Leh0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    iput-object p2, p0, Leh0;->d:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Leh0;->e:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Leh0;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, Leh0;->e:Landroidx/compose/runtime/State;

    iget-object v4, p0, Leh0;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Leh0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GuestClickEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$GuestClickEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->c(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    move-result-object p0

    invoke-static {v4, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartClickEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$StartClickEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->c(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    move-result-object p0

    invoke-static {v4, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
