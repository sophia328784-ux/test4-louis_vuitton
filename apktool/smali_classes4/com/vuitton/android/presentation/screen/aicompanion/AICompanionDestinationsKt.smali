.class public abstract Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v2, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
