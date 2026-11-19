.class public final synthetic Lwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lwx;->b:I

    iput-boolean p1, p0, Lwx;->c:Z

    iput-object p2, p0, Lwx;->d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p3, p0, Lwx;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lwx;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lwx;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$HeaderClicked;->a:Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel$HeaderClicked;

    iget-object v2, p0, Lwx;->f:Ljava/lang/String;

    iget-object v3, p0, Lwx;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lwx;->d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iget-boolean p0, p0, Lwx;->c:Z

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    iget-object p0, v4, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    if-eqz p0, :cond_1

    iget-object p0, v4, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/MostPurchasedWithTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
