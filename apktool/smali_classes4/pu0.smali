.class public final synthetic Lpu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lpu0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpu0;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iput-object p2, p0, Lpu0;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V
    .locals 0

    .line 11
    iput p3, p0, Lpu0;->b:I

    iput-object p1, p0, Lpu0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lpu0;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lpu0;->b:I

    iget-object v1, p0, Lpu0;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iget-object p0, p0, Lpu0;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnAutocomplete;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTrending;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnTextualHistory;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->PDP:Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->N9(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
