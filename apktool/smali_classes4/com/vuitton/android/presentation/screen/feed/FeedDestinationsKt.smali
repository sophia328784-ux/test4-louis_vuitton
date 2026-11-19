.class public abstract Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLVPassPage;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOsaPage;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LIST:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->APPOINTMENT_LIST:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAICompanionPage;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToOrderDetailPage;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "detail"

    invoke-static {p1, v0, v1, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->LANDSCAPE:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    if-ne p0, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2, v1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPrivacyPolicyPage;

    if-eqz v0, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->c(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPdpPage;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_a
    move-object v1, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    sget-object p1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->r:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;

    if-eqz p1, :cond_d

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;->a:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;->b:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPlpPage;->c:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3, v0, v2, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;

    if-eqz p1, :cond_e

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairDetailPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "REPAIR_DETAIL"

    invoke-static {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;

    if-eqz p1, :cond_f

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairPreliminaryAssessmentConfirmationPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PRELIMINARY_ASSESSMENT_CONFIRMATION"

    invoke-static {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;

    if-eqz p1, :cond_10

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAddressConfirmationPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "ADDRESS_CONFIRMATION"

    invoke-static {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;

    if-eqz p1, :cond_11

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRepairAwaitingPaymentPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PAYMENT_CONFIRMATION"

    invoke-static {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method
