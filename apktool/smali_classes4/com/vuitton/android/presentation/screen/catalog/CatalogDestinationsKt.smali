.class public abstract Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;->b:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;->c:Z

    const/16 v8, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
