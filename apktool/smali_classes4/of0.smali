.class public final synthetic Lof0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lof0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lof0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lof0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lof0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;Landroidx/navigation/NavHostController;)V
    .locals 1

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lof0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lof0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lof0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lof0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Lof0;->b:I

    iput-object p1, p0, Lof0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lof0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lof0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lof0;->b:I

    const-string v2, ""

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, v0, Lof0;->e:Ljava/lang/Object;

    iget-object v8, v0, Lof0;->d:Ljava/lang/Object;

    iget-object v0, v0, Lof0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSeeYourCartEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSeeYourCartEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnClickOnFindInStoreEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnClickOnFindInStoreEvent;

    invoke-static {v4, v2, v3, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$FindInStore;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$FindInStore;

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    if-eqz v0, :cond_0

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClickEvent;

    invoke-static {v5, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;)V

    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->c()V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v7, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;

    iget-object v2, v7, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v7, Landroidx/compose/runtime/MutableState;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    check-cast v8, Landroid/content/Context;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v1, :cond_1

    const v2, 0x7f1403da

    invoke-static {v8, v2}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1403d9

    invoke-static {v8, v3}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f1403d8

    invoke-static {v8, v4}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->G9(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v6, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetEditEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditPerfumeEngravingBottomSheetEditEvent;

    invoke-static {v5, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :cond_3
    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetEditEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditHotstampingBottomSheetEditEvent;

    invoke-static {v5, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$EditCustomization;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-interface {v7, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTracker;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_4
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Landroid/content/Context;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations$ToStoreLocatorPage;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v5, v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->zc(Ljava/lang/String;Z)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;->i:Ljava/lang/String;

    invoke-interface {v8, v2, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    move-object v15, v8

    check-cast v15, Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

    move-object/from16 v17, v7

    check-cast v17, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v12

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;->c:Landroidx/lifecycle/SavedStateHandle;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    :try_start_0
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;

    sget-object v8, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v8, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$SkuList;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v6, "nav_arg_plp_list_sku"

    invoke-virtual {v1, v6}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    move-object v1, v2

    :goto_3
    const-string v2, ", "

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v10

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v11

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;

    new-instance v1, Ltb0;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Ltb0;-><init>(Ljava/lang/Object;I)V

    const/4 v14, 0x1

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;-><init>(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V

    return-object v9

    :pswitch_a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget v1, v7, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v7, Landroidx/navigation3/runtime/NavBackStack;

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->e4()V

    invoke-static {v7}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaPreBookErrorBottomSheet;

    if-eqz v0, :cond_8

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaModificationAbortBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen$OsaModificationAbortBottomSheet;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->t()V

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->t()V

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Ljava/time/LocalDate;

    if-eqz v0, :cond_a

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v7, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-interface {v0, v8, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->j:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;

    iget-boolean v2, v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->l:Z

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;-><init>(Z)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->s:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz v0, :cond_c

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v7, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;

    if-eqz v1, :cond_d

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_d
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;

    if-eqz v0, :cond_e

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->W8()V

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->sc()V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v7, Landroidx/activity/compose/ManagedActivityResultLauncher;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->m:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->q:Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;

    if-eqz v2, :cond_f

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;->b:Ljava/lang/String;

    :cond_f
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;->n:Z

    invoke-direct {v1, v5, v2}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    goto :goto_8

    :cond_10
    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Landroidx/compose/runtime/MutableIntState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->d:Z

    if-eqz v2, :cond_11

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    const/4 v4, -0x1

    :goto_a
    invoke-interface {v7, v4}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    check-cast v8, Lkotlin/jvm/functions/Function4;

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->d:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v7, :cond_13

    iget-object v5, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->e:Ljava/lang/String;

    :cond_13
    invoke-interface {v8, v2, v1, v0, v5}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    check-cast v8, Landroid/content/Context;

    check-cast v7, Landroidx/compose/runtime/State;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnEmailUsEvent;->a:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnEmailUsEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;->H2(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel;)V

    invoke-static {v8}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;->b:Ljava/lang/String;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    check-cast v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    check-cast v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    if-eqz v0, :cond_16

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v0

    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    sub-int/2addr v0, v1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->a(I)V

    :cond_16
    iget v0, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t:I

    invoke-static {v8, v5, v0, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    if-eqz v1, :cond_17

    iget-object v5, v1, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->c:Ljava/lang/Integer;

    :cond_17
    invoke-interface {v7, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    if-eqz v5, :cond_19

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    iget v3, v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->a:I

    iget-object v2, v2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;->b:Landroidx/compose/runtime/tooling/SourceInformation;

    new-instance v4, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    invoke-direct {v4, v3, v2, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_19
    :goto_b
    new-instance v2, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    return-object v2

    :pswitch_19
    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    check-cast v0, Landroidx/navigation/NavHostController;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->O4()V

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    invoke-static {v0, v1, v5, v3}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Ljava/util/ArrayList;

    check-cast v8, Landroidx/navigation3/scene/Scene;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Landroidx/navigation3/scene/Scene;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_c
    if-ge v4, v0, :cond_1a

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_1b
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->k:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->REGISTRATION_ADDRESS:Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Landroidx/navigation/NavHostController;

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1, v2, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v1, v2, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->Z8()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, v5, v3}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
