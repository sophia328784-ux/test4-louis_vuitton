.class public final synthetic Lcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;Ljava/util/Map;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcy;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcy;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcy;->g:Ljava/lang/Object;

    iput p5, p0, Lcy;->d:I

    iput-object p6, p0, Lcy;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcy;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcy;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcy;->g:Ljava/lang/Object;

    iput p4, p0, Lcy;->d:I

    iput-object p5, p0, Lcy;->c:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcy;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcy;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcy;->b:I

    iget-object v1, p0, Lcy;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcy;->h:Ljava/lang/Object;

    iget v3, p0, Lcy;->d:I

    iget-object v4, p0, Lcy;->g:Ljava/lang/Object;

    iget-object v5, p0, Lcy;->f:Ljava/lang/Object;

    iget-object v6, p0, Lcy;->c:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lcy;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    check-cast v4, Ljava/util/Map;

    check-cast v2, Landroidx/compose/foundation/ScrollState;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v5, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v5, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    invoke-static {p0, v3, v2, v1}, Lcom/vuitton/android/designkit/ui/common/ItemUtilsKt;->a(Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v0, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->g:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v8, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;

    invoke-direct {v8, v5, v0, v7, v3}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$CardClickEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;I)V

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    instance-of p0, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz p0, :cond_0

    check-cast v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object p0, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-eq v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p0, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-interface {v6, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz p0, :cond_2

    instance-of v3, p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$PushNotification;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
