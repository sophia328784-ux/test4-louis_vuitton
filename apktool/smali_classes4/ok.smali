.class public final synthetic Lok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lok;->b:I

    iput-object p1, p0, Lok;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    iput-object p2, p0, Lok;->d:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lok;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, Lok;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lok;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->b7()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$StoreModeHome;

    invoke-static {v3, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v3}, Landroidx/navigation/NavController;->e()Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreClickedEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;

    invoke-static {v3, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v3}, Landroidx/navigation/NavController;->e()Z

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v3}, Landroidx/navigation/NavController;->e()Z

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v3}, Landroidx/navigation/NavController;->e()Z

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->F()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v3}, Landroidx/navigation/NavController;->e()Z

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->b1()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;->INSTANCE:Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level1;

    invoke-static {v3, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
