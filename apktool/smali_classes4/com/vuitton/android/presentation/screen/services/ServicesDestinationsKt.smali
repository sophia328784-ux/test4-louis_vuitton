.class public abstract Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->e:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->f:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;->h:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->SERVICE:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->OSA:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    const/4 p1, 0x6

    invoke-static {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWebViewPage;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWebViewPage;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWebViewPage;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7f8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;->a:Ljava/lang/String;

    const/16 p1, 0x7d

    invoke-static {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->c(Landroid/net/Uri;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0

    :cond_6
    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToPersonalSelectionsPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_7
    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->r:Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method
