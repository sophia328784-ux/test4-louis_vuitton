.class public final synthetic Lqu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V
    .locals 0

    iput p2, p0, Lqu0;->b:I

    iput-object p1, p0, Lqu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqu0;->b:I

    iget-object p0, p0, Lqu0;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->P3(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeSuggestionCarousel;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeSuggestionCarousel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeResultCarousel;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnSwipeResultCarousel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
