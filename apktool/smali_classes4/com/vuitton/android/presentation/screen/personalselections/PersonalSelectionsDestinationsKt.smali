.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->m:Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0, v1}, Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    new-instance v4, Ljava/util/ArrayList;

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;->a:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v3, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->CONTENT_CURATION:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->CONTENT_CURATION:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToWelcomePage;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->CONTENT_CURATION:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->PERSONAL_SELECTIONS:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method
