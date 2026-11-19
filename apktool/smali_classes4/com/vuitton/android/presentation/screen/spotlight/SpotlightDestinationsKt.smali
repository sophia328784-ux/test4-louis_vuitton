.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "COLLECTION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;->b:Z

    const/4 v8, 0x0

    const/16 v9, 0x78

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
