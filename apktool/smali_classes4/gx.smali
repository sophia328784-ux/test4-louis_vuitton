.class public final synthetic Lgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V
    .locals 0

    iput p2, p0, Lgx;->b:I

    iput-object p1, p0, Lgx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgx;->b:I

    iget-object p0, p0, Lgx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$Swiped;->a:Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$Swiped;

    invoke-static {v0}, Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnSwipeOnOngoingOrdersEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenMyLVEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
