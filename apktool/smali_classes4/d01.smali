.class public final synthetic Ld01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V
    .locals 0

    iput p2, p0, Ld01;->b:I

    iput-object p1, p0, Ld01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ld01;->b:I

    iget-object p0, p0, Ld01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->r:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->o:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v4, :cond_0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :cond_0
    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->r:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->o:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v4, :cond_1

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->I(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;)Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->H(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;)Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
