.class public final synthetic Lxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p4, p0, Lxx;->b:I

    iput-boolean p1, p0, Lxx;->c:Z

    iput-object p2, p0, Lxx;->d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p3, p0, Lxx;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lxx;->b:I

    iget-object v1, p0, Lxx;->e:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lxx;->d:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iget-boolean p0, p0, Lxx;->c:Z

    check-cast p1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->d(Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;I)V

    :cond_0
    iget-object p0, p1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->d(Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;I)V

    :cond_1
    iget-object p0, p1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
