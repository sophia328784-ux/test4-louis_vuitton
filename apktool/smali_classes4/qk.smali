.class public final synthetic Lqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;I)V
    .locals 0

    iput p2, p0, Lqk;->b:I

    iput-object p1, p0, Lqk;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqk;->b:I

    iget-object p0, p0, Lqk;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseScreen;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->C6()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreScreen;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
