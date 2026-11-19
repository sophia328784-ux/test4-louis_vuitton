.class public final synthetic Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V
    .locals 0

    iput p3, p0, Lix;->b:I

    iput-object p1, p0, Lix;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p2, p0, Lix;->d:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lix;->b:I

    iget-object v1, p0, Lix;->d:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    iget-object p0, p0, Lix;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRegisterEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitLoginEvent;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
