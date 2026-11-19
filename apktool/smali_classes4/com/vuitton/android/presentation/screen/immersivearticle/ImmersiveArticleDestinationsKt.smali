.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;->e:Ljava/lang/String;

    const/16 v8, 0x40

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v2, p1

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;->a:Landroid/net/Uri;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToPrivacyPolicyPage;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->LANDSCAPE:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    if-ne p0, v4, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method public static final b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;-><init>(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;-><init>(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x12

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;-><init>(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;-><init>(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->SPOTLIGHT_COLLECTION:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v10, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;

    invoke-direct {v10, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    move-object v10, v9

    :goto_0
    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    return-object v10

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v7, p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;-><init>(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V

    return-object v7

    :cond_7
    return-object v9
.end method

.method public static synthetic c(Landroid/net/Uri;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;
    .locals 8

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->b(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object p0

    return-object p0
.end method
