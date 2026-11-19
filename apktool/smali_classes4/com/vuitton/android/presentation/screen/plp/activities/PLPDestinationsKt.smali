.class public abstract Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;->b:Ljava/lang/String;

    const/16 v5, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    const/4 v4, 0x0

    const/16 v5, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;->c:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    const/4 v4, 0x0

    const/16 v5, 0x24

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;

    if-eqz p1, :cond_3

    move-object v1, v0

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
