.class public interface abstract Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;,
        Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;,
        Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;,
        Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;,
        Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\u0008\t\n\u000b\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;",
        "",
        "PageFromPlp",
        "PageFromExclusive",
        "PageFromStoreMode",
        "ToWishlistPage",
        "ToAICompanionPage",
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;",
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;",
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromStoreMode;",
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;",
        "Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 10

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_2

    :cond_1
    move-object v5, p2

    :goto_2
    and-int/lit8 p2, p5, 0x10

    if-eqz p2, :cond_2

    move-object v6, v1

    goto :goto_3

    :cond_2
    move-object v6, p3

    :goto_3
    and-int/lit8 p2, p5, 0x20

    if-eqz p2, :cond_3

    move-object v7, v1

    goto :goto_4

    :cond_3
    move-object v7, p4

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
