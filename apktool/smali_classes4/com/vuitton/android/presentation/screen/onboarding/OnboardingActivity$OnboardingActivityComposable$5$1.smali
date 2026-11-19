.class final synthetic Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$5$1;
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
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsContinueClickEvent;->a:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$NotificationsContinueClickEvent;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;->a:Lcom/vuitton/android/domain/repository/PermissionsRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/PermissionsRepository;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
