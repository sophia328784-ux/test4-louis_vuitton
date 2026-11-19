.class public abstract Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;->p:Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacyPolicyPage;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;->q:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0

    :cond_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4, v3}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v2, p0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToConsumerRightsPage;

    if-eqz v2, :cond_4

    new-instance v1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToConsumerRightsPage;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToConsumerRightsPage;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    :cond_4
    instance-of v2, p0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;

    if-eqz v2, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    move-object v2, p0

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7fc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
