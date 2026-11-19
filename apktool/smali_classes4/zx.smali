.class public final synthetic Lzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final synthetic e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 17
    iput p6, p0, Lzx;->b:I

    iput-object p1, p0, Lzx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p2, p0, Lzx;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p3, p0, Lzx;->e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iput p4, p0, Lzx;->f:I

    iput-object p5, p0, Lzx;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lzx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx;->g:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lzx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p3, p0, Lzx;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p4, p0, Lzx;->e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iput p5, p0, Lzx;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lzx;->b:I

    iget-object v1, p0, Lzx;->g:Lkotlin/jvm/functions/Function1;

    iget v2, p0, Lzx;->f:I

    iget-object v3, p0, Lzx;->e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iget-object v4, p0, Lzx;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object p0, p0, Lzx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    const-string v3, "CarouselLargeSingle"

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;->a:Ljava/lang/String;

    const-string v3, "CarouselLargeMultiple"

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    iget-object p1, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;

    invoke-direct {v0, v4, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitSlideShowItemEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
