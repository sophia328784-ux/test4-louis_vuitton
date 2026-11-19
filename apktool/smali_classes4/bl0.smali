.class public final synthetic Lbl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;I)V
    .locals 0

    iput p2, p0, Lbl0;->b:I

    iput-object p1, p0, Lbl0;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbl0;->b:I

    iget-object p0, p0, Lbl0;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    invoke-direct {v0, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    invoke-direct {v1, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->ka(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    invoke-direct {v0, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    invoke-direct {v1, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->u5(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ChangeLayoutClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
