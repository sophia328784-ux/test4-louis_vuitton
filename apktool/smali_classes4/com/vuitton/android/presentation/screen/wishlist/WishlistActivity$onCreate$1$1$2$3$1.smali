.class final synthetic Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToProductDetailsPage;

    invoke-direct {v0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToProductDetailsPage;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
