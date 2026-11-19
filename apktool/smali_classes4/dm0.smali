.class public final synthetic Ldm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Ldm0;->b:I

    iput-object p1, p0, Ldm0;->c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iput-object p2, p0, Ldm0;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ldm0;->b:I

    iget-object v1, p0, Ldm0;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Ldm0;->c:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBannerArModelClickEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnBannerArModelClickEvent;

    invoke-static {v4, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToWishlistEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToWishlistEvent;

    invoke-static {v4, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareButtonEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareButtonEvent;

    invoke-static {v4, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetConfirmEvent;

    invoke-static {v4, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$NotifyMeBottomSheetEvent;

    invoke-static {v4, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
