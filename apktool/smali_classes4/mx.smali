.class public final synthetic Lmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V
    .locals 0

    iput p2, p0, Lmx;->b:I

    iput-object p1, p0, Lmx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmx;->b:I

    iget-object p0, p0, Lmx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->FOR_YOU:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;I)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->DISCOVER:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$ScrollPercentageReachedEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;I)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
